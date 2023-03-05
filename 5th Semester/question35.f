      program temperature conversion
            open(unit = 11, file = "question35.in")
            open(unit = 22, file = "question35.out")
      do i = 1, 6
            read(11, 1)f
 1          format(f5.2)
            c = 5*(f-32)/9.0
            write(22, 2)"The temperature in centigrade is :", c, "deg.C"
2           format(a, f6.2, 1x, a)            
            end do 
      stop 
      end