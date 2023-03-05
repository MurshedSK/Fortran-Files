      program to sum up given series
            open(unit = 11, file = "question14.out")
            sum = 0
            do i = 1, 5
                  term = 1 / real(i)
                  sum = sum + term
            enddo
            write(11, 2)"the sum of the given series is", sum
2           format(a, 1x, f5.3)
            stop
            end
