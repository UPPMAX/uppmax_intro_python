# Exercise

## Assignment 1: similarity of sequences

In this exercise you will write a program that calculates the distance
between two sequences, e.g:

```python
seq1 = "ACGT"
seq2 = "AGGT"
```

A simple program (without functions or modules) is sufficient.

??? tip "Solution"

    ```python
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

### Assignment 1.1: Calculate the distance

**Calculate the distance between the following sequences and print out
the result.** Since the following sequences are already aligned, we
can calculate the distance between them.
Change your program so that it can
read two aligned sequences from the command line.
Test your program with the
following sequences.

```text
a) ACGT and A-GT
b) AC-GT and AGT--
c) AC-CGT and AGT---
d) ACCGT and TGCCA
e) GATT-ACA and TACCATAC
f) --GA--TT--AC-A and TA--CC--AT--CA
```

???- tip "Solution"

    ```python
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

    Screen output:

    ```text
    Distance between seq1 and seq2: 1
    Distance between seq1 and seq2: 4
    Distance between seq1 and seq2: 5
    Distance between seq1 and seq2: 4
    Distance between seq1 and seq2: 7
    Distance between seq1 and seq2: 13
    ```

### Assignment 1.2: print aligned sequences

**Extend the program that the aligned sequences are printed out
additionally to their distance.**

???- tip "Solution"

    ```python
    print("Sequence seq1: ", seq1)
    print("Sequence seq2: ", seq2)
    print("Distance between seq1 and seq2: ", distance_score)
    ```

    Screen output:

    ```
    Sequence seq1: ACGT
    Sequence seq2: A-GT
    Distance between seq1 and seq2: 1

    Sequence seq1: AC-GT
    Sequence seq2: AGT--
    Distance between seq1 and seq2: 4
    ```

### Assignment 1.3

**Extend the program that the distance between two sequences is only
calculated when both sequences have the same length.** Test your program
with the input sequences:

```text
a) ACGT and AGT
b) ACCGT and TGCCA
```

**Note**: *Here you can use either the `assert` keyword or an `if`
clause. You could also raise a custom exception using `try-except`.*

??? tip "Solution"

    ```python
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

## Assignment 1.4

**Extend the program that the second sequence is inverted
and assigned to a
third sequence.** Please, read the first and second sequence from
the command
line. Calculate the distances between the first and the second and
between the
first and the third sequence.

Compare the distance between the first and the second and the first
and the
third sequence and print the alignment with the smaller distance.
If the
distances are equal, then print the alignment of the first
and second sequence.

Test your program with the following sequences:

```text
a) ACGT and A-GT
b) AC-GT and AGT--
c) ACCGT and TGCCA
d) GATT-ACA and TACCATAC
```

??? tip "Solution"

    ```python
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

    Screen output:

    ```text
    Sequence seq1: ACGT
    Sequence seq2: A-GT
    Distance between seq1 and seq2: 1

    Sequence seq1: AC-GT
    Sequence seq2: AGT--
    Distance between seq1 and seq2: 4

    # and so on
    ```

## Assignment 2: Functions

### Assignment 2.1

Open an editor and save your new program. In this program we will create
a few functions.

### Assignment 2.2

Define two functions `similarity` and `distance`:

<!-- markdownlint-disable MD013 --><!-- Verbatim text cannot be split up over lines, hence will break 80 characters per line -->

```latex
\text{similarity}(a, b)=\left\{\begin{array}{rll}
1, & \text { if } & a=b \\
0.5, & \text { if } & a \neq b, \mathrm{a} \text { and } \mathrm{b} \text { are both purines or pyrimidines } \\
0, & \text { if } & a \neq b, \mathrm{a} \text { and } \mathrm{b} \text { are not the same kind }
\end{array}\right.
```

And:

```latex
\operatorname{distance}(a, b)=\left\{\begin{array}{rll}
0, & \text { if } \quad a=b \\
0.5, & \text { if } \quad a \neq b, \text { a and } \mathrm{b} \text { are both purines or pyrimidines } \\
1, & \text { if } \quad a \neq b, \mathrm{a} \text { and } \mathrm{b} \text { are not the same kind }
\end{array}\right.
```

**Note:** Purines are A and G, pyrimidines are C and T.

