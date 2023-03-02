          program Trapquad
		implicit none
		real :: a, b, h, f, s, s1
		integer :: i, n, k
		open(unit = 11, file = 'trapquad.in')
		open(unit = 22, file = 'trapquad.out')
		write(22, 1)"integration value"
1		format(a)
		do k = 1, 10
			read(11,2) a, b, n
2                 format(f4.1, f3.1,i4)
			s1 = f(a) + f(b)
			h = (b-a)/n
			do i = 1 , n-1
				s1 = s1 + 2*f(a+i*h)
			end do 
			s = h*s1/2
			write(22,3)s
3                 	format(1x,f8.5)              
		end do 
		stop
		end

		real function f(x)
		real :: x
		f = (x**2)+5
		return 
		end
