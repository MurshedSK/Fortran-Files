      program Find whether a given number is prime or not!
            open(unit = 11, file = "question13.in")
            open(unit = 22, file = "question13.out")
            do i = 1, 6
                  read(11, 1)n
1                 format(i2)
                  j = 1
                  do k = 2, (n / 2)
                        if(mod(n, k) .eq. 0) then
                              j = j + 1
                        end if
                  end do
                  if(j .gt. 1) then
                        write(22, 2)n,"is not a prime number"
2                       format(i2, 1x, a)

                  else 
                        write(22, 2)n, "is a prime number"
                  end if

            enddo
            stop
            end





