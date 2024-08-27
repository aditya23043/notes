# 15.07.24
## Linear Algebra

### Types of Matrices
1. Square
    - m = n
2. Singular
    - det[A] = 0
3. Non Singular
    - det[A] != 0
4. Diagonal 
    - all elements aij = 0 where i != j
    - Properties
        - diag(x,y,z) + diag(a,b,c) = diag(x+a, y+b, z+c)
        - | diag(x,y,z) | = xyz
        - eigen value of diag(x,y,z) = x,y,z
        - diag(x,y,z)^n = diag(x^n, y^n, z^n)
        - diag(x,y,z)^t = diag(x,y,z)
        - diag(x,y,z)^-1 = diag(x^-1, y^-1, z^-1)
        - diag(x,y,z) * diag(a,b,c) = diag(x*a, y*b, z*c)
5. Scalar
    - all aij are equal where i = j
6. unit / indentity
