# Exercise

???+ question "assignment 1: similarity of sequences"

    In this exercise you will write a program that calculates the distance
    between two sequences, e.g:

    ``` python
    seq1 = "ACGT"
    seq2 = "AGGT"
    ```
    A simple program (without fonctions or modules) is sufficient.

    ??? tip "Solution"
        ``` python
        # define sequences
        seq1 = "ACGT"
        seq2 = "AGGT"

        # initiate counter
        distance_score = 0

        # for each letter in the sequences
        for a,b in zip(seq1, seq2)

            # if they don't match, add a distance point
            if a != b:
                distance_score += 1
            
        # print result to the terminal
        print("Distance between A and B: ", distance_score)
        ```

    1. **Calculate the distance between the following sequences and print out
       the result.** Since the following sequences are already aligned, we
       can calculate the distance between them. Change your program so that it can
       read two aligned sequences from the command line. Test your program with the
       following sequences.
      
        ```
        a) ACGT and A-GT
        b) AC-GT and AGT--
        c) AC-CGT and AGT---
        d) ACCGT and TGCCA
        e) GATT-ACA and TACCATAC
        f) --GA--TT--AC-A and TA--CC--AT--CA
        ```

    ??? tip "Solution"
        ``` python
        import sys

        # read sequences from command line arguments
        seq1 = sys.argv[1]
        seq2 = sys.argv[2]

        # initiate counter
        distance_score = 0

        # for each letter in the sequences
        for a,b in zip(seq1, seq2)

            # if they don't match, add a distance point
            if a != b:
                distance_score += 1
            
        # print result to the terminal
        print(f"Distance between A and B: {distance_score}")
        ```
        ```
        Distance between seq1 and seq2: 1
        Distance between seq1 and seq2: 4
        Distance between seq1 and seq2: 5
        Distance between seq1 and seq2: 4
        Distance between seq1 and seq2: 7
        Distance between seq1 and seq2: 13
        ```

    2. **Extend the program that the aligned sequences are printed out
       additionally to their distance.**

    ??? tip "Solution"
        ``` python
        print("Sequence seq1: ", seq1)
        print("Sequence seq2: ", seq2)
        print("Distance between seq1 and seq2: ", distance_score)
        ```
        ```
        Sequence seq1: ACGT
        Sequence seq2: A-GT
        Distance between seq1 and seq2: 1

        Sequence seq1: AC-GT
        Sequence seq2: AGT--
        Distance between seq1 and seq2: 4
        ```

    3. **Extend the program that the distance between two sequences is only
       calculated when both sequences have the same length.** Test your program
       with the input sequences:

        ```
        a) ACGT and AGT
        b) ACCGT and TGCCA
        ```
        
        **Note**: *Here you can use either the `assert` keyword or an `if`
        clause. You could also raise a custom exception using `try-except`.*

    ??? tip "Solution"
        ``` python
        import sys

        # read sequences from command line arguments
        seq1 = sys.argv[1]
        seq2 = sys.argv[2]
        
        assert len(seq1) == len(seq2), "Sequences must be of same length"

        # initiate counter
        distance_score = 0

        # for each letter in the sequences
        for a,b in zip(seq1, seq2)

            # if they don't match, add a distance point
            if a != b:
                distance_score += 1
            
        # print result to the terminal
        print(f"Distance between A and B: {distance_score}")
        ```
    4. **Extend the program that the second sequence is inverted and assigned to a
    third sequence.** Please, read the first and second sequence from the command
    line. Calculate the distances between the first and the second and between the
    first and the third sequence.

        Compare the distance between the first and the second and the first and the
        third sequence and print the alignment with the smaller distance. If the
        distances are equal, then print the alignment of the first and second sequence.

        Test your program with the following sequences:

        ```
        a) ACGT and A-GT
        b) AC-GT and AGT--
        c) ACCGT and TGCCA
        d) GATT-ACA and TACCATAC
        ```

    ??? tip "Solution"

        ``` python
        import sys

        # get sequences from the command line arguments
        seq1 = sys.argv[1]
        seq2 = sys.argv[2]

        ### reverse the seq2 string and save as seq2_rev

        # initiate variable
        seq2_rev = ""

        # for each letter in seq2
        for i in range(len(seq2)):
            # add the next character to the reversed seq2 string
            seq2_rev += seq2[len(seq2) - i - 1]
            
        # only run the calculation if the sequences have the same length
        if (len(seq1) == len(seq2)):

            # initiate counters
            dist_1_2 = 0
            dist_1_2rev = 0
            # for each letter in the sequences 
            for i in range(len(seq1)): 
                
                # if they don't match, add a distance point 
                if (seq1[i] != seq2[i]):
                    dist_1_2 += 1
                
                # if they don't match, add a distance point 
                if (seq1[i] != seq2_rev[i]):
                    dist_1_2rev += 1

        # if the distance seq1seq2 is less or eq to distance seq1seq2_rev 
        if (dist_1_2 <= dist_1_2rev): 
            # print the seq1seq2 sequences and distance score
            print("Sequence seq1: ", seq1)
            print("Sequence seq2: ", seq2)
            print("Distance between seq1 and seq2: ", dist_1_2)

        # else, if the seq1seq2_rev distance is less than seq1seq2 
        else: 
            # print the seq1seq2_rev sequences and distance score
            print("Sequence seq1: ", seq1)
            print("Sequence seq2_rev: ", seq2_rev)
            print("Distance between seq1 and seq2_rev: ", dist_1_2rev)
            
        # tell the user the lengths differ
        else:
            print("Sequences seq1 and seq2 are of different length.")
        ```
        
        ```
        Sequence seq1: ACGT
        Sequence seq2: A-GT
        Distance between seq1 and seq2: 1

        Sequence seq1: AC-GT
        Sequence seq2: AGT--
        Distance between seq1 and seq2: 4

        # and so on
        ```


## Bonus Exercises


???+ question "assignment 2: Functions"


???+ question "assignment 3: Modules"

