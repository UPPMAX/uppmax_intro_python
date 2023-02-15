# Afternoon Session

## Functions

We are now going to introduce functions

* Functions in programming languages are similar to mathematical functions
* In principle, functions are used to avoid repetitions of the same code 
* Functions are code fragments, which can be take one or more arguments and
  can have a return value
* They have a name, a list of arguments and a code block, which does the actual
  work and are defined by the `def` keyword

``` ipython
In [1]: def product(x, y):
   ...:     return x * y

In [2]: product(3, 2)
Out[2]: 6
```

!!! example "Similarity of Sequence"
    
    Let us write a function that calculates some measure of similarity between
    two strings e.g. a DNA sequences such as
    ```
    GATCGTTCG
     || |||  
    CATGGTTGA
    ```
    where the element-wise distance function is given by 

    <center>
    ![alt text](../assets/distance_function.png "Title"){width=35%}
    </center>

    and we want to calculate the sum over sequences $A$ and \(B\) of same length
    $N$.

    $$
    D(A, B) = \sum^N_{i=1} d(A_i, B_i)
    $$

    such that

    ```
    GATCGTTCG
     || |||  
    CATGGTTGA
    100100011    
    ```

    Yielding a total distance of 4. Let's write Python function that solves
    this problem

    ``` python
    def sequence_distance(A, B):
        # Store current distance 
        distance = 0
        
        # Loop over index of A and B
        for i in range(len(A)):
            if A[i] != B[i]:
                distance += 1

        return distance

    A = "GATCGTTCG"
    B = "CATGGTTGA"
    sequence_distance(A, B)
    ```

    Can we improve the function?

    ??? tip
        We require that the sequences are of equal length. We could easily
        verify this by using an `assert` statement

        ``` python
        def sequence_distance(A, B):
            # Assert equal length
            assert len(A) == len(B), "Must be of equal length"
            # Store current distance 
            distance = 0
            
            # Loop over index of A and B
            for i in range(len(A)):
                if A[i] != B[i]:
                    distance += 1

            return distance
        ```

    ??? tip
        Remeber that the `range(len(seq))` is not considered idiomatic Python?
        The way to solve this when having to access elements from two iterables
        is using the `zip` function. Refactoring we get


        ``` python
        def sequence_distance(A, B):
            # Assert equal length
            assert len(A) == len(B), "Must be of equal length"
            # Store current distance 
            distance = 0
            
            # Loop over index of A and B
            for a, b in zip(A, B)
                if a != b:
                    distance += 1

            return distance
        ```

    ??? tip
        If you are like me and hate typing - Python is the perfect language. We
        can write very short and expressive code using *comprehensions*

        ``` python
        def sequence_distance(A, B):
            return sum(a != b for a, b in zip(A, B))
        ```

### Mutability and function returns

By convention a Python either mutates the input arguments or returns something
- not both. It is also possible that function does nothing of the
aforementioned. Let's see an example using a list which is a mutable object


=== "Mutate"
    ``` python
    def my_append(l, new_element):
        """
        Appends new element to list inplace
        """
        l.append(new_element)
    ```
=== "Return"
    ``` python
    def my_append(l, new_element):
        """
        Appends new element to list and returns the new list
        """
        l.append(new_element)
        return l
    ```

=== "Just print"
    ``` python
    def my_append(l, new_element):
        """
        Appends element to a copy of original list and prints it
        """
        tmp = l.copy()
        tmp.append(new_element)
        print(tmp)
    ```











    

    
    

