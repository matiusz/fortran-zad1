program main
	use naivemath
	use bettermath
	use dotmath
	real (kind = 16), dimension(:,:), allocatable :: i, j
	real :: startnaiv, finishnaiv, startbett, finishbett, startdot, finishdot, startmat, finishmat
	real, dimension(:,:), allocatable :: C
	integer, dimension(8) :: matrix_sizes
	matrix_sizes(1) = 10
	do k = 2, size(matrix_sizes)
		matrix_sizes(k) = matrix_sizes(k-1)*2
	end do
	write (*,*) "N	, Naive	 , Better ,	Dot,	Mat"
	do k = 1, size(matrix_sizes)
		allocate(i(matrix_sizes(k), matrix_sizes(k)))
		allocate(j(matrix_sizes(k), matrix_sizes(k)))
		i=1
		j=2

		call cpu_time(startnaiv)
		C = naivmull(i, j)
		call cpu_time(finishnaiv)

		call cpu_time(startbett)
		C = bettmull(i, j)
		call cpu_time(finishbett)

		call cpu_time(startdot)
		C = dotmull(i, j)
		call cpu_time(finishdot)

		call cpu_time(startmat)
		C = matmul(i, j)
		call cpu_time(finishmat)
		write (*,9001) matrix_sizes(k), ",", finishnaiv-startnaiv, ",", &
		finishbett-startbett,",", finishdot-startdot,",", finishmat-startmat
		9001 format (I8, A, F8.5, A, F8.5, A, F8.5, A, F8.5)
		!write (*,*) C

		deallocate(i)
		deallocate(j)
	end do
end program