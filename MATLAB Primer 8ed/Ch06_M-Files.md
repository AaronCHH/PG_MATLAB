
# 6 M-Files

<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [6 M-Files](#6-m-files)
  * [6.1 M-File Editor window](#61-m-file-editor-window)
  * [6.2 Script files](#62-script-files)
  * [6.3 Function files](#63-function-files)
  * [6.4 Multiple inputs and outputs](#64-multiple-inputs-and-outputs)
  * [6.5 Variable arguments](#65-variable-arguments)
  * [6.6 Unused arguments](#66-unused-arguments)
  * [6.7 Comments and documentation](#67-comments-and-documentation)
  * [6.8 The MATLAB path](#68-the-matlab-path)

<!-- tocstop -->


## 6.1 M-File Editor window

## 6.2 Script files

## 6.3 Function files

## 6.4 Multiple inputs and outputs

## 6.5 Variable arguments

```
if (nargin == 1)
    tol = 100 * eps ;
end
```

```
function x = f(a, b, varargin)
    x = a+b ;
    if (nargin > 2)
        disp (varargin);
        c = varargin{1}
    end
end
```

```
function [x,varargout] = f(a,b,varargin)
    x = a+b ;
    if (nargin > 2)
        varargout{1} = cos(c) ;
    end
end
```

## 6.6 Unused arguments

> Not all output arguments of a function are needed every time the function is used. To ignore arguments that appear at the end of the list of outputs, simply remove them from the list.  
For example, with your new 2-output ddom function, D=ddom(C) returns only the first argument. The second output i is ignored.

> To ignore an argument, use a tilde (~) in its place.  
For example, to obtain just the indices of the diagonal entries that ddom would modify, use [~,i]=ddom(C) . Try it.

## 6.7 Comments and documentation

## 6.8 The MATLAB path


```python

```
