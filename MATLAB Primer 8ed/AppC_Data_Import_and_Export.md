
# C Data Import and Export


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [C Data Import and Export](#c-data-import-and-export)
  * [C.1 File Name Construction](#c1-file-name-construction)
  * [C.2 File Opening, Loading, and Saving](#c2-file-opening-loading-and-saving)
  * [C.3 Low-Level File I/O](#c3-low-level-file-io)
  * [C.4 Text Files](#c4-text-files)
  * [C.5 Audio and Video](#c5-audio-and-video)
  * [C.6 Images](#c6-images)

<!-- tocstop -->


## C.1 File Name Construction

* **fileparts** extracts the components of a filename and its path.  
* **filesep** returns the file separator (’\’ on Microsoft Windows, ’/’ on Linux or Mac).  
* **fullfile** constructs the full filename (with its entire path) from a list offolders and a base filename.  


## C.2 File Opening, Loading, and Saving

* **load** loads variables from a MAT-file. [p. 10]  
* **open** opens a file in the Editor, Workspace, or Figure Window.  
* **save** saves variables to a MAT-file. [p. 10]  
* **uigetdir** displays a dialog box for selecting a directory.  
* **uigetfile** displays a dialog box for accessing files.  
* **uiputfile** displays a dialog box for saving files.  

## C.3 Low-Level File I/O

* **fclose** closes a file opened by fopen. [p. 162]  
* **feof** tests if the end-of-file has been reached.  
* **fgetl** reads a line from a text file, discarding newline characters.  
* **fgets** reads a line from a text file, keeping newline characters.  
* **fopen** opens a file. f=fopen(’foo’,’w’) opens the file ’foo’ for writing, creating it if necessary. f=fopen(’foo’,’r’) opens the file ’foo’ for reading. [p. 162]  
* **fprintf** displays numbers and strings (or prints them to a file) with tight control over how they are displayed. Try fprintf(’%10.1e\n’,eps) . [p. 160]  
* **fread** reads data from a binary file. With the file from the fwrite example below, try f=fopen(’a.bin’,’r’); C=fread(f,’double’); , and compare with A(:) .  
* **fscanf** reads formatted data from a text file, with a format string similar to the one used by fprintf.  
* **fseek** moves to a specified position in a file, where the next fread or fwrite will take place.  
* **ftell** returns the current position in a file, as the number of bytes from the beginning of the file.  
* **fwrite** writes binary data from a file. Try A=rand(4); f=fopen(’a.bin’,’w’); fwrite(f,A,’double’); fclose(f) . Then try the fread example above.  


## C.4 Text Files

* **textscan** reads formatted data from a text file or string.  
* **type** displays the contents of a file. Try type factorial. [p. 8]  

## C.5 Audio and Video

* **wavread** reads an audio signal from a .wav file.  
* **sound** plays audio from a signal. Try load handel; sound(y,Fs) .  

## C.6 Images

* **imread** reads an image from a graphics file. Supported formats include TIFF, JPEG, GIF, PNG, BMP, ICO, and may others. Image processing typically uses uint8, uint16, and other compact integer data types. Use image to display an image.
* **imwrite** writes an image to a graphics file.



```python

```
