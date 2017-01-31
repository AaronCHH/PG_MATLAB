
# E Data Analysis


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [E Data Analysis](#e-data-analysis)
  * [E.1 Basic Operations](#e1-basic-operations)
  * [E.2 Descriptive Statistics](#e2-descriptive-statistics)
  * [E.3 Filtering and Convolution](#e3-filtering-and-convolution)
  * [E.4 Interpolation and Regression](#e4-interpolation-and-regression)
  * [E.5 Fourier Transforms](#e5-fourier-transforms)
  * [E.6 Derivatives and Integrals](#e6-derivatives-and-integrals)

<!-- tocstop -->


## E.1 Basic Operations

* **cumprod** computes the cumulative product. See p. 172.  
* **cumsum** computes the cumulative sum. See p. 172.  
* **prod** computes the products of the entries of an array. See p. 173.  
* **sort** sorts entries in an array. See p. 174.  
* **sortrows** sorts the rows of a matrix. See p. 174.  
* **sum** sums entries along one dimension. See p. 173.  

## E.2 Descriptive Statistics

* **cov** computes the covariance matrix, or the variance of a vector.  
* **max** finds the largest entry in an array. See p. 171.  
* **mean** computes the mean. mean(x) is the mean of a vector x.  
* **mean(A)** for a matrix is a row vector with the mean of each column of A. mean(A,2) is the mean of each row. [p. 25]  
* **median** computes the median. median(x) is the median of a x.  
* **median(A)** for a matrix is a row vector with the median of each column of A. median(A,2) is the median of each row. [p. 25]  
* **min** finds the smallest entry in an array. See p. 171.  
* **mode** computes the mode. mode(x) is the mode of a vector x.  
* **mode(A)** for a matrix is a row vector with the mode of each column of A. mode(A,2) is the mode of each row. [p. 25]  
* **std** computes the standard deviation. std(x) is the standard deviation of a vector x. std(A) for a matrix is a row vector with the standard variation of each column of A. [p. 25]  
* **var** computes the variance. var(x) is the variance of a vector x.  
* **var(A)** for a matrix is a row vector with the variance of each column of A. [p. 25]  

## E.3 Filtering and Convolution

* **conv** performs convolution and polynomial multiplication. See p. 178.  
* **conv2** performs 2-D convolution.  
* **filter** applies a digital filter to a data sequence.  

## E.4 Interpolation and Regression

* **interp1** interpolates a 1-D function. See p. 179.  
* **polyfit** fits a polynomial to data. [p. 151]  
* **polyval** evaluates a polynomial. [p. 151]  

## E.5 Fourier Transforms

* **abs** computes the absolute value of each entry in an array. [p. 34]  
* **angle** computes the phase angle of each entry in an array.  
* **fft** computes the discrete Fourier transform (DFT). fft(x) is the DFT ofthe vector x. fft(A) for a matrix computes the DFT of each column.  
* **fft2** computes the 2-D DFT. fftshift centers the spectrum by shifting the zero-frequency component.  
* **ifft** computes the inverse DFT. If y=fft(x) for a vector x, the x=ifft(y) .  
* **ifft2** computes the inverse 2-D DFT.  

## E.6 Derivatives and Integrals

* **diff** computes differences between adjacent entries.  
* **diff((1:5).^2)** is [3 5 7 9] . [p. 129]  
* **gradient** computes the numerical gradient.  


```python

```
