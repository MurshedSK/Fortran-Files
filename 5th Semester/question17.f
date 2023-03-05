      program to sum up the given series
            open(unit = 11, file = "question17.out")
            sum = 0
            x = 0.5
            term = x
            do i = 1, 3
                  a = i
                  term = term*x/(a + 1.0)
                  sum = sum + term
            enddo
            write(11, 1)"the sum of the given seires is", sum + 1.0
1           format(a, 1x, f6.3)
            stop
            end
