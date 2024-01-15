# Overview

This module introduces the fundamentals of Python programming language. 

!!! info "Content"
    * The course emphasises hands-on experience with Python in the UPPMAX
      environment. It focuses on the basics and can be taken by someone *without*
      any prior Python experience.
    * In this morning session, you will learn:
        * How to load and use different version of Python on our clusters
        * How to work with basic builtin data types
        * How to create and run a Python script
    
## Schedule

| Time          | Topic                         | 
|---------------|-------------------------------|
| 09:00-10:00   | [Using the Python interpreter](using_the_python_interpreter.md), [the way of the program](the_way_of_the_program.md) |
| 10:00-10:15   | Break                         |
| 10:15-11:00   | [Working with Python scripts](working_with_python_scripts.md), [variables](variables_expressions_and_statements.md) |
| 11:00-11:15   | Break                         |
| 11:15-12:00   | [operators](variables_expressions_and_statements.md), [user input](variables_expressions_and_statements.md)

Link to HackMd: <https://hackmd.io/@dianai/uppmax-intro/>

## Overview

```mermaid
flowchart TD
    python((Python))
    
    subgraph sub_programming_language[Programming language]
      interpreted_language[Interpreted language]
      programming_language[Programmig language]
      scripting_language[Scripting language]
      interpreter[Interpreter]
      scripts[Scripts]
      text_files[Text files]
    end
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

    subgraph sub_uppmax[UPPMAX]
      uppmax[UPPMAX]
      uppmax_modules[UPPMAX modules]
      uppmax_clusters[UPPMAX clusters]
      text_editors[Text editors]
      use_of_graphics[Allows use of graphics]
    end

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
    uppmax_clusters --> |allow| use_of_graphics
    uppmax_modules --> |allow the use of| python_packages
    uppmax_modules --> |allow the use of| interpreter

    text_editors --> |work on|text_files
    use_of_graphics --> |allows|graphics

    variables ~~~ uppmax
```

## Links

 * [YouTube video on `python` versus `IPython`](https://youtu.be/lhi7s6RoIys?si=Z72gSIb6q3piucPH)
 * [YouTube video on `IPython`](https://www.youtube.com/watch?v=S9rgGJYAQ8o)
 * [Free online book: 'How to Think Like a Computer Scientist'](https://openbookproject.net/thinkcs/python/english3e/index.html)
