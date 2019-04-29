
module naivemath

private

public :: naivmull
interface naivmull
	procedure naivmull_4, naivmull_8, naivmull_16
end interface

contains

function naivmull_4 (A, B) result (C)
	real (kind=4), intent(in), dimension(:,:) :: A
	real (kind=4), intent(in), dimension(:,:) :: B
	real (kind=4), dimension(size(A, 1),size(B, 2)) :: C
	C=0
	do i = 1, size(A, 1)
		do j = 1, size(B, 2)
			do k = 1, size(A, 1)
				C(i, j) = C(i,j)+(A(i,k)*B(k, j))
			end do
		end do
	end do
end function

function naivmull_8 (A, B) result (C)
	real (kind=8), intent(in), dimension(:,:) :: A
	real (kind=8), intent(in), dimension(:,:) :: B
	real (kind=8), dimension(size(A, 1),size(B, 2)) :: C
	C=0
	do i = 1, size(A, 1)
		do j = 1, size(B, 2)
			do k = 1, size(A, 1)
				C(i, j) = C(i,j)+(A(i,k)*B(k, j))
			end do
		end do
	end do
end function

function naivmull_16 (A, B) result (C)
	real (kind=16), intent(in), dimension(:,:) :: A
	real (kind=16), intent(in), dimension(:,:) :: B
	real (kind=16), dimension(size(A, 1),size(B, 2)) :: C
	C=0
	do i = 1, size(A, 1)
		do j = 1, size(B, 2)
			do k = 1, size(A, 1)
				C(i, j) = C(i,j)+(A(i,k)*B(k, j))
			end do
		end do
	end do
end function

end module