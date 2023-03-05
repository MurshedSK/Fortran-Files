          program Trapinv
		implicit none
		real :: a, b, h, f, x, s, s1 , exact
		integer :: i, n, k
		open(unit = 11, file = 'trapinv.in')
		open(unit = 22, file = 'trapinv.out')
		write(22, 1)"method value   integration value"
1		format(a)
		do k = 1, 3
			read(11,2) a, b, h
2                 format(f3.1, 1x, f3.1, 1x, f5.3)
			s1 = f(a) + f(b)
			n = (b - a) / h
			do i = 1 , n-1
				s1 = s1 + 2 * f(a+i*h)
			end do 
			s = h * s1 / 2
			exact = atan(2.0*2) / 2.0  - atan(2.0*0) / 2.0
			write(22, 3)s, exact
3                 	format(1x, f8.5, 8x, f8.5)              
		end do 
		stop
		end

		real function f(x)
		real :: x
		f = 1 / (1 + 4 * x**2)
		return 
		end
