      program hypotenuose of triangle
            open(unit = 11, file = "question31.in")
            open(unit = 22, file = "question31.out")
            do i = 1, 5 
            read(11, 1)a, b
1           format(2f7.3)
            c = sqrt(a**2 + b**2) 
            write(22, 2)"The sides of the trianle are : a = ",a,"b =",b
2           format(a, f7.3, 3x, a, f7.3)
            write(22, 3)"The hypotenuse of the trianle are : ","c = ",c
3           format(a, 8x, a, f7.3)
            write(22, 2)" "   
            end do
            stop
            end