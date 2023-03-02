      program exponential series
            open(unit = 11, file = 'exp.in')
            open(unit =22, file = 'exp.out')
            write(22,1)"input series-value exact-value difference"
1           format(a)            
            do i = 1, 7
                  read(11,2)x
2                 format(f5.2)
                  sum = 1
                  term = 1
                  test = 1e-6
                  n = 1
                  do while(abs(term).gt.test)
                        term = term*(x/n)
                        sum = sum + term                  
                        n = n+1
                  end do 
                  y = exp(x)
                  diff = abs(sum-y)
                  write(22,3)x, sum, y, diff
3                 format(f5.2,2x,f10.6,2x,f10.6,1x,f10.6)
            end do
            stop
            end