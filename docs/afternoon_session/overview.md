# Overview

This module introduces the fundamentals of Python programming language.

!!! info "Content"
    - The course emphasises hands-on experience with Python in the UPPMAX
      environment. It focuses on the basics and can be taken by someone
      without any prior Python experience.
    - You will learn:
        - :heavy_check_mark: How to load and use different version
          of Python on our clusters
        - :heavy_check_mark: How to create and run a Python script
        - How to work with basic builtin data types
        - How to use UPPMAX modules to load a Python package
        - How to reading files
        - How to writing to files
        - How to creating a command line program that can take input arguments
        - How to use control flow statements
        - How to draw a plot (i.e. an x-y line plot)
        - How to bundle code into reusable functions

??? info "For teachers"

    Classic-style lecture and exercises can be found at [lecture.md](lecture.md)
    and [exercise.md](exercise.md)

## Schedule

Time          | Topic
--------------|------------------------------------------------------------------------------------------------
13:00-14:00   | [Variables, expressions and statements: variables](variables_expressions_and_statements_1.md)  
14:00-14:15   | Break
14:15-15:00   | [Variables, expressions and statements: operators](variables_expressions_and_statements_2.md)  
15:00-15:15   | Break
15:15-16:00   | [Variables, expressions and statements: user input](variables_expressions_and_statements_3.md)

> The course is learner-centered. This means that the pace is determined
> be the learners (i.e. not by the clock).
> The breaks are always on the time specified.

- Extra materials:
    - [UPPMAX modules and Python packages](hello_little_turtles.md)
    - [File IO](files.md)
    - [command line arguments](command_line_arguments.md)
    - [Graphics](graphics.md)
    - [functions](functions.md)
    - Conditionals
      (['How to Think Like a Computer Scientist'](https://openbookproject.net/thinkcs/python/english3e/index.html)
      chapter 5)
    - Fruitful functions
      (['How to Think Like a Computer Scientist'](https://openbookproject.net/thinkcs/python/english3e/index.html)
      chapter 6)
    - Other Python programming environments:
      see the UPPMAX 'Programming in Python' documentation
      [here](http://docs.uppmax.uu.se/software/python_programming/)


## Overview of afternoon

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

> Overview of all topics discussed in the afternoon
