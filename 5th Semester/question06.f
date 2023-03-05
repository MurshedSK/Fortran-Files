      program product of first five positive integers
            n = 1
            nfact = 1 
            do while(n .le. 5)
                  nfact = n*nfact
                  n =  n + 1
            end do
            write(6, 1)"Product of first five +ve integers is :",nfact
1           format(a, i4)            
            stop 
            end