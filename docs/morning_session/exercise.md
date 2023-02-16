# Exercises 

For the first assignment of this exercise session you should get familiar with
the Python-interpreter. In the second assignment you will write your first
Python program using an editor. More instructions are given in the following
how to use both, the Python-interpreter and an editor. Good luck!

???+ question "Assignment 1: Working with the Python interpreter"

    
    1. Start by typing the following command into the Python interpreter:
    ``` python
    print("Assignment 7")
    ```

        ??? tip "What happens?"
            ``` python
            >>> print("Assignment7")
            Assignment7
            ```

    2. Enter now `i = 10` in the Python-interpreter and then (in a new line)
       `print(i)`. After that (in a new line) enter `j = i/2` and (in a new line)
       `print(j)`.

        ??? tip "What values are displayed and why?"
            ``` python
            >>> i = 10
            >>> print(i)
            10
            >>> j = i/2
            >>> print(j)
            5.0
            ```
    
    3. Assign to variable `7assignment` the string `"black magic"`. Don’t forget to
       put the string in quotation marks (" ").


        ??? tip "What error occurs and why?"
            ``` python
            >>> 7Assignment = "black magic"
              File "<stdin>", line 1
                7Assignment = "black magic"
                          ^
            SyntaxError: invalid syntax
            ```

    4. Assign to variable `A` a sequence AGCTA (don’t forget to put the
       sequence in quotation marks). Use the built-in function `len()` to
       determine the length of the sequence `A` and assign the length of `A` to
       variable `i`. Print `A` and `i`.

        ??? tip "Output"
            ``` python
            >>> A = "AGCTA"
            >>> i = len(A)
            >>> print(A, i)
            AGCTA 5
            ```

    5. Concatenate `A` and `i` and print the result.
        
        ??? tip "What happens and why?"
            ``` python
            >>> print(A + i)
            Traceback (most recent call last):
              File "<stdin>", line 1, in <module>
            TypeError: must be str, not int
            ```

    6. Now enter `print(A + str(i))`.

        ??? tip "What happens now?"
            ``` python
            >>> print(A + str(i))
            AGCTA5
            ```
        > **Hint**: What might the built-in function `str()` do? There are also
        > other built-in functions, e.g., to convert a string or number to an
        > integer: `int()`, or to convert a string or number to a floating
        > point: `float()`.

    7. Print the substring of A from position 2 to 4. The output should be:
       GCT.

        ??? tip "Solution"
            ``` python
            >>> print(A[1:4])
            GCT
            ```

    8. Print the prefix (beginning of a string) of length 2 and the suffix (end
       of a string) of length 2 of the sequence stored in A. The output
       should be AG and TA.
        
        ??? tip "Solution"
            ``` python
            >>> print(A[:2])
            AG
            >>> print(A[-2:])
            TA
            ```
    9. Write a for-loop with the loop variable i, which runs from 0 to len(A)
       and prints out i.

        > Hint: Don’t forget to indent the body of the for-loop.

        ??? tip "Solution"
            ``` python
            >>> for i in range(len(A)):
            >>>     print(i)
            0
            1
            2
            3
            4
            ```
        Execute the same for-loop a second time and print out the character at
        each position of string A using A[i] as well.

    10. Now add an if-condition inside the for-loop, which checks if `i <
        len(A)/2`. Only print i and A[i] if this condition is true.

        ??? tip "Solution"
            ``` python
            >>> for i in range(len(A)):
            >>>     if (i < len(A)/2):
            >>>         print(i, A[i])
            0 A
            1 G
            2 C
            ```
    

    11.  Write a while-loop, which produces the same output as the for-loop and if-condition together.

        ??? tip "Solution"
            ``` python
            >>> i = 0
            >>> while (i < len(A)/2):
            >>>     print(i, A[i])
            >>>     i=i+1
            0 A
            1 G
            2 C
            ``` 

    12. Print the variable A again.

        ??? tip "What happens?"
            ``` python
            >>> print(A)
            AGCTA
            ```

    13. Leave the interactive mode of Python with `quit()`.

    14. Now return to the interactive mode of Python and print the variable
        A. 

        ??? tip "What happens now and why?"
            ``` python
            Traceback (most recent call last):
              File "<stdin>", line 1, in <module>
            NameError: name 'A' is not defined
            ```


