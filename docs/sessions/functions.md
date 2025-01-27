# Functions

!!!- info "Learning outcomes"

    - Use a for loop
    - Write a function without an argument and without a return type
    - Write a function that calls a function
    - Write a function that requires an argument
    - Write a function with a return value

???- question "For teachers"

    Teaching goals are:

    - Learners have used a for loop
    - Learners have written functions

    Lesson plan:

    - 5 mins: prior knowledge
    - 5 mins: presentation
    - 15 mins: challenge
    - 5 mins: feedback

    Prior:

    - What are functions?
    - Why use functions?
    - Can you name some Python functions?

## Overview

Sometime you need to do a same multi-line calculation multiple times in your code.
Instead of copy-pasting, one can use a so-called 'function'
to bundle a calculation is something that can be reused.

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
      command_line_arguments[Command-line arguments]
      variables[Variables]
      operators[Operators]
      functions[Functions]
      python_packages[Python packages]
      graphics[Graphics]
    end 
    style sub_programming_terms fill:#cfc,color:#000,stroke:#fcc

    subgraph sub_uppmax[UPPMAX]
      uppmax[UPPMAX]
      uppmax_modules[UPPMAX modules]
      uppmax_clusters[UPPMAX clusters]
      text_editors[Text editors]
      x_forwarding[X-forwarding]
      remote_desktop[Remote desktop]
    end
    style sub_uppmax fill:#fcc,color:#000,stroke:#fcc

    python --> |is a| programming_language
    python --> |is a| interpreted_language
    python --> |is a| scripting_language

    programming_language --> |uses| text_files
    interpreted_language --> |has a| interpreter
    scripting_language --> |is|interpreted_language
    scripting_language --> |runs| scripts
    scripts --> |are| text_files
    scripts --> |can use| command_line_arguments

    python --> |has| python_packages
    python --> |has| variables
    python --> |has| functions
    python --> |has| operators
    functions --> |use| variables
    operators --> |work on| variables
    python_packages --> |allow| graphics
    python_packages --> |allow to use| user_input
    python_packages --> |allow to do| file_io
    python_packages --> |allow to use| command_line_arguments

    uppmax --> |has| uppmax_clusters
    uppmax_clusters --> |have| uppmax_modules
    uppmax_clusters --> |have| text_editors
    uppmax_clusters --> |allow| x_forwarding
    uppmax_clusters --> |has| remote_desktop
    uppmax_modules --> |allow the use of| python_packages
    uppmax_modules --> |allow the use of| interpreter

    text_editors --> |work on|text_files
    x_forwarding --> |allows|graphics
    remote_desktop --> |allows|graphics
    

    variables ~~~ uppmax
```

## Exercises

See the exercise procedure [here](../misc/exercise_procedure.md).

### Exercise 1: using a for loop

!!!- info "Learning outcomes"

    - Use a for loop

Read the following sections of
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

- 3.2. Instances — a herd of turtles
- 3.3. The for loop
- 3.4. Flow of Execution of the for loop
- 3.5. The loop simplifies our turtle program

Then do exercise

- 3.8.1
- 3.8.5

### Exercise 2: a simple function

!!!- info "Learning outcomes"

    - Write a function without an argument and without a return type

Read the following sections of
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

- 4.1. Functions

Then do exercise:

- 4.9.1

### Exercise 3: write a function that calls a function

!!!- info "Learning outcomes"

    - Write a function that calls a function

Read the following sections of
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

- 4.2. Functions can call other functions

Then do exercise:

- 4.9.2

### Exercise 3: write a function that requires an argument

!!!- info "Learning outcomes"

    - Write a function that requires an argument

Read the following sections of
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

- 4.4. Functions that require arguments

Then do exercise:

- 4.9.3

### Exercise 4: write a function with a return value

!!!- info "Learning outcomes"

    - Write a function with a return value

Read the following sections of
[How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

- 4.5. Functions that return values

Then do exercise:

- 4.9.7
- 4.9.8

## Links

- [How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html)