??? tip "Solution"

    ```python title="functions.py"
    # define which bases are purines and pyrimidines
    pur = ["A", "G"]
    pyr = ["C", "T"]

    # define the similarity function for two single bases
    def similarity(base1, base2):

        # if they match, return 1
        if (base1 == base2):
            return 1

        # else,if they dont match but are of the same kind
        elif (((base1 in pur) and (base2 in pur)) or ((base1 in pyr) and (base2 in pyr))):
            return 0.5

        # if they neither matches or are of the same kind, return 0
        else:
            return 0

    # define the distance function for two single bases
    def distance(base1, base2):

        # if they match, return 0
        if (base1 == base2):
            return 0

        # else,if they dont match but are of the same kind
        elif (((base1 in pur) and (base2 in pur)) or ((base1 in pyr) and (base2 in pyr))):
            return 0.5

        # if they neither matches or are of the same kind, return 1
        else:
            return 1
    ```

### Assignment 2.3

Write two functions `sequence_similarity` and `sequence_distance`, which
calculates the similarity and distance of two whole sequences.

??? tip "Solution"

    ```python title="functions.py"
    # define the similarity function for whole sequences
    def sequence_similarity (seq1, seq2):

        # initiate counter
        similarity_score = 0.0

        # go through all bases in seq1
        for i in range(len(seq1)):

            # calculate their similarity and add to the score
            similarity_score = similarity_score + similarity(seq1[i], seq2[i])

        # return the final score
        return similarity_score


    # define the distance function for whole sequences
    def sequence_distance(seq1, seq2):

        # initiate counter
        distance_score = 0.0

        # go through all bases in seq1
        for i in range(len(seq1)):

            # calculate the distance and add to the score
            distance_score = distance_score + distance(seq1[i], seq2[i])

        # return the final score
        return distance_score
    ```

### Assignment 2.4

**Calculate the similarity and distance for the following sequences.**
Read these sequences from the command line and print out their
similarity and distance.

```text
a) ACGT and TGCA
b) ATAG and ACAC
c) ACGC and ATTT
d) AGTT and ACTT
e) TCGC and AGAG
```

??? tip "Solution"

    ```python title="main.py"
    import sys

    ### Paste here the code for the functions you wrote in 1.2 and 1.3 ###

    # read the sequences from command line arguments
    seq1 = sys.argv[1]
    seq2 = sys.argv[2]

    # print the similarity and distance
    print("Similarity: ", sequence_similarity(seq1, seq2))
    print("Distance: ", sequence_distance(seq1, seq2))
    ```

    Screen output:

    ```text
    Similarity: 0.0
    Distance: 4.0

    Similarity: 2.5
    Distance: 1.5

    # and so on
    ```


## Assignment 3

In this exercise we will write three different programs.

### Assignment 3.1

**Write a new Python file (module) called `sequence_tools.py` which
contain both the two functions `similarity` and `distance` as defined
previously.**

??? tip "Solution"

    ```python title="sequence_tools.py"
    #########################
    ### sequence_tools.py ###
    #########################

    # define which bases are purines and pyrimidines
    pur = ["A", "G"]
    pyr = ["C", "T"]

    # define the similarity function for two single bases
    def similarity(base1, base2):
        # if they match, return 1
        if (base1 == base2):
            return 1
        # else,if they dont match but are of the same kind
        elif (((base1 in pur) and (base2 in pur)) or ((base1 in pyr) and (base2 in pyr)))
            return 0.5
        # if they neither matches or are of the same kind, return 0
        else:
            return 0

    # define the distance function for two single bases
    def distance(base1, base2):
        # if they match, return 0
        if (base1 == base2):
            return 0
        # else,if they dont match but are of the same kind
        elif (((base1 in pur) and (base2 in pur)) or ((base1 in pyr) and (base2 in pyr)))
            return 0.5
        # if they neither matches or are of the same kind, return 1
        else:
            return 1

    # define the similarity function for whole sequences
    def sequence_similarity (seq1, seq2):
        # initiate counter
        similarity_score = 0.0
        # go through all bases in seq1
        for i in range(len(seq1)):
            # calculate their similarity and add to the score
            similarity_score = similarity_score + similarity(seq1[i], seq2[i])
        # return the final score
        return similarity_score


    # define the distance function for whole sequences
    def sequence_distance(seq1, seq2):
        # initiate counter
        distance_score = 0.0
        # go through all bases in seq1
        for i in range(len(seq1)):
            # calculate the distance and add to the score
            distance_score = distance_score + distance(seq1[i], seq2[i])
        # return the final score
        return distance_score
    ```

