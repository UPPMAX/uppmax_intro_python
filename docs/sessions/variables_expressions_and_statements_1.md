# Variables, expressions and statements: variables

!!!- info "Learning outcomes"

    - Practice using the UPPMAX documentation
    - Practice using the Python book
      [How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html)
    - Get the type of an object
    - Create a variable
    - Use a variable
    - Practice converting an equation to Python code

???- question "For teachers"

    Teaching goals are:

    - Learners have worked with variables
    - Learners understand the purpose of variables
    - Learners have obtained the data type of a variable
    - Learners have heard about what a data type is
    - Learners have practiced convert an equation and a text question to Python

    Lesson plan:

    Exercises:

    - 5 mins: prior knowledge
    - 5 mins: presentation
    - 15 mins: challenge
    - 5 mins: feedback

    Prior questions:

    - What is a data type?
    - Can you name a Python data type?
    - What is an object?
    - What is a variable?
    - What are rules for naming a variables?
    - What are good practices for the name of a variable?
    - What is an operator?
    - Can you name an operator?

## Overview

In any non-trivial calculation, we want to let our computer remember
things, such as the content of a data file, or the parameters/settings
we use in our program. Variables allows one to make a computer
store ('remember') information. Here we use our first simple variables.

Also we practice converting an equation and a mathematical problem
to Python code. We will discover the helpful modulo operator.

```mermaid
flowchart TD
    python[[Python]]

    %% Give a white background to all nodes, instead of a transparent one
    classDef node fill:#fff,color:#000,stroke:#000

    subgraph sub_programming_language[Programming language]
      interpreted_language[Interpreted language]
      programming_language[Programming language]
      scripting_language[Scripting language]
      interpreter[Interpreter]
      scripts[Scripts]
      text_files[Text files]
    end
    style sub_programming_language fill:#ccf,color:#000,stroke:#fcc

    subgraph sub_programming_terms[Programming terms]
      user_input[User input]
      %% file_io[File I/O]
      %% command_line_arguments[Command-line arguments]
      variables[Variables]
      operators[Operators]
      %% functions[Functions]
      python_packages[Python packages]
      %% graphics[Graphics]
    end 
    style sub_programming_terms fill:#cfc,color:#000,stroke:#fcc

    subgraph sub_naiss[NAISS]
      your_hpc_center[Your HPC center]
      your_hpc_cluster[Your HPC cluster]
      modules[software modules]
      text_editors[Text editors]
      x_forwarding[X-forwarding]
      remote_desktop[Remote desktop]
    end
    style sub_naiss fill:#fcc,color:#000,stroke:#fcc

    python --> |is a| programming_language
    python --> |is a| interpreted_language
    python --> |is a| scripting_language

    programming_language --> |uses| text_files
    interpreted_language --> |has a| interpreter
    scripting_language --> |is|interpreted_language
    scripting_language --> |runs| scripts
    scripts --> |are| text_files
    %% scripts --> |can use| command_line_arguments

    python --> |has| python_packages
    python --> |has| variables
    %%python --> |has| functions
    python --> |has| operators
    %%functions --> |use| variables
    operators --> |work on| variables
    %%python_packages --> |allow| graphics
    python_packages --> |allow to use| user_input
    %% python_packages --> |allow to do| file_io
    %% python_packages --> |allow to use| command_line_arguments

    your_hpc_center --> |has| your_hpc_cluster
    your_hpc_cluster --> |uses| modules
    your_hpc_cluster --> |have| text_editors
    your_hpc_cluster --> |allow| x_forwarding
    your_hpc_cluster --> |has| remote_desktop
    modules --> |allow the use of| python_packages
    modules --> |allow the use of| interpreter

    text_editors --> |work on|text_files
    %%x_forwarding --> |allows|graphics
    %%remote_desktop --> |allows|graphics
    

    variables ~~~ uppmax
```


## Exercises

See the exercise procedure [here](../misc/exercise_procedure.md).

### Exercise 1: working with variables

!!!- info "Learning outcomes"

    - get the type of an object
    - create a variable
    - use a variable

Read the following sections of
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

- 2.1. Values and data types
- 2.2. Variables
- 2.3. Variable names and keywords

Then in section 2.14, do exercises 1 to and including 4.

!!! question "2.14.1"

    Take the sentence: 'All work and no play makes Jack a dull boy'.
    Store each word in a separate variable,
    then print out the sentence on one line using print.

???- question "Answer"

    ```python
    a = 'All'
    b = 'work'
    c = 'and'
    d = 'no'
    e = 'play'
    f = 'makes'
    g = 'Jack'
    h = 'a'
    i = 'dull'
    j = 'boy'
    print(a, b, c, d, e, f, g, h, i, j)    
    ```


!!! question "2.14.2"

    Add parenthesis to the expression `6 * 1 - 2`
    to change its value from 4 to -6.

???- question "Answer"

    ```python
    6 * (1 - 2)
    ```

!!! question "2.14.3"

    Place a comment before a line of code that previously worked,
    and record what happens when you rerun the program.

???- question "Answer"

    I use this code as a starting point:

    ```python
    a = 'All'
    b = 'work'
    c = 'and'
    d = 'no'
    e = 'play'
    f = 'makes'
    g = 'Jack'
    h = 'a'
    i = 'dull'
    j = 'boy'
    print(a, b, c, d, e, f, g, h, i, j)    
    ```

    Commenting out the first line:

    ```text
        print(a, b, c, d, e, f, g, h, i, j)
              ^
    NameError: name 'a' is not defined
    ```

    Commenting out the last line results in no sentence being printed.

!!! question "2.14.4"

    Start the Python interpreter and enter bruce + 4 at the prompt.
    This will give you an error:

    ```text
    NameError: name 'bruce' is not defined
    ```

    Assign a value to `bruce` so that `bruce + 4` evaluates to 10.

???- question "Answer"

    Here is a solution:

    ```python
    bruce = 6
    print(bruce + 4)
    ```
