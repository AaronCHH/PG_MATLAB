
# J GUI Development

<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [J GUI Development](#j-gui-development)
  * [J.1 Predefined Dialog Boxes](#j1-predefined-dialog-boxes)
  * [J.2 User Interface Deployment](#j2-user-interface-deployment)
  * [J.3 User Interface Development](#j3-user-interface-development)
  * [J.4 User Interface Objects](#j4-user-interface-objects)
  * [J.5 Objects from Callbacks](#j5-objects-from-callbacks)
  * [J.6 Program Execution](#j6-program-execution)

<!-- tocstop -->


## J.1 Predefined Dialog Boxes

* **errordlg** displays an error dialog. Try errordlg('ack!') .  
* **inputdlg** displays an input dialog. Try inputdlg('x:') .  
* **msgbox** displays a message box. Try msgbox('done') .  
* **questdlg** displays a question box. Try questdlg('go?') .  
* **uigetdir** displays a dialog box for selecting a directory.  
* **uigetfile** displays a dialog box for accessing files.  
* **uiputfile** displays a dialog box for saving files.  
* **waitbar** displays a wait bar. Try h=waitbar(0,'working'); and then for x=0:.1:1, waitbar(x,h), pause(1), end.  
* **warndlg** displays a warning dialog.  

## J.2 User Interface Deployment

* **guidata** stores or retrieves GUI data.  
* **guihandles** returns all handles in a figure.  
* **movegui** moves a GUI figure to a specified screen location.  
* **openfig** opens a figure from a .fig file.  

## J.3 User Interface Development

* **getappdata** gets the value of application-defined GUI data.  
* **getpref** gets the current setting of a preference.  
* **ginput** gets graphical input from the mouse or cursor.  
* **guidata** stores or retrieves GUI data.  
* **isappdata** tests if application-defined data exists.  
* **rmappdata** removes application-defined data from an object.  
* **setappdata** sets the value of application-defined GUI data.  
* **waitfor** pauses until a specified condition occurs.  
* **waitforbuttonpress** pauses for the user input.  

## J.4 User Interface Objects

* **menu** creates a GUI menu.  
* **uicontextmenu** creates a (right-click) context menu.  
* **uicontrol** creates a user interface object. [p. 118]  
* **uimenu** creates a user-interface menu.  
* **uipanel** creates a panel for grouping components.  

## J.5 Objects from Callbacks

* **findall** finds all graphics objects.  
* **findobj** finds a graphics object with specific properties.  
* **gcbf** returns the figure handle of a callback function. [p. 118]  
* **gcbo** returns the object handle of a callback function.  

## J.6 Program Execution

* **uiresume** resumes execution after uiwait. Typically used in a callback function. [p. 118]  
* **uiwait** pauses execution until uiresume is called. [p. 118]  


```python

```
