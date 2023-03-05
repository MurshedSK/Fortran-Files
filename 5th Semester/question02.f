      program area of circle
          parameter(pi = 3.1415926)  
          r = 5.0
          area = pi*r**2
          write(6, 1)"The area of the circle is :", area, "cm^2"
1         format(a, f5.2, 1x, a)          
          stop 
          end