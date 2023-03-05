      program to sum up the given series
            open(unit = 11, file = "question15.out")
            sum = 0
            x = 2.0
            do i = 1, 4
                  a = i
                  term = 2*a/(2*a + 1)
                  sum = sum + term
            enddo
            write(11, 1)"the sum of the given series is", sum + x
1           format(a, 1x, f6.3)
            stop
            end
            
