<style>
*{
font-family: JuliaMono Light;
}
</style>


# $10/01/2024$

## DSA : CSE102
### Course Details
- cse102-seca@iiitd.ac.in
- Ojaswa Sharma
- ojaswa@iiitd.ac.in
- A-511, Friday 10-11 am
- TF: Harshita Goyal (harshita@iiitd.ac.in)
- Book: Cormen
- Code: qouq4ht

### Evaluation
| Topic      | Distribution |
|------------|--------------|
| Assignment | 10%          |
| Quiz       | 5%           |
| Labs       | 15%          |
| Tutorial   | 5%           |
| Mid sem    | 30%          |
| End sem    | 35%          |
- Grading: Relative

> Bonus Days for Assignments : 2
___

- Data Type
  - short
  - int
  - long
  - float
  - double
  - long double
  - char
  - bool
- Use sizeof() operator to check the size of a data type

```cpp
#include <iostream>

int main(){
  std::cout << sizeof(short) << std::endl;
  return 0;
}
```

*Results:* `2`

---
- Assigning data during execution
  - L values and R values
  - `distance = rate * time;`
  - Lvalue: distance
  - Rvalue: rate * time

---
- Escape Sequences

|sequence|meaning|
|----|---|
| \n | New line |
| \r | Carriage return ( positions the cursor at the begining of a line ) |
| \t | tab |
| \a | bell |
| \\ | "\" character |

---
- Integer divion is useful for parsing through arrays which contain odd numbers of elements
- 1 / 2 / 3.0 / 4
  - one by one calculation 
  - ((1/2)/3.0)/4

---
- Template
```cpp
##include <iostream>

int main(){
  doubleVar = static_cast<double>intVar1 / intVar2;
  return 0;
}
```
___
- Post Increment : `intVar++`
- Pre Increment : `++intVar`
- Use case:
```cpp
do func(intVar++);
```

is same as
```cpp
do func(intVar)
intVar ++;
```
___

- cin/cout/cerr : output gets buffered i.e. doesnt shows on the screen immediately and flushes to the screen only when you explicitly use std::fflush or you give enough data
- ">>" : Extraction Operator

# $12/01/2024$

## Arrays

### 1D array
```cpp
##include <iostream>

int main(){
  int arr[10];
  std::cout << arr << std::endl;
  return 0;
}
```

*Results:* `0x7ffe61db5530`


- Static Allocation: size mentioned at the time of declaration

```cpp
##include <iostream>

int main(){

  int b[] = {1,2,3,4};
  std::cout << b << std::endl;

  for(int i=0; i < sizeof(b)/sizeof(b[0]); i++){
    std::cout << b[i];
  };

  return 0;
}
```

*Results:*
```
0x7fffecc4bc70
1234
```

- For dynamic allocation, assigning along with declaration is necessary

### 2D array
1. for a 512 x 512 array, we make an array of size 512 and then point every element to another 512 arrays
2. 
```cpp
##include <iostream>

int main(){

  int *a[10];

  return 0;
}
```

*Results:*
```
```

- 8-bit mxn = 512x512 for example

```cpp
##include <iostream>

int main(){

  unsigned char img[512*512];

  return 0;
}
```

- i : row
- j : column
- img(i,j)
- how will you access it?

```cpp
##include <iostream>

int main(){

  std::cout << img[ j + 512*i ]

  return 0;
}
```

||||`j`|
|-|-|-|-|
||||\||
||||\|
||||
|`i`|-|-|

### POINTER
- p is declared as pointer to double
`double *p;`
- holds an address

- sets pointer variable p1 to "point to" int var v1

```cpp
##include <iostream>

int main(){

  int *p1 = &v1;

  return 0;
}
```

OR

```cpp
##include <iostream>

int main(){

  int *p1;
  p1 = &v1;

  return 0;
}
```

- Operator "&" determines "address of" the variable

```cpp
##include <iostream>

int main(){

  int *p1, *p2, v1, v2;
  v1 = 10;
  p1 = &v1;
   
  std::cout << v1 << std::endl;
  std::cout << *p1 << std::endl;

  std::cout << "\n";

  v1 = 20;
  std::cout << v1 << std::endl;
  std::cout << *p1 << std::endl;

  std::cout << "\n";

  std::cout << "Address: " << p1 << std::endl;

  return 0;
}
```

