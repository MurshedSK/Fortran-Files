      program temperature conversion
            f = 210.0
            c = (f-32)/9.0
            write(6,1)"The temperature in centigrade is :", c, "deg.C"
1           format(a, f5.2, 1x, a)            
            stop 
            end