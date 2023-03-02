          program Trapfunc
		implicit none
		real :: a, b, h, f, g, x, s, s1, exact
		integer :: i, n, k
		open(unit = 11, file = 'trapfunc.in')
		open(unit = 22, file = 'trapfunc.out')
		write(22, 1)"method value   integration value"
1		format(a)
		do k = 1, 3
			read(11,2) a, b, h
2                 format(f3.1,1x,f3.1,1x,f6.4)
			b = b*acos(-1.0)
			s1 = f(a) + f(b)
			n = (b-a)/h
			do i = 1 , n-1
				s1 = s1 + 2*f(a+i*h)
			end do 
			s = h*s1/2
			exact =  g(b) - g(a)
			write(22,3)s, exact
3                 	format(1x,f8.5,8x,f8.5)              
		end do 
		stop
		end

		real function f(x)
		real :: x
		f = sin(x) +(cos(2*x))**2
		return 
		end

		real function g(x)
		real :: x
		g = (1.0/8.0)*(4*x+sin(4*x)-8*cos(x))
		return 
		end
		
