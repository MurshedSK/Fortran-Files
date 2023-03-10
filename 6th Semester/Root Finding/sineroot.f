c            Program for finding the root of a Sine Function using Newton-Raphson Method
      program Newton_Raphson Method for Sine_Function
            implicit none
            real ::  root, a, b, h, x0, test, f
            integer :: n 
            open(unit = 11, file = "sineroot.in")
            open(unit = 22, file = "sineroot.out")
            read(11, 1)a, b, h
1           format(f5.1, 1x, f4.1, 1x, f3.1)            
            do while(a .lt. b)
                  test = f(a) * f(a + h)
                  if (test .lt. 0) then 
                        x0 = a
                        call newton(a, root, n)
                  end if
                  a = a + h
            end do
            
            contains
            subroutine newton(x0, root, n)
                  implicit none
                  real :: x0, x1, f, df, pi
                  real :: error, tol, root
                  integer :: n, root_value
                  parameter (pi = acos(- 1.0))
                  n = 1
                  tol =  5e-8
2                 x1 = x0 - f(x0)/df(x0)
                  write(22, 3)x1 ,"after", n, "iteration"
3                 format(f10.7, 1x, a, i3, 1x, a)            
                  error = abs(x1 - x0)
                  if (error .lt. tol) then
                        root = x1
                        root_value = root / pi
                  else
                        n = n + 1
                        x0 = x1 
                        goto 2
                  end if
                  write(22, 4) "The root is :", root_value, " times π"
4                 format(a, 1x, i2, a)
                  write(22, 5)"after", n, "iterations"
5                 format(5x, a, i3, 1x, a)      
            end subroutine            
      end program

      real function f(x)
            implicit none
            real :: x
            f = sin(x)
      end function

      real function df(x)
            implicit none
            real :: x, h, f
            h = 1e-5
            df = (f(x + h) - f(x)) / h
      end function

