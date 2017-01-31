
# B Desktop Tools and Development Environment


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [B Desktop Tools and Development Environment](#b-desktop-tools-and-development-environment)
  * [B.1 Command Window and History](#b1-command-window-and-history)
  * [B.2 Help for Using MATLAB](#b2-help-for-using-matlab)
  * [B.3 Workspace](#b3-workspace)
  * [B.4 Managing Files](#b4-managing-files)
    * [B.4.1 Search Path](#b41-search-path)
    * [B.4.2 File Operations](#b42-file-operations)
  * [B.5 Programming Tools](#b5-programming-tools)

<!-- tocstop -->


## B.1 Command Window and History

* **clc** clears the Command Window display, giving you an empty screen. [p. 6]  
* **diary** logs Command Window output to a file. diary on starts the log; diary off stops it. Flush the diary by turning it off and then on again. diary(s) uses the filename given by the string s. Default filename is diary. [p. 5]  
* **format** changes how numeric values are displayed in the Command Window. Try format long and format short. Has no effect on fprintf. [p. 6]
* **system** executes a command in your operating system shell. Try system(’ls’) in UNIX. See also p. 191 for the ! character. [p. 103]

## B.2 Help for Using MATLAB

* **help** prints the help text for a function in the Command Window. Try help disp, or help function for any other function. [p. 42]  
* **web** opens a web browser. Try web www.mathworks.com. Also useful for viewing HTML files created via cell publishing. [p. 164]  


## B.3 Workspace

* **clear** deletes variables from workspace. clear, by itself, clears all variables. clear x y clears just x and y. clear classes clears object class definitions. [p. 10]  
* **delete** deletes a file or graphics object. [p. 8]  
* **exist** determines if a variable, file, folder, or class exists. exist(’x’) returns a value from 0 to 8, depending on what x is. A second parameter (’file’ , ’var’ , ’class’ , ’builtin’ , or ’dir’ ) only looks for items of that type, and returns 1 if it exists, 0 otherwise. [p. 105]  
* **which** determines which function or file a word refers to, or whether there is a variable with that name. Try i=3; which i -all. [p. 71]  
* **whos** lists variables in the workspace. whos prints a list. s=whos returns a struct with information about each variable. [p. 9]  


## B.4 Managing Files

### B.4.1 Search Path

* **addpath** adds folders to the search path. Try addpath(pwd) .  
* **path** displays or changes the search path. [p. 43]  
* **which** determines what function or file a name refers to. See p. 166.  


### B.4.2 File Operations

* **cd** changes the current folder (short for change directory). [p. 8]  
* **copyfile** makes a copy of a file.   
* **delete** deletes a file. [p. 8]  
* **dir** lists the files and folders in a folder. **dir** by itself lists the current folder. dir(’F’) or dir F lists the folder F. [p. 8]  
* **isdir** tests whether a string refers to a folder.  
* **ls** lists the contents of the current folder.  
* **matlabroot** lists the folder where MATLAB is installed.  
* **mkdir** creates a folder.  
* **pwd** returns the current folder as a string. [p. 8]  
* **type** displays the contents of a file. Try type factorial. [p. 8]  


## B.5 Programming Tools

* **computer** returns information about your computer.  
* **system** executes an operating system command. See p. 166.  
* **ispc** tests if your computer is running Microsoft Windows.  
* **ver** displays the version of MATLAB and all Toolboxes.  
* **version** returns the MATLAB version number as a string.  


```python

```
