      program quotient and remainder
            write(6, 1)"Input the value of I"
1           format(a)            
            read(5, 2)I
2           format(i10)
            write(6, 3)"Input the value of J"
3           format(a)
            read(5, 4)J
4           format(i10)
            Q = I/J
            R = mod(I, J)
            write(6, 5)"The evaluated quotient is :", Q
5           format(a, f9.3)            
            write(6, 6)"The evaluated remainder is :", R
6           format(a, f9.3)            
            stop 
            end
            