### Assignment 3.2

**Write another Python file that calculates for each combination of two
sequences stored in list `seq_list` the similarity and distance using the
module defined previously.**

```python
l = ["ATCCGGT", "GCGTTAC", "CTACTGC", "TTGCAGT", "AGTCACC"]
```

??? tip "Solution"

    ```python title="main.py"
    from sequence_tools import *

    # define sequences
    seq_list = ["ATCCGGT", "GCGTTAC", "CTACTGC", "TTGCAGT", "AGTCACC"]

    # loop over each sequence in seq_list
    for i in range(len(seq_list)):

        # loop over the remaining sequences in seq_list
        for j in range(i+1, len(seq_list)):

            # calculate the similarity and distance
            similarity_score = sequence_similarity(seq_list[i], seq_list[j])
            distance_score = sequence_distance(seq_list[i], seq_list[j])

            # print the result for this comparison
            print(seq_list[i], seq_list[j], " Similarity: ", similarity_score, " Distance: ", distance_score)
    ```

    With output:

    ```text
    ATCCGGT GCGTTAC Similarity: 2.5 Distance: 4.5
    ATCCGGT CTACTGC Similarity: 3.5 Distance: 3.5
    ATCCGGT TTGCAGT Similarity: 4.5 Distance: 2.5
    ATCCGGT AGTCACC Similarity: 3.5 Distance: 3.5
    GCGTTAC CTACTGC Similarity: 4.0 Distance: 3.0
    GCGTTAC TTGCAGT Similarity: 3.0 Distance: 4.0
    GCGTTAC AGTCACC Similarity: 2.0 Distance: 5.0
    CTACTGC TTGCAGT Similarity: 4.5 Distance: 2.5
    CTACTGC AGTCACC Similarity: 2.0 Distance: 5.0
    TTGCAGT AGTCACC Similarity: 2.5 Distance: 4.5
    ```

### Assignment 3.3

**Extend your program. Determine the combination of sequences with the
highest similarity of all sequences stored in list l. Write these two
sequences and the alignment into a new file, called `similar_sequences.txt`.**

For example for two given sequences: `ATC` and `ACC` The alignment would be:

```text
ATC
| |
ACC
```

And this alignment should be written to a new output file. **Hint:** A
line-break in Python can be made by adding ’\n’ to the end of the line.

??? tip "Solution"

    ```python title="main.py"
    from sequence_tools import *

    # define sequences
    seq_list = ["ATCCGGT", "GCGTTAC", "CTACTGC", "TTGCAGT", "AGTCACC"]

    # define variables
    similarity_highscore = 0
    best_seq1 = ""
    best_seq2 = ""

    # loop over each sequence in seq_list
    for i in range(len(seq_list)):

        # compare the sequence to all remaining sequences in seq_list
        for j in range(i+1, len(seq_list)):

            # calculate the similarity
            similarity_score = sequence_similarity(seq_list[i], seq_list[j])

            # check if it's a new similarity highscore
            if (similarity_score > similarity_highscore):

                # if it is, save this as the new highscore
                similarity_highscore = similarity_score
                best_seq1 = seq_list[i]
                best_seq2 = seq_list[j]

    # create an empty string to add the alignment to
    alignment_matches = ""

    # go through each letter the best aligned pair
    for i in range(len(best_seq1)):

        # find places where they match
        if (best_seq1[i] == best_seq2[i]):
            alignment_matches = alignment_matches + "|"
        # and places they don't match
        else:
            alignment_matches = alignment_matches + " "

    # write the sequences and the match symbols to file
    outfile = open("similar_sequences.txt", "w")
    outfile.write(best_seq1 + "\n")
    outfile.write(alignment_matches + "\n")
    outfile.write(best_seq2 + "\n")
    ```

    Screen output:

    ```text
    ATCCGGT
    | | ||
    TTGCAGT
    ```

<!-- markdownlint-enable MD013 -->