*Results:*
```
10
10

20
20

Address: 0x7fff8e8265e4
```
### NEW Keyword
#### Test if null returned by call to new

```cpp
##include <iostream>

int main(){

  int *p;
  p = new int;
  if ( p == NULL ){
    std::cout << "Error: Insufficient Memory" << "\n";
    exit(1);
  }
  std::cout << p[0] << std::endl;

  return 0;
}
```

*Results:* `0`

- "new" is used for dynamic memory allocation from the heap
- Pointer from the heap, not the stack

### Delete Keyword
```cpp
##include <iostream>

int main(){

  int *p;
  p = new int(5);

  // some processing

  delete p;

  return 0;
}
```

*Results:*
```
```
- De-allocates dynamic memory "pointed to by pointer p"
- Destroys memory
- Returns memory to freestore
- When dynamic memory is no longer needed
- Do not use `delete` without using `new`

### Dangling Pointers

- `delete p;`
- Destroys dynamic memory but `p` is still there and is called dangling pointer
- Avoid dangling pointers
- Assign pointer to NULL after delete

```cpp
##include <iostream>

int main(){

  int *p;
  p = new int;

  // some processing

  delete p;
  p = NULL;

  return 0;
}
```

*Results:*
```
```

## Analysis of Algorithm
- The theoretical study of computer program performance and resource usage
- What is more important than performance
  - Modularity
  - Correctness
  - Maintainability
  - Functionality
  - Robustness
  - User-Friendliness
  - Programmer Time
  - Simplicity
  - Extensibility
  - Reliability

- Timing = Profiling

## Problem of Sorting
- Input: sequence <a1, a2, ..., an> of numbers
- Output: permutation <a1', a2', ..., an'> such that a1' <= a2' <= ... <= an'

## Insertion Sort
```
for j : 2 to n
  do key = A[j]
    i = j - 1
    while i > 0 and A[i] > key
      do A[i+1] = A[i]
        i = i - 1
    A[i+1] = key
```
| 8 | `2` | 4   | 9   | 3   | 6
| - | -   | -   | -   | -   | -
| 2 | 8   | `4` | 9   | 3   | 6
| 2 | 4   | 8   | `9` | 3   | 6
| 2 | 4   | 8   | 9   | `3` | 6
| 2 | 3   | 4   | 8   | 9   | `6`
| 2 | 3   | 4   | 6   | 8   | 9

## Kinds of Analysis
- Worst Case (usually)
- Average Case
- Best Case (bogus)

- OpenMp

## $\theta$-notation

$\theta$(g(n)) = {f(n) : there exist +ve constants c1, c2, and n. such that 0 <= c1 g(n) <= f(n) <= c2 g(n)}

# $16/01/2024$

## Recursion

### Fibonacci

- Base Case
- Return

{
  if ( n == 0 || n == 1 ) => return 1;
  return fib( n - 1 ) + fib( n - 2 );
}

## Algorithms

- Helps us understand scalability
- Performance often draws the line between what is feasible and what is impossible
- Performance is the currency of computing
- Algorithmic maths provides a language for talking about program behaviour

___

- Input: Sequence \<a1, a2, ..., an\> of numbers
- Output: Permutation \<a'1, a'2, a'3, ... a'n\> of numbers such that a'1 <= a'2 <= ... <= a'n

___

## Insertion Sort
```pseudocode
func(A,n):
  for j: 2 to n
    key = A[j]
    i = j - 1
    while i > 0 and A[i] > key
      A[i+1] = A[i]
      i = i - 1
    A[i+1] = key
```

| 1      | 2      | ..     | j   | .. | n |
|--------|--------|--------|-----|----|---|
|        |        |        | key |    |   |
| Sorted | Sorted | Sorted |     |    |   |

Starts from 2 (i.e. index 1) and goes to the right making sure everything before the key is sorted

## Running Time

- The running time depends on the input: an already sorted sequence is easier to sort
- Generally, we seek the upper bounds on the running time, because everybody likes a guarantee

## Analysis
- Worst Case (usually)
  - T(n) = max time of algo on any input of size n

