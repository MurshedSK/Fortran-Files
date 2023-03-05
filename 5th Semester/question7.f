      program product of first nine even integers
            n = 2
            nprod = 1
            do while(n .le. 18)
                  nprod = n*nprod
                  n =  n + 2
            end do
            write(6, 1)"Product of first nine even integers is :",nprod
1           format(a, i10)            
            stop 
            end