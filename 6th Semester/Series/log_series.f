      program log series
            open(unit = 11, file = 'log.in')
            open(unit =22, file = 'log.out')
            write(22,1)"input series-value exact-value difference"
1           format(a)            
            do i = 1, 7
                  read(11,2)x
2                 format(f5.2)
                  sum = x
                  term = x
                  test = 1e-6
                  n = 2
                  do while(abs(term).gt.test)
                        term = -term*(x*(n-1)/n)
                        sum = sum + term                  
                        n = n+1
                  end do 
                  y = log(1+x)
                  diff = abs(sum-y)
                  write(22,3)x, sum, y, diff
3                 format(f5.2,2x,f10.6,2x,f10.6,1x,f10.6)
            end do
            stop
            end                  
            