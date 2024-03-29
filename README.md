<p align="center"><img src="https://socialify.git.ci/aayushker/CodeRunEz/image?font=KoHo&amp;language=1&amp;name=1&amp;pattern=Circuit%20Board&amp;theme=Auto" alt="project-image"></p>

<p id="description">CodeRunEz is a Bash script designed to streamline directory navigation within the Documents folder. It identifies Next.js or React projects and launches their development servers, while it initiates the Live Server for rapid development for vanilla HTML-CSS-JS files.</p>

  
  
<h2>🧐 Features</h2>

Here're some of the project's best features:

*   Fast
*   Customizability
*   Search Functionality
*   Custom Command for Opening Directories
*   Support for Next.js and React Projects
*   Support for HTML/CSS/JS Projects


<h2>🛠️ Installation Steps:</h2>

<p>1. Navigate to bin directory</p>

```
cd /bin 
```

<p>2. Create a new script file named start (or any other name you prefer)</p>

```
touch start
```

<p>3. Add the contents of the script file to the file created</p>

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

  
  
<h2>💻 Built with</h2>

Technologies used in the project:

*   Bash

<h2>🛡️ License:</h2>

This project is licensed under the MIT License
