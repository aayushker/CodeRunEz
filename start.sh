#!/bin/bash
index = "$HOME/.documents_index"

# Function to create an index of directories in the Documents folder
create_index() {
    find "$HOME/Documents" -type d > "$index"
}

# Function to search for directory in the index using grep
search_index() {
    local target="$1"
    grep -m 1 "$target$" "$index"
}

# Function to check if the directory contains Next.js files using jq
contains_nextjs() {
    local directory="$1"
    if [ -f "$directory/package.json" ]; then
        local dependencies=$(jq -r '.dependencies | keys | .[]' "$directory/package.json")
        if [[ "$dependencies" =~ "next" ]]; then
            return 0
        fi
    fi
    return 1
}

# Function to check if the directory contains React files using jq
contains_react() {
    local directory="$1"
    if [ -f "$directory/package.json" ]; then
        local dependencies=$(jq -r '.dependencies | keys | .[]' "$directory/package.json")
        if [[ "$dependencies" =~ "react" ]]; then
            return 0
        fi
    fi
    if ls "$directory"/*.{html,js} "$directory"/src/*.js 1> /dev/null 2>&1; then
        return 0
    fi
    return 1
}

# Function to check if the directory contains HTML/CSS/JS files using ls
contains_html_css_js() {
    local directory="$1"
    if ls "$directory"/*.html "$directory"/*.css "$directory"/*.js 1> /dev/null 2>&1; then
        return 0
    fi
    return 1
}

# Check if the index file exists, if not create it 
if [ ! -f "$index" ]; then
    create_index
fi

# Check if the index file is empty or outdated, if so recreate it
if [ ! -s "$index" ] || [ "$index" -ot "$HOME/Documents" ]; then
    create_index
fi

# Check if the argument is provided
if [ -z "$1" ]; then
    echo "Usage: start <directory_name>"
    exit 1
fi

# Search for the directory in the index
result=$(search_index "$1")

# Check if the directory was found
if [ -z "$result" ]; then
    echo "Directory not found!"
    exit 1
fi

# Check if the directory contains Next.js files
if contains_nextjs "$result"; then
    echo "Next.js project found! Starting Development Server..."
    code --new-window "$result"
    cd "$result" && npm run dev
    exit $?
fi

# Check if the directory contains React files
if contains_react "$result"; then
    echo "React project found! Starting Development Server..."
    code --new-window "$result"
    cd "$result" && npm start
    exit $?
fi

# Check if the directory contains HTML/CSS/JS files
if contains_html_css_js "$result"; then
    echo "HTML/CSS/JS project found! Starting Live Server..."
    code --new-window "$result"
    live-server "$result"
    exit $?
fi

# If neither Next.js, React, nor HTML/CSS/JS project found, open the directory in VS Code
echo "Directory found! Opening in VS Code..."
code --new-window "$result"
