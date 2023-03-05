      program Simpson_sine_function
            implicit none
            real :: a, b, h, f, s, s1, s2, s_odd, s_even, exact
            integer :: i, n, k
            open(unit = 11, file = 'simpsine.in')
            open(unit = 22, file = 'simpsine.out')
            write(22, 1)"method value       integration value"
1	      format(a)
            do k = 1, 15 
                  read(11, 2) a, b, n
2                 format(f4.1, f5.1, i5)
                  a = a / 180.0 * acos(-1.0)
                  b = b / 180.0 * acos(-1.0)
                  s = f(a) + f(b)
                  h = (b-a) / n
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
                  exact = - (cos(b) - cos(a))
                  
                  write(22,3)s2, exact
3                 format(1x, f8.5, 14x, f8.5)              
            end do 
            stop
            end

            real function f(x)
            real :: x, n, test, term, sum
            sum = x
            term = x
            test = 1e-6
            n = 0
            do while (abs(term) .gt. test)
                  term = - term * (x**2) / ((2 * n + 2) * (2 * n + 3))
                  sum = sum + term
                  n = n + 1
            end do
            f = sum 
            return 
            end
