      program average of following numbers
            open(unit = 22, file = "question10.out")
            n = 1
            sum = 0
            do while(n .le. 6)
                  sum =  sum + 1 + (n/10.0)
                  avg = sum/n
                  n = n + 1
                  
            end do
c           avg = sum/(n-1)
            
            write(22, 1)"The average of the given numbers is : ", avg
1           format(a, f4.2)            
            stop 
            end


            