      program factorial of a given input
            write(6, 1)"Give the input number for the factorial :"
1           format(a)            
            read(5, 2)k
2           format(i10)            
            n = 1
            nfact = 1 
            do while(n .le. k)
                  nfact = n*nfact
                  n =  n + 1
            end do
            write(6, 3)"Factorial of the given input is :", nfact
3           format(a, i10)            
            stop 
            end