- Avg Case (sometime)
  - T(n) = expected time of algo over all input of size n
  - Need assumptions of statistical distribution of inputs

- Best Case (bogus)
  - Cheat with a slow algo that works fast on some input
  - Lower Bound of performance of your program

- What is Insertion sort's worst case time?
  - It depends on the speed of our computer
    - relative speed: on the same machine
    - absolute speed: on diff machines

- Big Idea
  - Ignore machine dependent constants
  - Look at growth of $T(n)$ as $\lim_{n\to \infty}$

$$T(n) = an^3 + bn^2 + cn + d$$

- a, b, c, d is the machine dependent constants
- Asymptotic Analysis : $T(n)$ in the limit $\lim_{n\to \infty}$
- Highest Degree

$$T(n) = \theta(n^3)$$

- When n gets large enough, a $\theta(n^2)$ algo always beats $\theta(n^3)$ algo
$$f(n) = n^2$$
$$g(n) = n^3$$
$$f(0.5) = \frac{1}{4}$$
$$g(0.5) = \frac{1}{8}$$
$$f(0.5) > g(0.5)$$
$$f(n) > g(n)$$

## Insertion Sort Analysis

- Worst Case: Input reverse sorted

$$T(n) = \sum_{j=2}^{n}\theta(j) = \theta(n^2)$$
> arithmetic series

- Avg Case: All permutations equally likely

$$T(n) = \sum_{j=2}^{n}\theta(\frac{j}{2}) = \theta(n^2)$$

- Insertion sort is moderately fast for a small $n$ but not at all for a large $n$
- Heap Sort and Merge Sort are one of the fastest algos with $n \log_{e}n$

## Merge Sort

- If n = 1 : done > $\theta(1)$
- Recursively sort A [ 1 .. ($\frac{n}{2}$) ] and A [ ($\frac{n}{2}$)+1 .. $n$ ] > $2T(\frac{n}{2})$
- Merge the 2 sorted lists > $\theta(n)$

- Time : $\theta(n)$ to merge a total of n elements (linear)
- Note: $2T(\frac{n}{2})$ should be $T(\frac{n}{2})$ + $T(\frac{n}{2})$, but it turns out not to matter asymptomatically

$$T(n) = \begin{cases}
\theta(1) && n = 1\\
T(\frac{n}{2}) + \theta(n) && n > 1
\end{cases}$$

### Recursion Tree
- Solve $T(n) = 2T(\frac{n}{2}) + cn$, where $c \gt 0$ is constant 

|             |             | cn          |             |             |
|-------------|-------------|-------------|-------------|-------------|
|             | cn/2        |             | cn/2        |             |
| T(n/4)      | T(n/4)      |             | T(n/4)      | T(n/4)      |
| ..          | ..          | ..          | ..          | ..          |
| $\theta(1)$ | $\theta(1)$ | $\theta(1)$ | $\theta(1)$ | $\theta(1)$ |

- Height of the tree is > $h = \log_{}n$
- At each level, we have $cn$, so Total > $\theta (n \log_{}n)$

# $23/01/2024$

### Asymptotic Upper Bound : Big $O$ Notation
- Big O notation
$$f(n) = O(g(n))$$ 
$$O(g(n)) = { f(x) : \exists constants : c > 0, n_o > 0 }$$
$$such that 0 <= f(n) <= c.g(n) : \forall n >= n_o$$
- Symbolically
$f(n) < g(n)$
- Example: $2n^2 = O(n^3)$
- $c = 1, n_o = 2$

### Asymptotic Lower Bound : $\Omega$ Notation
- Omega Notation
$$f(n) = \Omega(g(n)) = \{ f(n) : \exists constants : c > 0, n_o > 0 \}$$ 
$$such that 0 <= c.g(n) <= f(n) : \forall n >= n_o$$
- Symbolically
$f(n) > g(n)$
- Example: $\sqrt n = \Omega(\log{}n)$
- $c = 1, n_o = 16$

### Asymptotic Tight Bound : $\theta$ Notation
- Theta Notation
 
- $f(n) = \theta(g(n))\\$
- $\theta(g(n)) = O(g(n)) \cap \Omega(g(n))$
- $\theta(g(n)) = { f(n) : \exists constants : c1, c2, n_o > 0 such that 0 <= c1.g(n) <= f(n) <= c2.g(n) : \forall n > n_o }$
- Example: $\frac{1}{2}n^2 - 2n = \theta(n^2)$

