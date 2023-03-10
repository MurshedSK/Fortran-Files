c     Program for finding the root of a cubic expression using Newton-Raphson Method
           program Newton_Raphson Method for cubic expression
            implicit none
            real ::  root, a, b, h, x0, test, f
            integer :: n 
            open(unit = 11, file = "cubicroot.in")
            open(unit = 22, file = "cubicroot.out")
            read(11, 1)a, b
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
                        
      end program

      real function f(x)
            implicit none
            real :: x
            f = x ** 3 + 6 * x **2 + 11 * x + 6
            return
      end function

      real function df(x)
            implicit none
            real :: x, h, f
            h = 1e-5
            df = (f(x + h) - f(x)) / h
            return
      end function


      subroutine newton(x0, root, n)
            implicit none
            real :: x0, x1, f, df
            real :: error, tol, root
            integer :: n
            n = 1
            tol =  5e-8
2                 x1 = x0 - f(x0)/df(x0)
                  write(22, 3)x1 ,"after", n, "iteration"
3                 format(f10.7, 1x, a, i3, 1x, a)            
            error = abs(x1 - x0)
            if (error .lt. tol) then
                  root = x1
            else
                  n = n + 1
                  x0 = x1 
		      goto 2
            end if
            
            write(22, 4) "The root is :", root
4                 format(a, 1x, f10.7)
            write(22, 5)"after", n, "iterations"
5                 format(5x, a, i3, 1x, a)      
      end subroutine
