# Files

!!!- info "Learning outcomes"

    - Have read a file
    - Have created a file

???- question "For teachers"

    Teaching goals are:

    - Learners have read a file
    - Learners have created a file

    Lesson plan:

    - 5 mins: prior knowledge
    - 5 mins: presentation
    - 15 mins: challenge
    - 5 mins: feedback

    Prior:

    - What is file I/O?
    - What are some problems you can have when reading a file?
    - What are some problems you can have when creating a file?

## Overview

Most programmers need to work on data and produce some result.
In Python, we -of course- can read from files and write to files.
Here we do just that.

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
      file_io[File I/O]
      %% command_line_arguments[Command-line arguments]
      variables[Variables]
      operators[Operators]
      %% functions[Functions]
      python_packages[Python packages]
      graphics[Graphics]
    end 
    style sub_programming_terms fill:#cfc,color:#000,stroke:#fcc

    subgraph sub_naiss[NAISS]
      your_hpc_center[Your HPC center]
      modules[software modules]
      your_hpc_cluster[Your HPC cluster]
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
    python_packages --> |allow| graphics
    python_packages --> |allow to use| user_input
    python_packages --> |allow to do| file_io
    %% python_packages --> |allow to use| command_line_arguments

    your_hpc_center --> |has| your_hpc_cluster
    your_hpc_cluster --> |have| modules
    your_hpc_cluster --> |have| text_editors
    your_hpc_cluster --> |allow| x_forwarding
    your_hpc_cluster --> |has| remote_desktop
    modules --> |allow the use of| python_packages
    modules --> |allow the use of| interpreter

    text_editors --> |work on|text_files
    x_forwarding --> |allows|graphics
    remote_desktop --> |allows|graphics
    

    variables ~~~ your_hpc_center
```

## Exercises

See the exercise procedure [here](../misc/exercise_procedure.md).

### Exercise 1: create a simple text file

!!!- info "Learning outcomes"

    - Create a simple text file

Read the following sections of
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

- 13.1. About files
- 13.2. Writing our first file

Then do:

- Put the code at the top of 13.2 in a Python script
- Run that code
- Verify that it works as expected


### Exercise 2: read and create a simple text file


!!!- info "Learning outcomes"

    - Read a simple text file
    - Repeat creating a file
    - Practice to search the internet how to reverse the order of text lines

Read the following sections of
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

- 13.4. Turning a file into a list of lines

Consider searching for ['Python reverse order'](https://lmddgtfy.net/?q=python%20reverse%20order),
as you will need to do this in the exercise.

Then do:

- Exercise 13.11.1

!!! question "13.11.1"

    Write a program that reads a file and writes out a new file
    with the lines in reversed order
    (i.e. the first line in the old file becomes the last one in the new file.)

???- question "Answer"

    The new thing is to use `reversed`:

    ```python
    f = open("friends.txt", "r")
    xs = f.readlines()
    f.close()

    xs = reversed(xs)

    g = open("sortedfriends.txt", "w")
    for v in xs:
        g.write(v)
    g.close()
    ```