???+ question "Assignment 2: Write a small program"

    1. Write a short program which compares two variables i and j. It should
       print the value 1, if i and j are equal, and otherwise the value 0.

        ??? tip "Solution"
            Write the script `compare.py` using your favorite editor.

            ``` python title="compare.py"
            i = 3
            j = 4
            if i == j:
                print(1)
            else:
                print(0)
            ```
            Then run it from the command line using
            ``` bash
            $ python compare.py
            0
            ```

    2. Within the program assign different numbers to i and j, e.g.:
        1. i = 3 and j = 4 and
        2. i = 10 and j = 10

Congratulations, you have now completed the basic python exercises for this
session. If you were too quick or just want to try a bit harder exercises,
please continue with the bonus exercises below.


# Bonus Exercises

???+ question "Assignment 3 (Bonus): Sequences"
    In this exercise we write a short Python program (named `<program_name>.py`,
    think of a reasonable program name and name your file accordingly. Replace
    <program_name> with your new program name).

    1. Chose two variables, e.g. A and B and assign the sequences `GATTACA` and
       `TACCATAC` to these variables. Make sure that the two sequences are
       assigned as strings to their variables A and B. Then print these
       sequences. Save everything you wrote and close the editor. Then you can
       run your program: `python3 <program_name>.py`

        ??? tip "Solution"

            ```python title="sequence_operations.py"
            A = "GATTACA"
            B = "TACCATAC"
            print("sequence A: ", A)
            print("sequence B: ", B)
            ```

    2. Now extend the program: Concatenate both sequences in both ways (AB and
       BA) and print both options.
        
        ??? tip "Solution"

            ``` python title="sequence_operations.py"
            A = "GATTACA"
            B = "TACCATAC"
            print("sequence A + B: ", A + B)
            print("sequence B + A: ", B + A)
            ```
            ``` bash
            sequence A + B:  GATTACATACCATAC
            sequence B + A:  TACCATACGATTACA
            ```

    3. Print prefixes and suffixes of length 3 of both sequences A and B. Use
       the built-in function `len()` for determining the suffixes.
        
        ??? tip "Solution"

            ``` python title="sequence_operations.py"
            print("prefix A: ", A[:3])
            print("prefix B: ", B[:3])
            suffix_A = len(A) - 3
            suffix_B = len(B) - 3
            print("suffix A: ", A[suffix_A:])
            print("suffix B: ", B[suffix_B:])

            # It is also possible to use a negative index
            # to count from the end:
            print("suffix A: ", A[-3:])
            print("suffix B: ", B[-3:])
            ```
            ``` bash
            prefix A: GAT
            prefix B: TAC
            suffix A: ACA
            suffix B: TAC
            ```

    4. Print out the second sequence from the last to the first position (last
       position first, first position last).


        ??? tip "Solution"
            ``` python title="sequence_operations.py"
            # Alternative 1 
            for i in range(len(B)):
                print(B[len(B) - i - 1])

            # Alternative 2 (reversed range)
            for i in range(len(B), 0, -1)
                print(B[i-1])

            # Alternative 3 (reversed string)
            for c in reversed(B):
                print(c)

            # Alternative 4 (reverse slicing)
            for c in B[::-1]
                print(c)
            ```
            ``` bash
            C
            A
            T
            A
            C
            C
            A
            T
            ```

    5. Assign this inverted sequence to a third variable, you could use the
       variable name C, and print the value of this variable.

## More bonus exercises

Some extra bonus exercises have not been integrated into the webpage yet. You can find them here:

* More bonus exercises: <https://hackmd.io/@pmitev/UPPMAX-intro-Python-assignments1>
