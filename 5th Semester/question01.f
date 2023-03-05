      program area of triangle
            a = 10
            b = 12
            c = 14
            s = (a+b+c)/2
            area = sqrt(s*(s-a)*(s-b)*(s-c))
            write(6, 1)"The area of the triangle is :", area, "cm^2"
1           format(a, f5.2, 1x, a)            
            stop 
            end