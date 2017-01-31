
# 14 Calling Java from MATLAB


```python
%load_ext pymatbridge
```


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [14 Calling Java from MATLAB](#14-calling-java-from-matlab)
  * [14.1 A simple example](#141-a-simple-example)
  * [14.2 Encryption/decryption](#142-encryptiondecryption)
  * [14.3 Java class path](#143-java-class-path)
  * [14.4 Calling your own Java methods](#144-calling-your-own-java-methods)
  * [14.5 Loading a URL as a matrix](#145-loading-a-url-as-a-matrix)

<!-- tocstop -->


## 14.1 A simple example

```
t = 'hello world'
s = java.lang.String(t)
s.indexOf('w') + 1
find(s == 'w')
whos
```

## 14.2 Encryption/decryption

```
function key = getkey(password)
%GETKEY: key = getkey(password)
% Converts a string into a key for use
% in the encrypt and decrypt functions.
% Uses triple DES.
import javax.crypto.spec. *
b = int8(password) ;
n = length(b) ;
b((n+1):24) = 0 ;
b = b(1:24) ;
key = SecretKeySpec(b, 'DESede') ;
```

```
function e = encrypt(t, key)
%ENCRYPT: e = encrypt(t, key)
% Encrypt the plaintext string t into
% the encrypted byte array e using a key
% from getkey.
import javax.crypto. *
cipher = Cipher.getInstance('DESede') ;
cipher.init(Cipher.ENCRYPT_MODE, key) ;
e = cipher.doFinal(int8(t))' ;
```

```
function t = decrypt(e, key)
%DECRYPT: t = decrypt(e, key)
% Decrypt the encrypted byte array e
% into to plaintext string t using a key
% from getkey.
import javax.crypto. *
cipher = Cipher.getInstance('DESede') ;
cipher.init(Cipher.DECRYPT_MODE, key) ;
t = char(cipher.doFinal(e))' ;
```

```
k = getkey('this is a secret password')
e = encrypt('a hidden message',k)
decrypt(e,k)
```

## 14.3 Java class path

```
javaaddpath folder
```

## 14.4 Calling your own Java methods


```python
%%matlab
s = urlread('http://www.mathworks.com')
```


```python
%%matlab
!javac myreader.java
```


```python
%%matlab   
javac myreader.java
java myreader http://www.google.com my.txt
```


```python
%%matlab
myreader.geturl
```

## 14.5 Loading a URL as a matrix

```
w = loadurl('http://www.cise.ufl.edu/~davis/MATLABPrimer8E/w')
```

```
s = loadurl('http://www.cise.ufl.edu/
research/sparse/mat/HB/west0479.mat')
prob = s.Problem
spy(prob.A)
title([prob.name ': ' prob.title])
```


```python

```
