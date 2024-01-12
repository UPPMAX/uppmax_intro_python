# Introduction to Python

This module introduces the fundamentals of Python programming language. 

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

| Time          | Topic                         | 
|---------------|-------------------------------|
| 09:00-10:00   | Using the Python interpreter on |
| 10:00-10:15   | Break                         |
| 10:15-11:00   | Using a Python script, variables|
| 11:00-11:15   | Break                         |
| 11:15-12:00   | Exercises                     |
| 13:00-14:00   | Functions and Modules         |
| 14:00-14:15   | Break                         |
| 14:15-15:00   | Command line arguments and IO |
| 15:00-15:15   | Break                         |
| 15:15-16:00   | Exercises                     | 

## What is Python?

* Developed by Guido van Rossum in the early 1990s
* Named after the British comedy group "Monty Python",  not after the reptile
* Python is available for all operating systems for free
* Python is easy to learn (not master)
* Has a big ecosystem of packages for scientific computing
* Has a big community
* Commonly used in many scientific fields

## Getting Started

Link to HackMd: <https://hackmd.io/@dianai/uppmax-intro/>

To work with Python on UPPMAX:

- [Login to Rackham](#login-to-rackham)
- [Load the Python module](#load-the-python-module)
- [Pick how to work](#pick-how-to-work)

### Login to Rackham

First, login to Rackham from your terminal. 
This is described at the UPPMAX page 'Login to Rackham' [here](http://docs.uppmax.uu.se/getting_started/login_rackham/).

???- question "How to login to Rackham from your terminal?"

    This is described at the UPPMAX page 'Login to Rackham' [here](http://docs.uppmax.uu.se/getting_started/login_rackham/).

    Spoiler:

    ```
    ssh [username]@rackham.uppmax.uu.se
    ```

    where `[username]` is your UPPMAX username, for example:

    ```
    ssh sven@rackham.uppmax.uu.se
    ```

### Load the Python module

Load Python version 3.10.8. 
This is described at the UPPMAX pages on Python [here](http://docs.uppmax.uu.se/software/python/).

???- question "How to load Python version 3.10.8?"

    This is described at the UPPMAX pages on Python [here](http://docs.uppmax.uu.se/software/python/).

    Spoiler:

    ```
    module load python/3.10.8
    ```

### Pick how to work

There are multiple ways to develop Python code:

- Using Python scripts with a text editor
- Using the Python interpreter
- Using IPython
- Using Jupyter

We can work with Python either interactively or by writing our code into files
(so-called Python scripts) with the `.py` suffix.

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

    First create a file (module) called `hello_world.py` with your preferred editor

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

## Links

 * [YouTube video on `python` versus `IPython`](https://youtu.be/lhi7s6RoIys?si=Z72gSIb6q3piucPH)
 * [YouTube video on `IPython`](https://www.youtube.com/watch?v=S9rgGJYAQ8o)
 * Previous content is adapted (and extended) from previous iterations of the course and
slides developed by Nina Fischer (see [slide deck
one](https://docs.google.com/presentation/d/1ocVm9dAFB4hJs_KVhxHapuPIOVkymltxWtVGT9nXRag/edit#slide=id.p1)
and [slide deck
two](https://docs.google.com/presentation/d/1hoFC7Ax_WsGmdl2m8aVhfVSvaHykt96lOrFqsSDEIrQ/edit#slide=id.p4)).
