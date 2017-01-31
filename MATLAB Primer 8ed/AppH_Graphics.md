
# H Graphics

<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [H Graphics](#h-graphics)
  * [H.1 Basic Plots and Graphs](#h1-basic-plots-and-graphs)
  * [H.2 Plotting Tools](#h2-plotting-tools)
  * [H.3 Annotating Plots](#h3-annotating-plots)
  * [H.4 Specialized Plotting](#h4-specialized-plotting)
  * [H.5 Bit-Mapped Images](#h5-bit-mapped-images)
  * [H.6 Printing](#h6-printing)
  * [H.7 Handle Graphics](#h7-handle-graphics)
    * [H.7.1 Graphics Object Identification](#h71-graphics-object-identification)
    * [H.7.2 Object Creation](#h72-object-creation)
    * [H.7.3 Figure Windows](#h73-figure-windows)
    * [H.7.4 Axes Operations](#h74-axes-operations)

<!-- tocstop -->

## H.1 Basic Plots and Graphs

* **box** displays or hides the boundary of a plot.  
* **hold** controls how new data is plotted. With hold on, a plot command overlays the new plot onto the old one. With hold off (the default), a new plot erases the old. [p. 111]  
* **line** creates a line object (a low-level version of plot).  
* **loglog** draws a logarithmic 2-D line plot, with logarithmic x-y axes. Otherwise identical to plot.  
* **plot** draws a 2-D line plot. plot(Y) plots the columns of a real matrix Y versus the row index. With multiple arguments, plot(x,y) plots the vector x versus y. plot(x1,y1,x2,y2,...) plots multiple lines on a single figure. Adding a string after each pair sets the line color and type. [p. 106]  
* **plot3** draws a 3-D line plot. [p. 113]  
* **semilogx** draws a semi-logarithmic 2-D line plot, with a logarithmic x-axis and a linear y-axis. Otherwise identical to plot.  
* **semilogy** draws a semi-logarithmic 2-D line plot, with a linear x-axis and a logarithmic y-axis. Otherwise identical to plot.  
* **subplot** creates a tiled array of plots in a single figure. subplot(2,3,1) creates a 2-by-3 tiling of 6 plots, and sets the first one (in the (1,1) position) as the current plot. [p. 112]  

## H.2 Plotting Tools

* **rotate3d** rotates the 3-D view using the mouse. [p. 117]  
* **zoom** zooms into or out of a plot. [p. 107]  


## H.3 Annotating Plots

* **legend** adds a legend to a plot. If three plot commands have been drawn on a figure, use legend('s1','s2','s3') , where each string describes each plot. Add ,'Location', 'SouthEast' as the last two arguments to place the legend in the bottom right corner (for example). [p. 111]  
* **rectangle** draws a rectangle.  
* **title** sets the title of a plot. [p. 109]  
* **xlabel** sets the label for the x-axis. [p. 109]  
* **ylabel** sets the label for the y-axis. [p. 109]  
* **zlabel** sets the label for the z-axis, for a 3-D plot. [p. 113]  

## H.4 Specialized Plotting

* **area** displays an area plot, which is just like a 2-D line plot except that the area below the curve is filled in with a color.  
* **bar** draws a bar graph. Try bar(sin(0:.1:pi)) .  
* **contour** draws a contour plot.  
* **stem** plots a discrete sequence of data.  
* **hist** draws a histogram plot. hist(y) uses 10 bins;  
* **hist(y,20)** uses 20. hist(y,x) uses bins centered at the points in x.  
* **histc** counts the elements in each bin of a histogram (without actually drawing the plot). The bins are defined differently than hist, however. histc(y,x) defines the bins by their edges, where y(i) is in the kth bin if x(k)<=y(i)<=x(k+1) .  
* **fill** draws colored polygons.  
* **slice** draws a volumetric slice plot. [p. 116]  
* **getframe** captures a movie frame.  

## H.5 Bit-Mapped Images

* **image** displays an image. [p. 119]  
* **imagesc** scales and displays an image, so that the full color range is used.  
* **imread** reads an image from a graphics file. See p. 169.  
* **imwrite** writes an image to a graphics file.  

## H.6 Printing

* **orient** defines hard-copy landscape/portrait orientation.  
* **print** prints a figure.  
* **saveas** saves a figure to a file.  

## H.7 Handle Graphics

### H.7.1 Graphics Object Identification

* **delete** deletes a graphics object.  
* **findall** finds all graphics objects.  
* **findobj** finds a graphics object with specific properties.  
* **gca** returns the current axis. [p. 118]  
* **gcbf** returns the figure handle of a callback function. [p. 118]  
* **gcbo** returns the object handle of a callback function.  
* **gco** returns the current graphics object.  
* **ishandle** tests if a variable is a Handle Graphics handle.  

* **get** gets the properties of a Handle Graphics object. Use get(H) to print all properties, and s=get(H) to return the result as a struct. With the example below (for set), try get(gca,'XTick') , which returns a vector of the tick marks on the x-axis. [p. 118]
* **set** sets the properties of a Handle Graphics object. Use set(H) for a list of properties to set. Try creating a figure (plot(rand(5)) , for example). Then use set(gcf) , set(gca) , and set(gco) to see the properties that can be modified by set. Try set(gca,'XTick',1:5) to change the tick marks on the x-axis, and set(gca,'XGrid','on') to turn on the grid lines on the x-axis. [p. 118]

### H.7.2 Object Creation

* **axes** creates a graphics object for the axes of a plot. figure creates a new figure, or sets the current figure to be a previous-created one. The current figure is where all commands such as plot, title, and xlabel, place their results. figure(3) makes Figure 3 the current figure, creating it if necessary. [p. 107]  
* **image** displays an image. [p. 119]  
* **light** creates a light at a specified location. [p. 117]  
* **line** creates a line object (a low-level version of plot).  
* **patch** creates one or more filled polygons.  
* **rectangle** draws a rectangle.  
* **surface** is a low-level function for creating a surface object.  
* **text** adds text to a plot.   
* **text(x,y,s)** adds the string s to the plot at position (x,y) . [p. 109]  
* **uicontextmenu** creates a context menu, for right-clicking an object.  

### H.7.3 Figure Windows

* **clf** clears a figure. clf clears the current figure. clf(2) clears Figure 2. [p. 111]
* **close** closes a figure. close closes the current figure.
* **close(2)** closes Figure 2. [p. 111]
* **closereq** is called by default when a figure is closed.
* **drawnow** executes all pending plotting operations. [p. 108]
* **gcf** returns the current figure. [p. 107]
* **saveas** saves a figure to a file.

### H.7.4 Axes Operations

* **axis** controls axis scaling for plots. axis auto is the default. axis([xmin xmax ymin ymax]) specifies the limits of the x and y axes. For a 3-D plot, use a vector of length 6. axis tight fits the axes to the data. [p. 110]  
* **box** displays or hides the boundary of a plot.  
* **cla** clears the current axes.  
* **gca** returns the current axis. [p. 118]  
* **grid** controls the grid lines of a plot. grid on turns on the grid;  
* **grid** off turns it off. [p. 109]   
* **ishold** tests if hold is on or off. See p. 202.  


```python

```
