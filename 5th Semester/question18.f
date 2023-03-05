      program to find arithmatic mean variance and standard deviation ! of 10 observations from an experiment of vernier calipers
            open(unit = 11, file = "question18.in")
            open(unit = 22, file = "question18.out")
            sum = 0
            do i = 1, 10
                  read(11, 1)x
1                 format(f5.2)
                  sum = sum + x
            end do
            avg = sum / 10.0
            write(22, 2)"average of given set of observations is", avg
2           format(a, 1x, f7.4)
            sumvar = 0
            rewind(11)
            do i = 1, 10
                  read(11, 5)x
5                 format(f5.2)
                  sumvar = sumvar + (x - avg)**2
            end do
            var = sumvar / 10.0
            stdev = sqrt(var)
            write(22, 2)"variance of given set of observations is", var
            write(22, 2)"stdev of given set of observations is", stdev
            stop
            end

