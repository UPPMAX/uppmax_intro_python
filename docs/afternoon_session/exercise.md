

???+ question "Assignment 3 (Bonus): Sequences"

    1. Write a program using your favorite editor that calculates the distance
       between two sequences.

        ``` python
        seq1 = "ACGT"
        seq2 = "AGGT"
        ```

        A simple program (without functions or modules) is sufficient.

        ??? tip "Example solution"
            ``` python
            # define sequences
            seq1 = "ACGT"
            seq2 = "AGGT"

            # initiate counter
            distance_score = 0

            # for each character in the sequences
            for c1, c2 in zip(seq1, seq2):

                # if they don't match, add a distance point
                if c1 != c2:
                    distance_score += 1
                
            # print result to the terminal
            print("Distance between A and B: ", distance_score)
            ```

            ``` bash
            Distance between A and B: 1
            ```
