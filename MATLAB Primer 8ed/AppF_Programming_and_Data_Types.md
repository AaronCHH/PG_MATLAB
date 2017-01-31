
 # F Programming and Data Types

<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [F Programming and Data Types](#f-programming-and-data-types)
  * [F.1 Data Types](#f1-data-types)
    * [F.1.1 Numeric Types](#f11-numeric-types)
    * [F.1.2 Characters and Strings](#f12-characters-and-strings)
    * [F.1.3 Structures](#f13-structures)
    * [F.1.4 Cell Arrays](#f14-cell-arrays)
    * [F.1.5 Function Handles](#f15-function-handles)
    * [F.1.6 Data Type Identification](#f16-data-type-identification)
    * [F.2 Data Type Conversion](#f2-data-type-conversion)
    * [F.2.1 Numeric](#f21-numeric)
    * [F.2.2 String to Numeric](#f22-string-to-numeric)
    * [F.2.3 Numeric to String](#f23-numeric-to-string)
    * [F.2.4 Other Conversions](#f24-other-conversions)
  * [F.3 Operators and Special Characters](#f3-operators-and-special-characters)
    * [F.3.1 Arithmetic Operators](#f31-arithmetic-operators)
    * [F.3.2 Relational Operators](#f32-relational-operators)
    * [F.3.3 Logical Operators](#f33-logical-operators)
    * [F.3.4 Special Characters](#f34-special-characters)
  * [F.4 Strings](#f4-strings)
    * [F.4.1 String Creation](#f41-string-creation)
    * [F.4.2 String Identification](#f42-string-identification)
    * [F.4.3 String Manipulation](#f43-string-manipulation)
    * [F.4.4 String Parsing](#f44-string-parsing)
    * [F.4.5 String Evaluation](#f45-string-evaluation)
    * [F.4.6 String Comparison](#f46-string-comparison)
  * [F.5 Bit-Wise Operations](#f5-bit-wise-operations)
  * [F.6 Logical Operations](#f6-logical-operations)
  * [F.7 Relational Operations](#f7-relational-operations)
  * [F.8 Set Operations](#f8-set-operations)
  * [F.9 Date and Time Operations](#f9-date-and-time-operations)
  * [F.10 Programming in MATLAB](#f10-programming-in-matlab)
    * [F.10.1 Functions and Scripts](#f101-functions-and-scripts)
    * [F.10.2 Evaluation](#f102-evaluation)
    * [F.10.3 Timer](#f103-timer)
    * [F.10.4 Variables and Functions in Memory](#f104-variables-and-functions-in-memory)
    * [F.10.5 Control Flow](#f105-control-flow)
    * [F.10.6 Error Handling](#f106-error-handling)
    * [F.10.7 MEX Programming](#f107-mex-programming)

<!-- tocstop -->

 ## F.1 Data Types
 ### F.1.1 Numeric Types

* **cat** concatenate arrays. See p. 173.  
* **class** returns the class of a variable as a string. class(eye(2)) is 'double', class(@log) is 'function_handle' , and class('s') is 'char' , for example. find returns the indices and values of nonzeros in a matrix. See p. 180.  
* **isa** tests whether a variable is from a given class (isa(x,'double') , for example). See p. 188.  
* **isequal** tests two variables for equality. See p. 170.  
* **isfinite** tests if a number is finite (not +inf, -inf, or nan).  
* **isinf** tests if a number is +inf or -inf.  
* **isnan** tests if a number is a NaN.  
* **isnumeric** tests if a variable has a numeric type. See p. 188.  
* **isreal** tests if a variable is real (as opposed to complex).  
* **isscalar** tests if a variable is a scalar.  
* **isvector** tests if a variable is a vector. See p. 170.  
* **permute** rearranges the dimensions of an N-D array. See p. 173.  
* **reshape** reshapes an array. See p. 174.  
* **squeeze** removes singleton dimensions. See p. 174.  
* **zeros** returns an array of all zeros. See p. 172.  

 ### F.1.2 Characters and Strings

* **cellstr** creates a cell array of strings from a character array. If S is m-by-n, then C=cellstr(S) is a cell array of length m, with each entry a row of S.  
* **char** converts an array of integers to a character array. [p. 101]  
* **eval** executes MATLAB expressions or statements from a string. See p. 198.  
* **findstr** Finds strings within another string. Use strfind instead.  
* **regexp** searches a string for a regular expression, which is a kind string that can match many strings. For example, to search for a digit followed by a colon, try s=datestr(now), regexp(s,’[0-9]:’) .  
* **sprintf** creates a formatted string of other numbers and  
* **strings**, with tight control over how they are displayed. [p. 162]  
* **sscanf** reads formatted data from a string, with a format string similar to the one used by fprintf.  
* **strcat** concatenates strings horizontally. See p. 192.  
* **strcmp** compares strings. See p. 193.  
* **strcmpi** is a case-insensitive version of strcmp. See p. 193.  
* **strfind** determines if one string is a substring of another string. Try strfind(’look in this book’,’oo’) , which gives [2 15] .  
* **strmatch** determines if one string is a prefix of another. See p. 194.  
* **strrep** finds and replaces substrings. strrep(s,a,b) replaces all occurrences of the substring a with b in the string s.  
* **strtrim** removes leading and trailing spaces.  

 ### F.1.3 Structures

* **class** determines the class of a variable. See p. 184.  
* **deal** distributes inputs to outputs. Useful for assigning fields of a struct array from a cell array. If s is a 1-by-4 struct array, try c={1,2,3,4}; [s.f]=deal(c{:}) , which is the same as for i=1:4, s(i).f=c{i}; end.  
* **fieldnames** returns a cell array of strings with the name of each member ofa struct or object.  
* **getfield** gets one or more fields from a struct.  
* **getfield**(x,'y') is the same as x.y.  
* **isa** tests whether a variable is from a given class (isa(s,'struct') , for example). See p. 188.  
* **isequal** tests two structs for equality. The order of members of each struct does not matter. See p. 170.  
* **isfield** checks for a member of a struct. isfield(x,'s') is true if x.s is a member of the struct x. Use isfield(x,c) where c is a cell array to check for multiple fields.  
* **isscalar** tests if a variable is a scalar. A 1-by-1 struct is considered scalar, even if it contains multiple members or array members.  
* **isstruct** tests if a variable is a struct. See p. 188.  
* **isvector** tests if a variable is a vector. See p. 170.  
* **rmfield** removes fields from a struct.  
* **setfield** sets fields in a struct.  
* **struct** creates a struct array. Try x.a=1; x.b='s' , which can also be done with x=struct('a',1,'b','s') . [p. 54]  
* **struct2cell** converts a struct to a cell array. See p. 187.

 ### F.1.4 Cell Arrays

* **cell** constructs an empty cell array. cell(m,n) is a m-by-n cell array, with every entry equal to the empty array ([] ). [p. 53] cell2mat constructs a matrix from a cell array of matrices. See p. 190.  
* **cellfun** applies a function to each entry of a cell array.  
* **cellstr** creates a cell array of strings from a character array. See p. 185.  
* **class** determines the class of a variable. See p. 184.  
* **deal** distributes inputs to outputs. See p. 186.  
* **isa** tests whether a variable is from a given class (isa(c,’cell’) , for example). See p. 188.  
* **iscell** tests if a variable is a cell array. See p. 188.  
* **iscellstr** tests if a variable is a cell array of strings.  
* **isequal** tests two cell arrays for equality. See p. 170.  
* **isscalar** tests if a variable is a scalar. A 1-by-1 cell array is a scalar, even if it contains an array. Try isscalar({rand(4)}) .  
* **isvector** tests if a variable is a vector. See p. 170.  
* **num2cell** converts a numeric array into a cell array, placing each entry in its own cell. See p. 190.  
* **struct2cell** converts a struct to a cell array, placing each field in its own cell.  

 ### F.1.5 Function Handles

* **class** determines the class of a variable. See p. 184.  
* **feval** evaluates a function via a function handle.  
* **feval**(@f,x) is the same as f(x) for the function handle @f.  
* **feval** remains in MATLAB for historical reasons.  
* **isa** tests whether a variable is from a given class (isa(f,’function_handle’) , for example). See p. 188.  
* **isequal** tests two function handles for equality. See p. 170.  
* **str2func** constructs a function handle from a string.  
* **str2func**(’f’) is the same as @f. [p. 68]  

 ### F.1.6 Data Type Identification

* **isa** tests whether a variable is from a given class.  
* **isa(x,'struct')** is true if x is a struct, for example. Classes include logical, char, numeric (integer or floating-point), integer, float, int8 (and variants), single, double, cell, struct, function_handle, and any MATLAB or Java class.  
* **iscell** tests if a variable is a cell array. Same as isa(x,'cell') .  
* **iscellstr** tests if a variable is a cell array of strings.  
* **ischar** tests if a variable is a string (a char array). Same as isa(x,'char') . [p. 70]  
* **isfield** checks for a member of a struct. See p. 186.  
* **islogical** tests if a variable is logical. Same as isa(x,'logical') .  
* **isnumeric** tests if a variable has a numeric type (integer or floating-point). Same as isa(x,'numeric') .  
* **isreal** tests if a variable is real (as opposed to complex).  
* **isstruct** tests if a variable is a struct. Same as isa(x,'struct') .  
* **whos** lists variables in the workspace. See p. 166.  

 ### F.2 Data Type Conversion

### F.2.1 Numeric

* **double** converts numbers to IEEE double precision. [p. 56]  
* **int16** converts numbers to 16-bit signed integers.  
* **int32** converts numbers to 32-bit signed integers.  
* **single** converts numbers to IEEE single precision. Computations in single are less accurate than double, but can be faster. [p. 56]  
* **uint8** converts numbers to 8-bit unsigned integers. Often used for images. [p. 56]  
* **uint16** converts numbers to 16-bit unsigned integers.  

 ### F.2.2 String to Numeric

* **hex2dec** converts a string with a hexadecimal number to a number. hex2dec('1F') is 31.  
* **str2double** converts a string to a single number.  
* **str2double**('3.14') is the number 3.14. str2double(c) with a cell array of strings converts each entry in c. [p. 19]  
* **str2num** converts a string to one or more numbers, via eval. Use str2double to avoid side-effects of functions in the string. [p. 19]  

 ### F.2.3 Numeric to String

* **char** converts an array of integers to a character array. [p. 101]  
* **dec2bin** converts a number to a string, in binary.  
* **int2str** converts an integer to a formatted string, for display. Try int2str(magic(5)) .  
* **mat2str** converts an integer to a formatted string, for display or evaluation. Try mat2str(magic(5)) .  
* **num2str** converts a numeric array to a string, for display.  
* **num2str**(A) uses the default format %11.4g (a width of 11, with 4 digits displayed).   
* **num2str**(pi,8) displays 8 digits of , and  
* **num2str**(A,s) uses the format string s (like fprintf). [p. 163]  

 ### F.2.4 Other Conversions

* **cell2mat** constructs a matrix from a cell array of matrices. Try A=magic(5) and C=num2cell(A) . Then cell2mat(C) reconstructs A. For the 2-D case, the matrices in each row of the cell array (C{i,:}) must all have the same number of rows, and the matrices in each column (C{:,j}) must all have the same number of columns.  
* **datestr** converts the result from clock or now into a string. See p. 196.  
* **logical** converts an array to logical. See p. 195.  
* **num2cell** converts a numeric array into a cell array, placing each entry in its own cell. Try A=magic(5); C=num2cell(A) , which creates a cell array C so that C{i,j}=A(i,j) .   
* **str2func** constructs a function handle from a string. See p. 188.  
* **struct2cell** converts a struct to a cell array. See p. 187.  

 ## F.3 Operators and Special Characters

[See pp. 14–16, 33, 123, and 142 for a discussion of each operator.]

 ### F.3.1 Arithmetic Operators

* **A+B**   adds two matrices, or a matrix and a scalar
* **A-B**   subtracts two matrices, or a matrix and a scalar
* **-A**    negates the matrix A
* **A*B**   multiplies two matrices, or a matrix and a scalar
* **B/A**   solves XA = B. Use in place of B*inv(A)
* **A\B**   solves AX = B. Use in place of inv(A) *B
* **A^B**   A to the power B. A or B must be a scalar
* **A.*B**  element-wise array multiplication
* **A./B**  element-wise array right division
* **A.\B**  element-wise array left division
* **A.^B**  element-wise array power
* **A'**    matrix transpose (complex conjugate, if complex)
* **A.'**   array transpose (not complex conjugate)

 ### F.3.2 Relational Operators

* **A<B**   less than  
* **A<=B**  less than or equal to  
* **A>B**   greater than  
* **A=>B**  greater than or equal to  
* **A==B**  equal to  
* **A~=B**  not equal to  

 ### F.3.3 Logical Operators

* **A&&B**  short-circuit logical and (scalars only)
* **A||B**  short-circuit logical or (scalars only)
* **A&B**   logical and
* **A|B**   logical or
* **~A**    logical not

 ### F.3.4 Special Characters

* **=**     assignment [p. 3]  
* **:**     colon operator [pp. 19–22]  
* **()**    input parameters, precedence, subscript [pp. 5, 13]  
* **[]**    output parameters, construct array [pp. 4, 26]  
* **{}**    construct and subscript cell array [p. 53]  
* *3.14**   decimal point [p. 4]  
* *A.B**    member of struct or object [pp. 53, 58]  
* **A.(B)** dynamic member of struct or object [p. 55]  
* **..**    parent folder [p. 8]  
* **...**   continue statement on next line [p. 4]  
* **,**     array rows, parameters, statements [pp. 4, 13]  
* **;**     array columns, terminate statement [pp. 4, 13]  
* **%**     comment [p. 42]  
* **%%**    code cell [p. 43]  
* **%{**    start block comment [p. 43]  
* **%}**    end block comment [p. 43]  
* **!**     system command [p. 103]  
* ***s***   character string [p. 18]  
* **@**     object class folder, function handle [pp. 61, 67]  
* **~**     unused argument [p. 42]  
* **<**     inheritance [p. 62]  

 ## F.4 Strings

 ### F.4.1 String Creation

* **blanks** creates a string of blanks.  
* **cellstr** creates a cell array of strings from a character array. See p. 185.  
* **char** converts an array of integers to a character array. [p. 101]  
* **sprintf** creates a formatted string. See p. 185.  
* **strcat** concatenations strings horizontally. strcat(s1,s2) is like [s1,s2] , except that strcat removes trailing spaces.  

 ### F.4.2 String Identification

* **isa** tests whether a variable is from a given class (isa(s,'char') , for example). See p. 188.
* **iscellstr** tests if a variable is a cell array of strings.
* **ischar** tests if a variable is a string (a char array). Same as isa(x,'char') . [p. 70]
* **isscalar** tests if a variable is a scalar. Try isscalar('a') and isscalar('ab') .
* **isspace** tests if a variable is whitespace (space, tab, return, ...).
* **isvector** tests if a variable is a vector. See p. 170.

 ### F.4.3 String Manipulation

* **deblank** removes trailing blanks from the end of a string.  
* **deblank(c)** for a cell array of strings operates on all strings in c.  
* **lower** converts a string to lower case. lower(c) for a cell array of strings c operations on all the strings in c.  
* **strrep** finds and replaces substrings. See p. 185.  
* **strtrim** removes leading and trailing spaces.  
* **upper** converts a string to upper case. upper(c) for a cell array of strings c operations on all the strings in c.  

 ### F.4.4 String Parsing

* **findstr** Finds strings within another string. Use strfind instead.  
* **regexp** searches a string for a regular expression. See p. 185.  
* **regexprep** finds and replaces a substring using a regular expression.  
* **sscanf** reads formatted data from a string, with a format string similar to the one used by fprintf.  
* **strfind** determines if one string is a substring of another string. See p. 185.  
* **strtok** extracts tokens from a string. Try [t,r]=strtok('this is a string') , which gives the token t='this' and the remainder r=' is a string' .  

 ### F.4.5 String Evaluation

* **eval** executes MATLAB expressions or statements from a string. Avoid whenever possible. See p. 198.  
* **evalin** evaluates MATLAB expressions or statements from a string in the workspace of the caller, or in the base workspace. Avoid whenever possible. See p. 198.  

 ### F.4.6 String Comparison

* **strcmp** compares strings. strcmp(a,b) is 1 ifthey are identical, 0 otherwise. To compare multiple strings, one or both arguments can be a cell array of strings. [p. 19]  
* **strcmpi** is a case-insensitive version of strcmp. [p. 19]  

* **strmatch** determines if one string is a prefix of another.  
* **strmatch(s,c)** finds the strings in the character array or cell array of strings c that have the string s as a prefix. With a third argument ’exact’ , only exact matches are sought.  
* **strncmp** compares the first n characters of strings. Otherwise identical to strcmp.  
* **strncmpi** is a case-insensitive version of strncmp.  

 ## F.5 Bit-Wise Operations

Bit-wise operations can be performed only on unsigned integers, or arrays of unsigned integers.
* **bitand** computes a bitwise and.  
* **bitcmp** computes a bitwise not.  
* **bitget** extracts a bit. bitget(A,1) is 1 if A is odd.  
* **bitor** computes a bitwise or.  
* **bitset** sets a bit.  
* **bitshift** shifts bits left or right.  
* **bitxor** computes a bitwise xor.  

 ## F.6 Logical Operations

* **all** is the ∀ logical quantifier. all(x) is true ifall entries in the vector x are nonzero. all(A) for a matrix computes a result for each column. [p. 51]  
* **and** is the logical and. and(A,B) is (A&B) . [p. 16]  
* **any** is the ∃ logical quantifier. any(x) is true ifany entries in the vector x are nonzero. any(A) for a matrix computes a result for each column. [p. 51]  
* **false** returns logical 0, for false, or an array of logical 0’s. Its syntax is essentially the same as zeros. [p. 17]  
* **find** returns the indices and values of nonzeros in a matrix. See p. 180.  
* **logical** converts an array to logical. logical(A) is (A~=0) . [p. 31]  
* **not** is the logical not. not(A) is (~A) . [p. 16]  
* **or** is the logical or. or(A,B) is (A|B) . [p. 16]  
* **true** returns logical 1, for true, or an array of logical 1’s. Its syntax is essentially the same as ones. [p. 17]  
* **xor** is the logical xor. xor(A,B) is (A|B)&(~(A&B)) , which is  
* **true** if either A or B are true, but not both. [p. 16]  

 ## F.7 Relational Operations

* **eq** equal. eq(A,B) is (A==B) . [p. 33]  
* **ge** greater than or equal. ge(A,B) is (A>=B) . [p. 33]  
* **gt** greater than. gt(A,B) is (A>B) . [p. 33]  
* **le** less than or equal to. le(A,B) is (A<=B) . [p. 33]  
* **lt** less than. lt(A,B) is (A<B) . [p. 33]  
* **ne** not equal. ne(A,B) is (A~=B) . [p. 33]  

 ## F.8 Set Operations

Sets are represented as vectors of numbers, characters, or cell arrays of strings.
* **intersect** computes the intersection of two sets. [p. 55]  
* **ismember** tests if an element is a member of a set. [p. 55]  
* **setdiff** computes the set difference of two sets. [p. 55]  
* **union** computes the union of two sets. [p. 55]  
* **unique** finds the unique elements of a set. [p. 55]  

 ## F.9 Date and Time Operations

* **clock**  returns the current time as a date vector ([year month day hour minute seconds] ). The seconds term has a fractional part; all others are integers.  
* **cputime**  returns the total CPU time (in seconds) used by MATLAB since the application started. Not recommended for performance evaluation, since it can wrap around when the internal representation overflows. [p. 73]  
* **date**  returns today's date as a string (excluding the hours, minutes, and seconds).  
* **datenum**  converts a date string to a serial date number. datenum is the inverse of datestr. Try datenum(date) and datenum('1-Jan-0000') .  
* **datestr**  converts the result from clock or now into a string. Try datestr(now) .  
* **etime**  returns the elapsed time in seconds between two date vectors (as returned by clock).  
* **now**  returns the current time as a serial date number (the number of days since December 31, 2BC, in the Gregorian calendar).  
* **tic**  starts a stopwatch timer. Find the elapsed time of a statement with tic; statement; toc. For multiple timers, use s=tic with t=toc(s) , where t is the time since s was started. [p. 73]  
* **toc**  reads a stopwatch timer. t=toc gives the time since the last tic. [p. 73]  

 ## F.10 Programming in MATLAB

 ### F.10.1 Functions and Scripts

* **echo** controls the display of statements as they are executed.  
* **end** defines the last line of a block of code. See p. 200. function is the first line of any M-file function. function [a,b]=f(x,y) declares a function with two inputs x and y and two outputs a and b. [p. 39]  
* **input** prompts the user for keyboard input. [p. 72]  
* **inputname** returns the name of an input parameter to a function, as a string.  
* **mfilename** returns the filename of the currently-running function.  
* **nargchk** checks if the number of input arguments is valid.  
* **nargin** is the number of input arguments passed to a function. [p. 41]  
* **nargout** is the number of output arguments expected from a function. nargout is zero ifthe result is ans. [p. 41]  
* **nargoutchk** checks if the number of output arguments is valid.  
* **varargin** specifies a variable input argument list. In the function statement ofan M-file, use varargin as the last input argument to collect an arbitrary number of arguments. These are placed in a cell array of the same name. [p. 41]  
* **varargout** specifies a variable output argument list. In the  
* **function** statement ofan M-file, use varargout as the last  
* **output** argument. Then inside the function, assign outputs to varargout{1}, varargout{2}, and so on. [p. 42]  


 ### F.10.2 Evaluation

* **ans** returns the result of the most recently evaluated MATLAB expression that was not an assignment. [p. 4]  
* **builtin** executes a built-in function, ignoring overloading and shadowing. Try i=3; builtin(’i’) and then which i -all.  
* **cellfun** applies a function to each entry of a cell array.  
* **echo** controls the display of statements as they are executed.  
* **eval** executes MATLAB expressions or statements from a string. Try eval(’x=4’) . Avoid using eval whenever possible.  
* **eval** can have nasty side effects that are difficult to avoid.  
* **evalin** evaluates MATLAB expressions or statements from a string in the workspace of the caller, or in the base workspace (what you see in the Workspace window). For example, evalin(’base’,’x’) returns the value of x in the base workspace. Like eval, avoid whenever possible.  
* **feval** evaluates a function via a function handle. See p. 187.  
* **pause** pauses the Command Window output. Hit any key on the  
* **keyboard** to continue. pause(3) pauses for 3 seconds. [p. 72]  
* **run** runs a script that need not be on the current path.  

 ### F.10.3 Timer

* **timer** creates a timer object, which calls a function f(t,e,s) at given intervals (t is the timer object, e is the event, and s is optional). Try t=timer('TimerFcn',@(t,e)why,'Period', 1,'ExecutionMode','fixedRate') . Then start(t) creates a timer that calls why once each second.  
* **delete** deletes a timer, with delete(t) .  
* **start** starts a timer. Try start(t) .  
* **stop** stops a timer. Try stop(t) .  

 ### F.10.4 Variables and Functions in Memory

* **ans** returns the result of the most recently evaluated MATLAB expression that was not an assignment. [p. 4]
* **assignin** assigns a value to a variable in the base workspace or caller workspace. Avoid if possible, since it can lead to hard-to-debug code. See also evalin (p. 198).
* **global** declares variables as global. Global variables can be accessed from any function without the need to pass them as arguments. Try not to use global, since it can lead to hard-to-debug code. [p. 39]
* **persistent** defines a variable local to a function, which is retained between subsequent calls to that function.

 ### F.10.5 Control Flow

* **for** loops across a block of statements terminated with end. for i=a, statements, end iterates across the statements, setting the loop index i to one column of a at a time. Try for i=1:5,i,end and for i=eye(3),i,end. [p. 44]  
* **if** defines a conditional statement. Use with else, elseif, and end. if(A) for a matrix A is true only if all entries are nonzero. Try if(x<0), s=-1, elseif(x>0), s=1, else, s=0, end, which is s=sign(x) for the scalar x. [p. 47]  
* **elseif** is a part of a conditional statement. The  
* **elseif**( expression) is tested only when the if test is false. [p. 48]  
* **else** is a part of a conditional statement. The else part is executed when the if test and any elseif tests are all false. [p. 48]  
* **return** is the normal return from a function. A function also returns normally after executing the last statement in the function. Unlike many programming languages, the return statement in MATLAB does not accept any input arguments. [p. 40]  
* **switch** selects among cases, depending on a single expression. Each case is defined by a case statement. [p. 48]  
* **case** defines a block of statements for one case of a switch statement. The statements after case(e) are triggered if the switch expression s is equal to e. The statements after case{e1,e2} are triggered if s is equal to e1 or e2. [p. 48]  
* **otherwise** defines a part of a switch statement. ifno case in a switch statement matches the expression, the otherwise block of statements is executed. [p. 48]  
* **while** executes a block of statements. while(e) tests the expression e each iteration. If the expression e is false, the loop terminates. Try x=2^10, while(x>1) , x=x/2, end. [p. 46]  
* **break** terminates a for or while loop. Statements after the  
* **break** are not executed. [p. 47]  
* **continue** skips the remaining statements in a for or while loop, and goes to the next iteration of the loop. [p. 47]  
* **error** abnormally terminates a script or function. error(msg) prints the msg string and terminates the current function. An error may instead be caught via a try/catch statement. [p. 71]  
* **try** executes a block of code and recovers from errors. If an error occurs, the try block of code is terminated and the catch block (if any) is executed. [p. 49]  
* **catch** defines the second part of a try/catch statement. Ifan  
* **error** occurs, the try part is terminated and the statements after the  
* **catch** part are executed. An optional argument (catch ME) gives information about the error. [p. 49]  
* **end** defines the last line of a for, while, if, switch, or try/catch block ofcode. In a classdef file, end defines the last line of the classdef, properties, methods, and events blocks of code. Also defines the last line of a function, but this is required only if an M-file contains more than one function, or if the function is in a classdef file. [p. 44]  
* **goto** does not exist in MATLAB because it leads to unmanageable code. Use break to exit a loop. Use continue to skip a loop iteration. Place code in a function and use return. Use try/catch to handle errors and special conditions. [p. 232]  

 ### F.10.6 Error Handling

* **error** abnormally terminates a script or function (see above).  
* **rethrow** reissues a previously-caught error. [p. 49]  
* **try** executes code and recovers from errors (see above).  
* **catch** is the second part of a try/catch statement (see above).  
* **warning** issues a warning. warning('oops') displays the warning but does not terminate the function. [p. 72]  

 ### F.10.7 MEX Programming

* **mex** compiles a C/C++ or Fortran mexFunction. [p. 87]


```python

```
