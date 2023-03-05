      program polar to cartesian
            open (unit = 11, file = "question9.1.in")
            open (unit = 22, file = "question9.1.out")
            write(22, 2)"The conversions of cartesian from polar are :"
           do i = 1, 5
            read(11, 1)gamma, theta
1           format(f5.2, f7.2)   
            theta = theta*acos(-1.0)/180.0
            theta = theta - ifix(theta/360.0)*360
            x = gamma*cos(theta)
            y = gamma*sin(theta)
            write(22, 2)"x = ", x, "y = ", y
2           format(a, f5.2, 26x, a, f7.2) 
           end do
            stop
            end

