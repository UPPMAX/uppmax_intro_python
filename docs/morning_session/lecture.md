# Introduction to Python

This module introduces the fundamentals of Python programming language. The
content is adapted (and extended) from previous iterations of the course and
the by Nina Fischer (see [slide deck
one](https://docs.google.com/presentation/d/1ocVm9dAFB4hJs_KVhxHapuPIOVkymltxWtVGT9nXRag/edit#slide=id.p1)
and [slide deck
two](https://docs.google.com/presentation/d/1hoFC7Ax_WsGmdl2m8aVhfVSvaHykt96lOrFqsSDEIrQ/edit#slide=id.p4)).


!!! info "Content"
    * The course emphasises hands-on experience with Python in the UPPMAX
      environment. It focuses on the basics and can be taken by someone *without*
      any prior Python experience.
    * **You will learn:**
        * How to load and use different version of Python on our clusters
        * Basic and more advanced builtin data types
        * Using control flow statements to define the logic of your Python program
        * Grouping code into reusable functions and structuring your program into
          modules
        * Creating small command line programs that can take input arguments
        * Reading and writing to files in Python
    

## Schedule

| Time  | Topic   | 
|-------------- | -------------- |
| 09:00-09:45    | Basic and Sequence data types |
| 10:00-10:15    | Break |
| 10:15-11:00    | Control flow statements  |
| 11:00-12:00    | Exercises | 
| 13:00-13:45    | Functions and Modules |
| 13:45-14:00    | Break |
| 14:15-15:00    | Command line arguments and IO |
| 15:00-16:00    | Exercises | 


## What is Python?



## Getting Started

To work with Python on UPPMAX all you need to do is login and load the desired
Python version. In this course we will be working with version 3.10.8. To load
it, just type

``` bash
module load python/3.10.8
```

from the command line. You can use the command `module avail` to see all the
available Python version

``` 
$ module avail python

--------------------------------------------------------------------------- /sw/mf/rackham/applications ---------------------------------------------------------------------------
   python_ML_packages/3.9.5-cpu    wrf-python/1.3.1

---------------------------------------------------------------------------- /sw/mf/rackham/compilers -----------------------------------------------------------------------------
   python/2.7.6    python/2.7.11    python/3.3      python/3.4.3    python/3.6.0    python/3.7.2    python/3.9.5           python3/3.6.0    python3/3.7.2    python3/3.9.5
   python/2.7.9    python/2.7.15    python/3.3.1    python/3.5.0    python/3.6.8    python/3.8.7    python/3.10.8 (L,D)    python3/3.6.8    python3/3.8.7    python3/3.10.
8 (D)

  Where:
   L:  Module is loaded
   D:  Default Module

Use "module spider" to find all possible modules and extensions.
Use "module keyword key1 key2 ..." to search for all possible modules matching any of the "keys".


```

We can work with Python either interactively or by writing our code into files
(python modules) with the `.py` suffix.

!!! example "Interactive "Hello, world!""
    
    The canonical way of working interactively is using the Python interpreter
    which comes with the language. This is a so called REPL (read-eval-print
    loop) programming environment.
    > A read–eval–print loop (REPL), also termed an interactive toplevel or
    > language shell, is a simple interactive computer programming environment
    > that takes single user inputs, executes them, and returns the result to
    > the user; a program written in a REPL environment is executed piecewise
    > ([wiki
    > link](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop)).

    ``` bash
    # start the interpreter
    python
    ```
    This will take you to the interpreter where you can start writing Python
    code (Think of it as a calculator for code).

    ``` 
    Python 3.10.8 (main, Nov 15 2022, 21:16:40) [GCC 12.2.0] on linux
    Type "help", "copyright", "credits" or "license" for more information.
    >>> print("Hello, world!")
    Hello, world!
    >>>
    ```

    We can use Python as a calculator. Try the following

    ```
    >>> 2 + 2
    4
    >>> 50 - 5*6
    20
    >>> (50 - 5*6) / 4
    5.0
    >>> 12.45 / 100 + 7.5e-3
    0.132
    >>>
    ```

    A modern alternative is with more bells and whistles is
    [`IPython`](https://ipython.org/). This is also the backbone of the very
    popular [Jupyter Notebook](https://jupyter.org/) that you might be familiar
    with. The "Hello, world!" example is completely analogous 

    ``` bash
    # start ipython
    ipython
    ```

    And, 

    ``` ipython
    Python 3.10.8 (main, Nov 15 2022, 21:16:40) [GCC 12.2.0]
    Type 'copyright', 'credits' or 'license' for more information
    IPython 8.6.0 -- An enhanced Interactive Python. Type '?' for help.

    In [1]: print("Hello, world!")
    Hello, world!

    In [2]:
    ```

    We recommend using `IPython` for this course but you are welcome to choose
    whatever you prefer!

    * Anything that you can do in the Python interpreter you can also do in
      IPython
    * I will likely use "Python interpreter" also to refer to IPython
    * You can exit the interpreter with `exit()`, `quit()` or pressing
      `Ctrl-D`. 
    * [Tips and tricks of how to navigate IPython](
      https://ipython.readthedocs.io/en/6.5.0/config/shortcuts/index.html)


!!! example "Scripting "Hello, world!""
    The interpreter is very handy if we want to test things out or need to work
    interactively, but, often what we want is to write an executable script or
    library that can be shared, documented and reused. Let's write a hello
    world script!

    First create a file (module) called `hello_world.py` with your prefered editor

    ```
    vim hello_world.py
    ```

    Next, write the same code as before

    ``` python title="hello_world.py"
    print("Hello, world!")
    ```

    Save and close the file and then run the script from the command line

    ``` python
    $ python hello_world.py
    Hello, world!
    ```

### Variable assignment

Any and all values (objects) in Python can be assigned to a variable. As such 
Let's look at an example

``` ipython
In [1]: greeting = "Welcome to our Introductory Python Course!"

In [2]: print(greeting)
Welcome to our Introductory Python Course!
In [3]: number = 2

In [4]: print(number)
2

In [5]: number = 5

In [6]: print(number)
5
```

> The name on the left-hand side now refers to the result of evaluating the
> right-hand side, regardless of what it referred to before (if anything). From
> [discussion](https://stackoverflow.com/questions/11007627/python-variable-declaration)


``` ipython
In [1]: x = "hej"

In [2]: type(x)
Out[2]: str

In [3]: x = 1

In [4]: type(x)
Out[4]: int

```


!!! info "Variable names"

    * Names of variables may be chosen freely, but 
        * must consist of a single word (no blanks)
        * must not contain special characters except "_", and
        * must not begin with a number
    * Valid names are: my_variable, Value15
    * Invalid names are: my-variable, 15th_value

    ``` python title="Conventions"
    module_name, package_name, ClassName, method_name, ExceptionName,
    function_name, GLOBAL_CONSTANT_NAME, global_var_name, instance_var_name,
    function_parameter_name, local_var_name
    ```

## Python Data Types

We will now try to understand some of the builtin data types - you will be
using these all the time. We will cover `Int`, `Float`, `List`, `Bool` and
`String`. If we have some spare time we might also have a look at `Dict` and
`Set`.
    

``` mermaid
flowchart TD
    A --- Numeric
    A --- Boolean
    A --- Dictionary
    A --- Set
    A[Fundamental builtin data types] --- Sequence


    Numeric --- Integer
    Numeric --- Float
    Numeric --- Complex

    Sequence --- String
    Sequence --- List
    Sequence --- Tuple
```

### Numeric Datatypes

The table below shows some of the most common operations that work on numeric
data types (except complex). For more math functions see the
[`math`](https://docs.python.org/3/library/math.html) module included in the
standard library as well as [`numpy`](https://numpy.org/) and
[`scipy`](https://scipy.org/) which are the cornerstones of scientific
computation in Python.

<center>

| Operation   | Result    |
|--------------- | --------------- |
| `x + y`  |sum of x and y |
| `x - y`  |difference of x and y |
| `x * y`  |product of x and y |
| `x / y`  |quotient of x and y |
| `x // y`  |floored quotient of x and y |
| `x % y`  |remainder of `x / y` |
| `x ** y`  |x to the power of y|
| `abs(x)`  |absolute value of x|
| `int(x)`  |x converted to integer|
| `float(x)`  |x converted to floating point|
| | **Source: [Official Python docs](https://docs.python.org/3/library/stdtypes.html)**|

</center>

!!! example "Some examples"
    Let's try some example in `ipython`

    ``` ipython
        In [1]: 4 + 2
        Out[1]: 6

        In [2]: 4 + 2.0
        Out[2]: 6.0

        In [3]: type(4 + 2.0)
        Out[3]: float

        In [4]: 8 / 5
        Out[4]: 1.6

        In [5]: 8 // 5
        Out[5]: 1

        In [6]: int(2.1)
        Out[6]: 2

        In [7]: int(2.9)
        Out[7]: 2

        In [8]: x = 1

        In [9]: x = x + 2

        In [10]: x
        Out[10]: 3

        In [11]: x = 1

        In [12]: x += 2

        In [13]: x
        Out[13]: 3
    ```

### Strings

Strings are a sequence data type representing unicode characters and is defined
with single or double quotes.

``` ipython
    In [1]: greeting1 = "Good Morning!"

    In [2]: greeting2 = 'Hello, How are you!'
```

We can actually several of the same operations we used for the numeric data
type on strings.


!!! example "String operations"

    ``` ipython
    In [1]: greeting1 = "Good Morning!"

    In [2]: greeting2 = "Hello, How are you!"

    In [3]: greeting1 + greeting2
    Out[3]: 'Good Morning!Hello, How are you!'

    In [4]: greeting = "Welcome to our Introductory Python Course!"

    In [5]: number = 2

    In [6]: greeting + number
    ---------------------------------------------------------------------------
    TypeError                                 Traceback (most recent call last)
    Cell In [6], line 1
    ----> 1 greeting + number

    TypeError: can only concatenate str (not "int") to str

    In [7]: greeting + str(number)
    Out[7]: 'Welcome to our Introductory Python Course!2'

    In [8]: greeting = "Welcome to our Introductory Python Course!"

    In [9]: number = 2

    In [10]: greeting * number
    Out[10]: 'Welcome to our Introductory Python Course!Welcome to our Introductory Python Course!'

    In [11]: greeting = "Hello!\n"

    In [12]: greeting * 8
    Out[12]: 'Hello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\n'

    In [14]: print(greeting * 8)
    Hello!
    Hello!
    Hello!
    Hello!
    Hello!
    Hello!
    Hello!
    Hello!
    ```

Notice also that a string object has many associated methods. Try using the
`.`-notation to access methods (and attributes) by pressing `tab`.

``` 
In [3]: greeting1.
            capitalize()   endswith()     index()        isdigit()      isspace()      lower()        removesuffix() rpartition()   startswith()   upper()
            casefold()     expandtabs()   isalnum()      isidentifier() istitle()      lstrip()       replace()      rsplit()       strip()        zfill()
            center()       find()         isalpha()      islower()      isupper()      maketrans()    rfind()        rstrip()       swapcase()
            count()        format()       isascii()      isnumeric()    join()         partition()    rindex()       split()        title()
            encode()       format_map()   isdecimal()    isprintable()  ljust()        removeprefix() rjust()        splitlines()   translate()
```

!!! example "String methods"

    ``` ipython
    In [1]: my_string = "This is a string"

    In [2]: my_string.upper()
    Out[2]: 'THIS IS A STRING'

    In [3]: my_string.isnumeric()
    Out[3]: False

    In [4]: my_string.split(" ")
    Out[4]: ['This', 'is', 'a', 'string']
    ```

Remember that strings are sequences? This means that each character in a string
has an *index*. We can use this to do all sorts of string slicing.

<center>
![alt text](../assets/string_index.png "Title")
</center>
!!! example "String indexing and slicing"

    ``` ipython
    In [1]: my_string = "This is a string"

    In [2]: my_string[0]
    Out[2]: 'T'

    In [3]: len(my_string)
    Out[3]: 16

    In [4]: my_string[len(my_string) - 1]
    Out[4]: 'g'

    In [5]: my_string[len(my_string)]
    ---------------------------------------------------------------------------
    IndexError                                Traceback (most recent call last)
    Cell In [5], line 1
    ----> 1 my_string[len(my_string)]

    IndexError: string index out of range

    In [6]: my_string.index("i")
    Out[6]: 2

    In [7]: my_string[2:]
    Out[7]: 'is is a string'

    In [8]: my_string[-1]
    Out[8]: 'g'

    In [9]: my_string[-5:]
    Out[9]: 'tring'
    ```


### Lists

Just like `String` a `List` is a sequence data type. However, it is very
different. A list if is a sequence of elements (objects) of arbitrary type i.e.
we can have a list of *strings* a list of *integers* and a list of *lists* of
*strings* and *integers*. Let's start by looking at how can define a list

``` python
    In [1]: list_of_ints = [1, 5, 2]

    In [2]: list_of_str = ["hej", "du"]

    In [3]: list_of_str == "hej du".split(" ")
    Out[3]: True

    In [4]: mixed_list = ["string", 3, True, []]
```

Notice how all the elements of the list are inside the square brackets `[]` and
how each element is separated by a comma `,`. Lists are extremely useful, here
are some of the things you can do with them:

* *Append* new elements to the list
* *Concatenate* two (or more) lists
* Access individual elements by their *index*
* Perform some *operation*, *reduction* or *transformation* on all or some of
  elements in the list

Let's look at some examples

``` ipython
In [1]: l = []

In [2]: l.append(1)

In [3]: l
Out[3]: [1]

In [4]: l.append(2)

In [5]: l
Out[5]: [1, 2]

In [6]: m = [3, 4, 5]

In [7]: n = l + m

In [8]: n
Out[8]: [1, 2, 3, 4, 5]

In [9]: n[3]
Out[9]: 4

In [10]: len(n)
Out[10]: 5

In [11]: sum(n)
Out[11]: 15

In [13]: min(l)
Out[13]: 3

In [14]: max(l)
Out[14]: 244

In [15]: sorted(l)
Out[15]: [3, 50, 170, 244]

In [16]: l.sort()

In [17]: l
Out[17]: [3, 50, 170, 244]
```





