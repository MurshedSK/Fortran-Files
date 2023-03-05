      program cartesian to polar
            open (unit = 11, file = "question9.2.in")
            open (unit = 22, file = "question9.2.out")
            write(22, 2)"The conversions of polar cartesian are :"
      do i = 1, 5
            read(11, 1)x, y
1           format(f4.2, f5.2)   
            gamma = sqrt(x**2 + y**2)
            theta = atan(y/x)
            write(22, 2)"gamma = ", gamma, "theta = ", theta
2           format(a, f5.2, 10x, a, f7.2) 
      end do
            stop
            end

