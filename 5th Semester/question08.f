      program parametric equation
            open(unit = 11, file = "question8.in")
            open(unit = 22, file = "question8.out")
            do i = 1, 10
                  read(11, 1)t
1                 format(f6.4)
                  if (0 .lt. 1) then
                        x = t**3 - 8*t + 4
                        y = sin(t) + cos(2*t)
                        z = exp(3*t + 1)
                  end if
                  write(22, 2)"The value of x is :", x
                  write(22, 2)"The value of y is :", y
                  write(22, 2)"The value of z is :", z
2                 format(a, f7.3) 
            end do 
            stop 
            end
            
