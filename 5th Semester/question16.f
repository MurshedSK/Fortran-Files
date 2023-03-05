      program sine series
            open(unit = 11, file = "question16.out")
            sum = 0
            x = 0.5
            term = x
            do i = 1, 2
                  term = -term*x**2/((2*i + 3)*(2*i + 2))
                  sum = sum + term
            enddo
            write(11, 1)"the sum of the given seires is", sum+x
1           format(a, 1x, f7.3)
            stop
            end

