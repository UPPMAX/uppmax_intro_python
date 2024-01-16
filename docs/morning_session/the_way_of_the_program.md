# The way of the program

!!!- info "Learning objectives"

    * Get a first impression of what the Python programming language is
    * Know the basics of what the Python interpreter is
    * Get a first idea of what a program is
    * Hear about the three types of errors
    * Build up experience with the Python interpreter
    * Use a text editor on an UPPMAX HPC cluster
    * Create a Python script
    * Run a Python script

???- question "For teachers"

    Teaching goals are:

    * Learners have a general idea about what the Python programming language is
    * Learners have used the word 'Python interpreter'
    * Learners have a general idea about what a program is
    * Learners have used the terms syntax error, runtime error and semantic error
    * Learners have run code in the Python interpreter

    Other goals are:

    - Verify that learners indeed have learned how to create a file
    - Verify that learners indeed have learned how to use a text editor

    Lesson plan:

    * 5 mins: prior knowledge
    * 5 mins: presentation
    * 15 mins: challenge
    * 5 mins: feedback

## Overview

What is Python? What is a programming language?
What type of errors will I write when programming?
How do I write code in Python?

These fundamental question are discussed and practiced in this session.

```mermaid
flowchart TD
    python[[Python]]

    %% Give a white background to all nodes, instead of a transparent one
    classDef node fill:#fff,color:#000,stroke:#000

    subgraph sub_programming_language[Python as a language]
      interpreted_language[Interpreted language]
      programming_language[Programming language]
      scripting_language[Scripting language]
      interpreter[Interpreter]
      %% scripts[Scripts]
      %% text_files[Text files]
    end
    style sub_programming_language fill:#ccf,color:#000,stroke:#fcc


    subgraph sub_uppmax[UPPMAX]
      uppmax[UPPMAX]
      uppmax_modules[UPPMAX modules]
      uppmax_clusters[UPPMAX clusters]
      %% text_editors[Text editors]
      %%x_forwarding[X-forwarding]
      %%remote_desktop[Remote desktop]
    end
    style sub_uppmax fill:#fcc,color:#000,stroke:#fcc

    python --> |is a| programming_language
    python --> |is a| interpreted_language
    python --> |is a| scripting_language

    %% programming_language --> |uses| text_files
    interpreted_language --> |has a| interpreter
    scripting_language --> |is a|interpreted_language
    %% scripting_language --> |runs| scripts
    %% scripts --> |are| text_files
    %% scripts --> |can use| command_line_arguments

    uppmax --> |has| uppmax_clusters
    uppmax_clusters --> |have| uppmax_modules
    %%uppmax_clusters --> |have| text_editors
    %%uppmax_clusters --> |allow| x_forwarding
    %%uppmax_clusters --> |has| remote_desktop
    %% uppmax_modules --> |allow the use of| python_packages
    uppmax_modules --> |allow the use of| interpreter

    %% text_editors --> |work on|text_files
    %%x_forwarding --> |allows|graphics
    %%remote_desktop --> |allows|graphics
    

    %% variables ~~~ uppmax
```

## Exercises

### Exercise 1: Python and the Python interpreter

!!!- info "Learning objectives"

    * Get a first impression of what the Python programming language is
    * Know the basics of what the Python interpreter is
    * Get a first idea of what a program is
    * Hear about the three types of errors
    * Build up experience with the Python interpreter

Read the following sections of [How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html):

 * 1.1 The Python programming language
 * 1.2. What is a program?
 * 1.4. Syntax errors
 * 1.5. Runtime errors
 * 1.6. Semantic errors
 * 1.9. The first program

Then in section 1.12, do exercises 1 to and including 5

### Exercise 2: Running a Python script

!!!- info "Learning objectives"

    - create a Python script
    - run a Python script
    - use a text editor on an UPPMAX HPC cluster

Read the UPPMAX documentation about text editors [here](http://docs.uppmax.uu.se/software/text_editors/).

Then, in the book, section 1.12, do exercise 6.

## Links

 * [How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html)
