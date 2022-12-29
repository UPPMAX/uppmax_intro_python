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

???+ question "Assignmen 3 (Bonus): asd"
