
# I 3-D Visualization

<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [I 3-D Visualization](#i-3-d-visualization)
  * [I.1 Surface and Mesh Plots](#i1-surface-and-mesh-plots)
  * [I.1.1 Surface and Mesh Creation](#i11-surface-and-mesh-creation)
  * [I.1.2 Domain Generation](#i12-domain-generation)
  * [I.1.3 Color Operations](#i13-color-operations)
  * [I.2 View Control](#i2-view-control)
  * [I.2.1 Camera Viewpoint](#i21-camera-viewpoint)
  * [I.2.2 Aspect Ratio and Axis Limits](#i22-aspect-ratio-and-axis-limits)
  * [I.2.3 Object Manipulation](#i23-object-manipulation)
  * [I.3 Lighting](#i3-lighting)
  * [I.4 Volume Visualization](#i4-volume-visualization)

<!-- tocstop -->


## I.1 Surface and Mesh Plots

## I.1.1 Surface and Mesh Creation

* **hidden** removes or reveals hidden lines in a mesh plot.  
* **mesh** draws a 3-D mesh plot. Try mesh(peaks) . [p. 114]  
* **peaks** is an example function for surface plots. peaks returns a matrix offunction evaluations f(x,y) over a uniformly distributed set of x-y points, for a certain function f. [p. 117]  
* **surf** creates a 3-D surface plot. See the cover of this book for an example. Try surf(mesh) . [p. 114]  
* **surface** is a low-level function for creating a surface object.  

## I.1.2 Domain Generation

* **meshgrid** creates X, Y, and Z arrays for 3-D plots. [p. 114]

## I.1.3 Color Operations

* **colorbar** adds a color legend to a plot. [p. 117]  
* **colormap** sets or returns the colormap for an image. [p. 117]  
* **shading** sets color shading properties for 3-D plot. [p. 116]  

## I.2 View Control

## I.2.1 Camera Viewpoint

* **view** specifies the viewpoint for a 3-D plot. [p. 117]


## I.2.2 Aspect Ratio and Axis Limits

* **xlim** sets or queries the x-axis limits.  
* **ylim** sets or queries the y-axis limits.  
* **zlim** sets or queries the z-axis limits.  

## I.2.3 Object Manipulation

* **reset** resets the properties of a graphics object to their defaults.  
* **rotate3d** rotates the 3-D view using the mouse. [p. 117]  
* **zoom** zooms into or out of a plot. [p. 107]  

## I.3 Lighting

* **light** creates a light at a specified location. [p. 117]
* **lighting** specifies the lighting algorithm (flat, gouraud, phong, or none). [p. 117]

## I.4 Volume Visualization

* **slice** draws a volumetric slice plot, which plots slices of data from a 3-D volume. [p. 116]


```python

```