### $o$-notation and $\omega$-notation
- O-notation and $\Omega$-notation are like <= and >=
- o-notation and $\omega$-notation are like < and >
- => they are more tighter

## Solving Recurrence Relations
1. Substitution Method 
2. Recurstion Tree Method
3. Master Method

### Substitution Method
1. Guess the form of the solution
2. Verify by induction
3. Solve for constants
- In induction, you prove it for $k$ and $k+1$

- Example: $T(n) = 4T(\frac{n}{2}) + n$
- Assume that $T(1) = \theta(1)$
- Guess $O(n^3)$ ( prove $O$ and $\theta$ separately )
- Assume that $T(k) <= ck^3$ for $k<n$
- Prove $T(n) <= cn^3$ by induction

$
T(n) = 4T(\frac{n}{2}) + n\\
T(n) <= 4c(\frac{n}{2})^3 + n\\
T(n) = (\frac{c}{2})n^3 + n\\
T(n) = cn^3 - ((\frac{c}{2})n^3 - n) : desired - residual\\
T(n) <= cn^3 : desired
$

whenever $(\frac{c}{2})n^3 - n >= 0$ for example if $c>=2$ and $n>=1$

- Better/Tighter Upper Bound? : $T(n) = O(n^2)$
- Assume : $T(k) <= ck^2$ $\forall k < n\\$
$
T(n) = 4T(\frac{n}{2}) + n\\
T(n) <= 4c(\frac{n}{2})^2 + n\\
T(n) = cn^2 + n\\
T(n) = O(n^2)
$
: WRONG STEP

- Idea: Strengthen the inductive hypothesis
- Subtract a low-order term
- Inductive hypothesis : $T(k) <= c_1k^2 - c_2k$ for $k<n\\$
$
T(n) = 4T(n/2) + n\\
T(n) = 4(c_1(n/2)^2 - c_2(n/2)) + n\\
T(n) = c_1n^2 - 2c_2n + n\\
T(n) = c_1n^2 - c_2n - (c_2n-n)\\
T(n) <= c_1n^2 - c_2n\\
\\$
: if $c_2 >= 1\\$
Pick $c_1$ big enough to handle the inital condition

# $31/01/2024$

## Sorting Algos covered already
- Insertion Sort
- Merge Sort

## Linear Search
- Parsing through an array to find a certain element
- Input: Given a sequence of n numbers
- $A$ = $< a_1, a_2, ..., a_n >$ and a value $v$
- Output: An index i such that $v = A[i]$ or the special value NIL if v does not apppear in A
```
i = nil
for j = 1 to A.length do
  if A[j] == v then
    i <- j
    return i
  end
end
return i
```

- Complexity: $O(n)$

## Binary Search
- Better if given a sorted array

## Selection Sort
- Sort n numbers by iteratively selecting the minimum in the sub-array and swapping with the first element of sub-array
- Example: In the first iteration: find min of A[1..n] and swap with A[1]
- In the $k^{th}$ iteration: find min of A[1..k] and swap with A[k]
```
for i=1 to n-1 do
  min = i
  for j = i+1 to n do
    // find the index of the i th smallest element
    if A[j] < A[min] then
      min = j
    end
  end
  swap A[min] with A[i]
end
```
- Loop Invariant: Left most part of the array upto index i is always sorted
- At each iteration i of the algo, the sub-array A[1...(i-1)] contains (i-1) smallest elements of A in increasing order 

### Running Time
- Worst Case : $\theta(n^2)$
- Best Case : $\theta(n^2)$
- $T(n) = \sum_{i=1}^{n-1}(n-i)$
- $T(n) = \frac{n(n-1)}{2}$
- therefore $T(n) = O(n^2)$

## Bubble Sort
- Popular but not so efficient
- Repeatedly swapping adjacent elements that are out of order
```
for i=1 to (A.length-1)
  for j = A.length down to (i+1)
    if A[j] < A[j-1]
      swap A[j] with A[j-1]
    end
  end
end
```
- Loop Invariant: At the start of each iteration (outermost) the sub-array A[i...(i-1)] contains (i-1) smallest elements in sorted order

