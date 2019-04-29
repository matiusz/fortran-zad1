program main
	use naivemath

	real, dimension(2, 3) :: i
	real, dimension(3,2) :: j
	i(1, 1) = 1
	i(1, 2) = 2
	i(1, 3) = 3
	i(2, 1) = 4
	i(2, 2) = 5
	i(2, 3) = 6
	j(1, 1) = 11
	j(1, 2) = 12
	j(2, 1) = 13
	j(2, 2) = 14
	j(3, 1) = 15
	j(3, 2) = 16
	write(*,*) i
	write(*,*) j
	write(*,*) naivmull(i, j)
end program