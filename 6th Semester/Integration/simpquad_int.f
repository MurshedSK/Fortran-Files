      program Simpson_quadratic_function
            implicit none
            real :: a, b, h, f, s, s1, s2, s_odd, s_even, exact, g
            integer :: i, n, k
            open(unit = 11, file = 'simpquad.in')
            open(unit = 22, file = 'simpquad.out')
            write(22, 1)"integration value   method value"
1		format(a)
            do k = 1, 10
                  read(11, 2) a, b, n
2                 format(f4.1, f3.1, i4)
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
                  exact = g(b) - g(a)
			write(22, 3)exact, s2
3                 format(3x, f8.5,11x, f8.5)              
            end do 
            stop
            end

            real function f(x)
            real :: x
            f = (x**2) + 5
            return 
            end



            real function g(x)
            implicit none
            real :: x,h
            h = 1e-6
            g = x ** 3 / 3 + 5 * x
           return
            end