### Running TIme
- Worst Case : $\theta(n^2)$
- Best Case : $\theta(n^2)$

## Divide and Conquer Design Paradigm
1. ___Divide___ the problem (instance) into sub-problems
2. ___Conquer___ the sub-problems by solving them recursively
3. ___Combine___ sub-problem solutions

### Merge Sort
1. Divide: Trivial
2. Conquer: Recursively sort 2 sub-array
3. Combine: Linear time merge

$T(n) = 2T(\frac{n}{2}) + \theta(n)$
- 2 sub-problems of 1/2 the size
- $\theta(n)$ : work dividing and combining

### Master Theorem
$T(n) = aT(\frac{n}{b}) + f(n)$

- ___Case 1___: $f(n) = O(n^{log_{b}a - \xi})$, constant $\xi > 0$
- $T(n) = \theta(n^{log_{b}a})$
- ___Case 2___: $f(n) = O(n^{log_{b}a}log^{k}n$), constant $k >= 0$
- $T(n) = \theta(n^{log_{b}a}log^{k+1}n$)$
- ___Case 3:___ $f(n) = \Omega(n^{log_{b}a + \xi})$ for some constant $\xi > 0$
- $T(n) = \theta(f(n))$
 
### Binary Search
1. Divide: Check middle element
2. Conquer: Recursively search 1 sub-array
3. Combine: Trivial

- Recurrence : $T(n) = 1T(\frac{n}{2}) + \theta(1)$
- 1 Subproblem of half the size
- $T(n) = \theta(log_{}n)$

## Powering a number
- Problem: Compute $a^n$, where n $\in$ N
- Naive Algo: $\theta(n)$
- Divide and Conquer algo:

$
a^n = 
\begin{cases}
a^{\frac{n}{2}} . a^{\frac{n}{2}} & n : even\\
a^{\frac{n-1}{2}} . a^{\frac{n-1}{2}} . a& n : odd
\end{cases}
$

## Fibonacci Numbers

$
F_n =
\begin{cases}
0 & n=0\\
1 & n=1\\
F_{n-1} + F_{n-2} & n>=2
\end{cases}
$

0 1 1 2 3 5 8 13 21 34 ..

- Naive Recursive Algo: $\Omega(\phi^n)$
- where $\phi = \frac{(1+\sqrt5)}{2}$ is the ___golden ratio___

### Golden Ration
- Given two numbers a, b such that $a>b>0$ then a and b are in golden ratio if
$$\frac{a+b}{a} = \frac{a}{b} = \phi$$
$$1 + \frac{b}{a} = \frac{a}{b}$$
$$1+\frac{1}{\phi} = \phi$$
$$\phi+1=\phi^2$$
$$\phi^2 - \phi - 1 = 0$$
$$\therefore \phi = \frac{(1+\sqrt5)}{2}$$

### Bottom-up
- Compute $F_0, F_1, F_2, ..., F_n$ in order, forming each number by summing the two previous
- Running Time: $\theta(n)$

### Naive Recursive Squaring
$$F_n = \frac{\phi^n}{\sqrt5}$$
- rounded to the nearest integer
- Recursive Squaring : $\theta(log{}n)$ time
- This method is unreliable, since floating point arithmetic is prone to round off errors

### Recursive Squaring
- Theorem:

$$
\left[
\begin{array}{cc}
F_{n+1} & F_n\\
F_n & F_{n+1}\\
\end{array}
\right]
=
\left[
\begin{array}{cc}
1 & 1\\
1 & 0\\
\end{array}
\right]^n
=
\begin{cases}
M^{\frac{n}{2}} . M^{\frac{n}{2}} & n : even\\
M^{\frac{n-1}{2}} . M^{\frac{n-1}{2}} . a& n : odd
\end{cases}
$$

$$
\left[
\begin{array}{cc}
1 & 1\\
1 & 0\\
\end{array}
\right]^n
=
M^n
$$
- Algorithm : $\theta(log{}n)$

# $02/02/2024$

