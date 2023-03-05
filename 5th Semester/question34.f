      program surface area and volume of a rectangular box
            w = 5.5
            h = 6.6
            d = 3.7
            s = 2*(w*h + h*d + d*w)
            v = w*h*d
            write(6, 1)"The width of the given box is : ", w, "cm"
            write(6, 1)"The height of the given box is : ", h, "cm"
            write(6, 1)"The depth of the given box is : ", d, "cm"
1           format(a, f3.1, a)            
            write(6, 2)"The surf area of the given box is : ",s," sq.cm"           
            write(6, 2)"The volume of the given box is : ", v, "cm^3"
2           format(a, f7.3, a)            
            stop 
            end