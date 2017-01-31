# 23 Cell Publishing


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [23 Cell Publishing](#23-cell-publishing)

<!-- tocstop -->

```python
# %load ch23/myfirstcell.m
%% Integrate a function
syms x
f = x^2
e = int(f)

%% Plot the results
figure(1)
ezplot(e)
```

```
publish myfirstcell.m
web html/myfirstcell.html
```


```python

```