- Recursive Squaring
- Inductive Step ( n >= 2 )$\\$
$
\left[
\begin{array}{cc}
F_{n+1} & F_n\\
F_n & F_{n-1}\\
\end{array}
\right]
=
\left[
\begin{array}{cc}
F_{n} & F_{n-1}\\
F_{n-1} & F_{n-2}\\
\end{array}
\right]
.
\left[
\begin{array}{cc}
1 & 1\\
1 & 0\\
\end{array}
\right]\\
$
$
=
\left[
\begin{array}{cc}
1 & 1\\
1 & 0\\
\end{array}
\right]^{n-1}
.
\left[
\begin{array}{cc}
1 & 1\\
1 & 0\\
\end{array}
\right]\\
$
$
=
\left[
\begin{array}{cc}
1 & 1\\
1 & 0\\
\end{array}
\right]^n\\
$

## Tower of Hanoi

- Time Complexity: $2^n-1 = >O(2^n)$
- Recurrence: $T(n) = 2T(n-1) + 1$

| # disks | # steps |
|---------|---------|
| n = 1   | 1       |
| n = 2   | 3       |
| n = 3   | 7       |
| ...     | .       |
| n = k   | $2^k-1$ |

- General Idea : Move $(n-1)$ disks to aux; move $n^{th}$ disk to dest; move $(n-1)$ disks from aux to dest

### Substitution Method
$
T(n) = 2T(n-1) + 1\\
T(n) = 2(2T(n-2)+1)+1\\
T(n) = 2(2(2T(n-3)+1)+1)+1
T(n) = ...\\
T(n) = 2^{n-1} + ... + 2 + 1\\
T(n) = \frac{2^n-1}{2-1} = 2^n-1 = O(2^n)
$

## Matrix Multiplication Algo

```
for i <- 1 to n
  do for j <- 1 to n
    do c_ij <- 0
      for k <- 1 to n
        do c_ij = c_ij + a_ik . b_kj
```

- Time Complexity = $\theta(n^3)$

$8T(n/2) + \theta(n^2)

# $07/02/2024$

## Quick Sort

- Divide: Partition the array into two sub arrays around a pivot x such that elements in lower sub array $<= x <=$ elements in upper sub array
- Conquer: Recursively sort the two sub arrays
- Combine: Trivial
- Key: Linear time partitioning sub routine

### Pseudo Code
```
// A[p..q]
partition(A,p,q):
  x <- A[p]
  i <- p
  for j <- p + 1 to q
    do if A[j] <= x
      then i <- i + 1
        exchange A[i+1] <-> A[j]
  exchange A[p] <-> A[i]
  return i
```
- 
- i is the index of the pivot

```
quicksort(A,p,r)
  if p < r
    then q <- parition(A,p,r)
      quicksort(A,p,q-1)
      quicksort(A,q+1,r)
```

- Initial Call: `quicksort(A,1,n)`
- Running Time: O(n)
- Loop Invariant : p -> i is always <= x and i -> j is always >= x
- Worst Case of quicksort : 
  - Input sorted or reverse sorted
  - Partition around min or max element
  - one side of partition always has no elements

$\\T(n) = T(0) + T(n-1) + \theta(n)\\$
$= \theta(1) + T(n-1) + \theta(n)\\$
$= T(n-1) + \theta(n)\\$
$= \theta(n^2)$

### Best Case Analysis ~= Avg case
- Partition split the array evenly
$
T(n) = 2T(\frac{n}{2}) + \theta(n) = \theta(nlog_{}n)
$

# $09/02/2024$
## Data Structures > Stacks, Queues, Linked Lists
### Dynamic Sets: 
- Sets that change over time
- Operations: 
  - Search
  - Insert
  - Remove
  - etc.
### Stacks
- A dynamic set that implements LIFO ( last in, first out ) scheme
- Insert operation is called PUSH
- Delete operation is called POP
- Underflow / Overflow

#### Array based implementation
- A stack of "n" elements with an array $S[1..n]$
- Attributes: S.top : Index of most recently pushed element
- S[1] holds the bottom of the stack
- if S.top = 0, then the stack is empty
- "Underflows" when popping from empty stack
- "overflow" when S.top exceeds n

