      program cosine series
            open(unit = 11, file = 'cosine.in')
            open(unit = 22, file = 'cosine.out')
            write(22, 1)"ang.(deg) ang.(rad) ser.val. ext.val. diff."
1           format(a)
            do i = 1, 9
                  read(11, 2)z
2                 format(f6.1)
                  x = z-int(z / 360) * 360
                  x = acos(-1.0) * x / 180.0
                  term = 1
                  sum = 1
                  test = 1e-6
                  n = 1
                  do while(abs(term) .gt. test)
                        term = - term * (x**2) / ((2*n-1) * (2*n))
                        sum = sum + term
                        n = n+1
                  end do
                  y = cos(x)
                  diff = abs(sum - y)
                  write(22, 3)z, x, sum, y, diff
3                 format(f6.1, 3x, f7.3, 3x, f8.5, 1x, f8.5, 1x, f8.5)                  
            end do
            stop
            end