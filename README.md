<p align="center"><img src="https://socialify.git.ci/aayushker/CodeRunEz/image?font=KoHo&amp;language=1&amp;name=1&amp;pattern=Circuit%20Board&amp;theme=Auto" alt="project-image"></p>

<p id="description">CodeRunEz is a Bash script designed to streamline directory navigation within the Documents folder. It identifies Next.js or React projects and launches their development servers, while it initiates the Live Server for rapid development for vanilla HTML-CSS-JS files.</p>
<p id="description">This implies the use of the grep command and jq which is a lightweight and flexible command-line JSON processor, that combines to classify the project. The searching process resembles <strong>linear search</strong> as we are using the grep command to search for the directory.</p>
  
<h2>🧐 Features</h2>
Here're some of the project's best features:

*   Fast
*   Customizability
*   Search Functionality
*   Custom Command for Opening Directories
*   Support for Next.js and React Projects
*   Support for HTML/CSS/JS Projects

<h2>📋 Requirements</h2>
These are some requirements that you should ensure before installation:

*   This script is written in Shell so it will run only on the system that has the Bash interpreter installed. I have tested it and made it on a Linux system (Fedora) but it may also run on MacOS and Unix-like systems, for Windows you can run Bash scripts using the Windows Subsystem for Linux (WSL) or using third-party tools like Git Bash or Cygwin.  
*   You have super user permissions
*   VS code installed  
*   Live server installed
<p>If not, install it using (npm required)</p>

```
npm install -g live-server
```

<h2>🛠️ Installation Steps:</h2>

<p>1. Navigate to bin directory</p>

```
cd /bin 
```

<p>2. Create a new script file named start (or any other name you prefer)</p>

```
sudo touch start
```

<p>3. Add the contents of the start.sh file to the file created</p>

```
sudo vim start
```

<p>4. Make the file executable</p>

```
chmod +x start
```

<p>5. Add ~/bin to PATH so that you can execute the script from anywhere in the terminal</p>

```
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
```
```
source ~/.bashrc
```

<p>6. Ready for use, replace the dir_name with the directory you want to Search and Run</p>

```
start dir_name
```


<h2>🚫 Limitations</h2>
Here're are some limitations which I will try to cover in the future:

*  Limited platform support
*  Limited Project Type Detection
*  Assumption that the project directories are stored in the documents folder
*  File naming issue, as there can be more than one file with the same name in different directories
*  Potential Security Risks as running a script from an unknown source is dangerous

<h2>💻 Built with</h2>
Technologies used in the project:

*   Shell

<h2>🛡️ License:</h2>
This project is licensed under the MIT License
