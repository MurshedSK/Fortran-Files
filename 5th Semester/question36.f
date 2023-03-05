      program roots of quadratic equations
            open(unit = 11, file = "question36.in")
            open(unit = 22, file = "question36.out")
      do i = 1, 3
                  read(11, 1)a, b, c
1                 format(3f4.1)                  
                  d = b**2 - 4*a*c
                  if (d .lt. 0) then
                        real = (-b)/(2*a)
                        comp1 = sqrt(abs(d))/(2*a)
                        comp2 = -sqrt(abs(d))/(2*a)
                        write(22, 2)"The roots of the equation are :"
2                       format(a) 
                        write(22, 3)"root1 = ", real, "+(", comp1, ")i"
                        write(22, 3)"root2 = ", real, "+(", comp2, ")i"
3                        format(a, f8.5, 1x, a, f8.5, a)
                  elseif(d .ge. 0) then
                        real1 = (-b + sqrt(d))/(2*a)
                        real2 = (-b - sqrt(d))/(2*a)
                        write(22, 4)"The roots of the equation are :"
4                       format(a)
                        write(22, 5)"root1 = ", real1
                        write(22, 5)"root2 = ", real2
5                       format(a, f9.5)                        
                  end if
                  write(22, 6)" "
6                 format(a)                  
            end do 
            stop 
            end                     
                        