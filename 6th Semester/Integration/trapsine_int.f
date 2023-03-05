	program Trapezoidal_sine_function
	implicit none
	real :: a, b, h, f, s, s1, exact
	integer :: i, n, k
	open(unit = 11, file = 'trapsine.in')
	open(unit = 22, file = 'trapsine.out')
	write(22, *)"method value       integration value"
1	format(a)
	do k = 1, 15 
		read(11, 2) a, b, n
2           format(f4.1, f5.1, i5)
		a = a / 180.0 * acos(-1.0)
		b = b / 180.0 * acos(-1.0)
		s1 = f(a) + f(b)
		h = (b - a) / n
		do i = 1 , n - 1
			s1 = s1 + 2 * f(a + i * h)
		end do 
		exact = - (cos(b) - cos(a))
		s = h * s1 / 2
		write(22,3)s, exact
3           format(1x, f8.5, 14x, f8.5)              
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