```
Stack-Empty(S):
  if S.top == 0
    return True
  else
    return false

Push(S,x):
  S.top = S.top + 1
  S[S.top] = x

Pop(S):
  if Stack-Empty(S)
    return "Underflow!"
  else
    S.top = S.top - 1
    return S[S.top + 1]
```
- Note: You should check for overflow in the Push Function
- Order : constant
- T(n) = O(1)

### Queues
- A dynamic set that implements FIFO ( first in, first out ) policy
- Insert operation is called Enqueue ( happens at the tail )
- Delete operation is called Dequeue ( happens at the head )
#### An array based implementation
- A queue of at most $n-1$ elements using $Q[1..n]$
- Attributes : 
  - Q.head : location of dequeue
  - Q.tail : next location of enqueue
- Elements in Q are between Q.head and Q.tail - 1
- "Wrap around" the array in a circular manner, so 1 follows $n$
- Queue is empty when Q.head == Q.tail

![Circular Queue Representation](/home/adi/Documents/college/sem_2/dsa/lectures/Circular_queue_representation.avif)

- Queue is empty when Q.head == Q.tail
- Queue is full when Q.head == Q.tail + 1 ( this is used for overflow )
- Initially, Q.head = Q.tail = 1

```
Assume n = Q.length

Enqueue(Q,x):
  Q[Q.tail] = x
  if Q.tail == Q.length
    Q.tail <- 1
    // Wrap around and update
  else
    Q.tail = Q.tail + 1
    // update

Dequeue(Q):
  x = Q[Q.head]
  if Q.head == Q.length
    Q.head = 1
    // wrap around and increment
  else  
    Q.head = Q.head + 1
  return x
```
Note: Check for underflow / overflow
- Elemets will be filled from head to (tail - 1)

### Linked Lists
- A data structure where objects are arranged in a linear order
- The order is determined by pointers
- Previous of the first element is nil and the "next" of the last element is nil
- Doubly Linked List:

![Doubly Linked Lists](/home/adi/Documents/college/sem_2/dsa/lectures/doubly_linked_list_representation.jpg)

- Attributes of an element x
  - x.next : points to successor
  - x.prev : points to predecessor
  - key : data
    - Numbers
    - Some satellite data ( it's a pointer )
- head : `if x.prev == nil` => No predecessor
- tail : `if x.next == nil` => No successor
- Denoting the linked list by L
  - L.head : points to first object
  - L.tail : points to last object

#### Searching A Linked List
- Find the first instance of a key K in L and return nil if not found
```
List-Search(L,k):
  x = L.head
  while x != nil and x.key != k:
    x <- x.next
  return x
```
- Time Complexity: $\theta(n)$

#### Inserting into the linked list
- Splice element x ( whose key has been set ) onto the front of L ( head )
```
List-Insert(L,x):
  x.next <- L.head
  if L.head != nil
    L.head.prev = x
  L.head = x
  x.prev = nil
```
#### Deleting an element from a linked list
- Remove an element x from L
- first call List-Search to identify x in L for a given key
```
List-Delete(L,x):
  if x.prev != nil
    x.prev.next <- x.next
  else
    L.head <- x.next
  if x.next != nil
    x.next.prev <- x.prev
```

# $13/03/2024$
## BST
- For Binary Search Trees,
    - Root nodes have p pointer = NULL
    - Leaf nodes have their left and right nodes set to NULL
- The left child has value less than the parent
- The right child has value more than the parent

| P     | Parent |
|-------|--------|
| key   | value |
| left  | child |
| right | child |

```cpp
struct Node{
    int key;
    Node *left;
    Node *right;
    Node *P;
}
```
### Querying a BST

# $20/03/2024$
## Insertion in BST
- Causes the dynamic set to be modified
- The tree needs to be modified such that the BST property continues to hold true
- Input: a BST Node `Z` for which Z key has been set and `Z.left = NIL`, `Z.right = NIL`
```cpp
Tree-Insert(T,z):
    x = T.root // node being compared with z.key
    y = NIL // parent of z
    while x != NIL:
        y = x
        z.key < x.key ? x = x.left : x = x.right
    z.p = y // p is the parent
    if y == NIL: // when tree is empty
        T.root = z
    else if z.key < y.key:
        y.left = z
    else:
        y.right = z
```
- Time complexity : O(h)
    - Where h is the height of the tree
    - i.e. o($n \log_{}n$)
