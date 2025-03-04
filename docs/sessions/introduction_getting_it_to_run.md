# Getting it to run

![Python logo from https://www.python.org/community/logos/](python_logo.png)

This module introduces the fundamentals of Python programming language.

!!!- info "Learning outcomes"

    - Practice using the documentation of your HPC cluster
    - Practice using the Python book
      [How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html)
    - Get Python code to run on your HPC cluster
    - Develop Python code on your HPC cluster
    - Understand the minimum of Python

??? info "For teachers"

    Classic-style lecture and exercises can be found at:

    - [../classic_sessions/morning_lecture.md](../classic_sessions/morning_lecture.md)
    - [../classic_sessions/morning_exercise.md](../classic_sessions/morning_exercise.md)

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
      modules[software modules]
      your_hpc_cluster[Your HPC cluster]
      text_editors[Text editors]
      %% x_forwarding[X-forwarding]
      %% remote_desktop[Remote desktop]
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
    your_hpc_cluster --> |have| modules
    your_hpc_cluster --> |have| text_editors
    %% your_hpc_cluster --> |allow| x_forwarding
    %% your_hpc_cluster --> |has| remote_desktop
    modules --> |allow the use of| python_packages
    modules --> |allow the use of| interpreter

    text_editors --> |work on|text_files
    %%x_forwarding --> |allows|graphics
    %%remote_desktop --> |allows|graphics
    

    variables ~~~ your_hpc_center
```

- [Using the Python interpreter](using_the_python_interpreter.md)
- [The way of the program](the_way_of_the_program.md)
- [Working with Python scripts](working_with_python_scripts.md)
