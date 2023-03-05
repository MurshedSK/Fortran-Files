      program Simpson_transcendental_function
            implicit none
            real :: a, b, h, f, g, s, s1, s2, s_odd, s_even, exact
            integer :: i, n, k
            open(unit = 11, file = 'simpfunc.in')
            open(unit = 22, file = 'simpfunc.out')
            write(22, 1)"method value   integration value"
1		format(a)
            do k = 1, 3
                  read(11,2) a, b, h
2                 format(f3.1, 1x, f3.1, 1x, f6.4)
                  b = b * acos(-1.0)
                  s1 = f(a) + f(b)
                  n = (b-a) / h
                  s_odd = 0
                  do i = 1 , (n) / 2
                        s_odd = s_odd + 4 * f(a + (2 * i - 1) * h)
                  end do
                  s_even = 0
                  do i = 1 , (n - 2) / 2
                        s_even = s_even + 2 * f(a + 2 * i * h)
                  end do 
                  exact = (sin(b) - sin(a))
                  s1 = s + s_odd + s_even
                  s2 = h * s1 / 3
                  exact =  g(b) - g(a)
                  write(22,3)s2, exact
3                 format(1x, f8.5, 8x, f8.5)              
            end do 
            stop
            end

            real function f(x)
            real :: x
            f = sin(x) + (cos(2*x))**2
            return 
            end

            real function g(x)
            real :: x
            g = (1.0/8.0) * (4 * x + sin(4*x) - 8 * cos(x))
            return 
            end
            
