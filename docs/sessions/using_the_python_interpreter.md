# Using the Python interpreter

!!!- info "Learning outcomes"

    - Practice using the documentation of your HPC cluster
    - Practice using the Python book
      [How to Think Like a Computer Scientist: Learning with Python 3](https://openbookproject.net/thinkcs/python/english3e/index.html)
    - To be able to login to your HPC cluster
    - To be able to load Python
    - To be able to run a minimal Python program

???- question "For teachers"

    Teaching goals are:

    - Learners have used the documentation of their HPC cluster
    - Learners have used the Python book
    - Learners have used the Python interpreter
    - Learners have loaded Python

    Other goals are:

    - Verify that learners indeed have learned how to login
    - Verify that learners indeed have learned how to use the module system

    Prior and feedback question:

    - What is Python?
    - What are features of the Python language?
    - What is an interpreted language?
    - What is a scripting language?
    - What is an interpreter?
    - What is an HPC cluster?
    - What are features of your HPC cluster?
    - What is a login node?
    - What is the rule on what to run on a login node?
    - How to run heavy Python calculations on your HPC cluster?
    - How to make your Python scripts reproducible?

    Lesson plan:

    - 5 mins: prior knowledge
    - 5 mins: presentation
    - 15 mins: challenge
    - 5 mins: feedback

## Why?

You want to make a computer run Python code,
for some good reason. Here we do so!

To develop code in Python on your HPC clusters, one needs to:

- Login to that HPC cluster, to be able to work on it
- Load the Python module, to be able to use a modern Python interpreter
- Use the Python interpreter, to run Python code

Luckily, the documentation of your HPC center
should allow you to do this by yourself!

These exercises will ensure you are able to run a minimal Python program.

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


        subgraph sub_naiss[NAISS]
        your_hpc_center[Your HPC center]
        your_hpc_cluster[Your HPC cluster]
        modules[software modules]
        %% text_editors[Text editors]
        %%x_forwarding[X-forwarding]
        %%remote_desktop[Remote desktop]
        end
        style sub_naiss fill:#fcc,color:#000,stroke:#fcc

        python --> |is a| programming_language
        python --> |is a| interpreted_language
        python --> |is a| scripting_language

        %% programming_language --> |uses| text_files
        interpreted_language --> |has a| interpreter
        scripting_language --> |is a|interpreted_language
        %% scripting_language --> |runs| scripts
        %% scripts --> |are| text_files
        %% scripts --> |can use| command_line_arguments

        your_hpc_center --> |has| your_hpc_cluster
        your_hpc_cluster --> |uses| modules
        %%uppmax_clusters --> |have| text_editors
        %%uppmax_clusters --> |allow| x_forwarding
        %%uppmax_clusters --> |has| remote_desktop
        %% uppmax_modules --> |allow the use of| python_packages
        modules --> |allow the use of| interpreter

        %% text_editors --> |work on|text_files
        %%x_forwarding --> |allows|graphics
        %%remote_desktop --> |allows|graphics


        %% variables ~~~ uppmax
```

## Exercises

???- question "Enjoy a video?"

    You can find a video with solutions to these exercises:

    HPC Cluster|Link to video
    -----------|------------------------------------
    Rackham    |[here](https://youtu.be/S6pYTqRmI7U)

See the exercise procedure [here](../misc/exercise_procedure.md).

### Exercise 1: login to your HPC cluster

Go to the documentation of your HPC cluster
and search for the login procedure(s).

Then answer these questions:

- Login to your HPC cluster in any way

???- question "Answer"

    The documentation for the your HPC cluster can be found at:

    HPC Cluster|Link to documentation
    -----------|------------------------------------------------------
    Rackham    |[https://docs.uppmax.uu.se](https://docs.uppmax.uu.se)

    From there, searching for, for example, 'login', you will find information
    on how to do so.

    HPC Cluster|Link to documentation
    -----------|------------------------------------------------------
    Rackham    |[here](http://docs.uppmax.uu.se/getting_started/login_rackham/)

### Exercise 2: load the Python module

Go to the documentation of your HPC cluster
and load the software module for Python.

???- question "Answer"

    From the documentation of your center, searching for, for example,
    'Python module',
    you will find information on how to load the Python module.

    HPC Cluster|Link to documentation                                 |Solution
    -----------|------------------------------------------------------|------------------------------------------------------
    Rackham    |[here](http://docs.uppmax.uu.se/software/python/)     |`module load python`

### Exercise 3: start the Python interpreter

Go to the documentation of your HPC cluster
and start the Python interpreter.

???- question "Answer"

    From the documentation of your center, searching for, for example,
    'Python' or 'Python interpreter',
    you will find information on how to start the Python interpreter.

    HPC Cluster|Link to documentation                                 |Solution
    -----------|------------------------------------------------------|------------------------------------------------------
    Rackham    |[here](http://docs.uppmax.uu.se/software/python/)     |`python`

???- question "Cannot get this to work?"

    If there is no time to get this fixed during the course,
    you are also use Python on your local computer.

### Exercise 4: run a 'Hello world' program

Copy-paste the following code to the Python interpreter:

```python
print('Hello, world!')
```

Press enter.

How does that look like?

???- question "Answer"

    You output will look similar to this:

    ```python
    $ python
    Python 3.12.3 (main, Nov  6 2024, 18:32:19) [GCC 13.2.0] on linux
    Type "help", "copyright", "credits" or "license" for more information.
    >>> print('Hello, world!')
    Hello, world!
    >>> 
    ```

Congratulations, you've just run a 'Hello world' program :+1:
