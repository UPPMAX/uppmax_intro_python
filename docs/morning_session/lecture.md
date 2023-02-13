# Introduction

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


# Python - A brief primer



# Loading and running Python

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

# Data Types


    


