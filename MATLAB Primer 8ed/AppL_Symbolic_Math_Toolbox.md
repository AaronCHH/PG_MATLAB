
# L Symbolic Math Toolbox


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [L Symbolic Math Toolbox](#l-symbolic-math-toolbox)
  * [L.1 Calculus](#l1-calculus)
  * [L.2 Linear Algebra](#l2-linear-algebra)
  * [L.3 Simplification](#l3-simplification)
  * [L.4 Special Functions](#l4-special-functions)
  * [L.5 Conversions](#l5-conversions)
  * [L.6 Basic Operations](#l6-basic-operations)

<!-- tocstop -->


## L.1 Calculus

* **diff** performs symbolic differentiation. Try syms x; diff(x^2) . [p. 127]
* **int** performs symbolic indefinite or definite integration. Try syms x; int(x^2); and int(x,0,1) . [p. 129]
* **limit** computes the limit of a symbolic expression. [p. 131]

## L.2 Linear Algebra

* **det** computes the determinant of a symbolic matrix. [p. 144]  
* **diag** extracts the diagonal of a symbolic matrix, or creates a symbolic diagonal matrix. See p. 171.  
* **eig** computes the eigenvalues and eigenvectors of a symbolic matrix, or finds the generalized eigenvalues/eigenvectors. [p. 143]  
* **inv** computes the inverse of a symbolic matrix. Does not suffer the inaccuracy of inv(A) for a numerical matrix A. [p. 143]  
* **null** computes a basis for the null space of a symbolic matrix.  
* **poly** constructs a polynomial from a set of specified roots, or constructs the characteristic polynomial of a matrix. [p. 143]  
* **rank** computes the rank of a symbolic matrix.  
* **svd** computes the singular value decomposition of a symbolic matrix. [p. 143]  
* **tril** extracts the lower triangular part of a symbolic matrix. See p. 173.  
* **triu** extracts the upper triangular part of a symbolic matrix. See p. 173.  

## L.3 Simplification

* **factor** factors a symbolic expression into a product of subexpressions, or factors a numeric or symbolic nonnegative integer into its prime factors. [p. 135]  
* **subs** substitutes one symbolic expression into another. subs(s,2) replaces the default variable (typically x) with the value 2. subs(s,y,z+1) replaces y with z+1 in the expression s. All occurrences are replaced. [p. 133]  

## L.4 Special Functions

* **zeta** computes the Riemann zeta function, (x), or its derivatives.

## L.5 Conversions

* **double** converts a symbolic expression to a numeric one (in IEEE double precision). [p. 131]

## L.6 Basic Operations

* **ceil** rounds a symbolic expression towards +∞. See p. 178.
* **conj** computes the complex conjugate of each entry in a symbolic array.
* **eq** tests if two symbolic expressions are equal. eq(A,B) is (A==B) . See p. 195.
* **fix** rounds a symbolic expression towards zero. See p. 178.
* **floor** rounds a symbolic expression towards −∞.
* **imag** returns the imaginary part of a symbolic expression.
* **log10** computes the base-10 logarithm of a symbolic expression.
* **log2** computes the base-2 logarithm of a symbolic expression.
* **mod** computes the remainder after symbolic division. See p. 178.
* **real** returns the real part of a symbolic expression. [p. 153]
* **round** rounds a symbolic expression towards the nearest integer.
* **size** returns the size of a symbolic array. See p. 171.
* **sort** sorts entries in a symbolic array, as if they were text entries.
* **sort([z 1 y x])** is [1, x, y, z] .
* **sym** creates a symbolic number or variable. sym(A) where A is a numeric matrix constructs a symbolic representation of the matrix. A second argument controls how the numbers are converted ('f' for floating-point, 'r' for rational, and 'd' for decimal). sym('x') creates a symbolic variable. A second argument controls what kind of symbolic variable is created ('real' if x is real, 'positive' if x is real and positive, and 'clear' if there are no restrictions on x).
* **syms** creates symbolic numbers and variables. syms x y is short
* **for** x=sym('x'); y=sym('x') . [p. 126]


```python

```
