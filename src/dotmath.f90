
module dotmath

private

public :: dotmull
interface dotmull
	procedure dotmull_4, dotmull_8, dotmull_16
end interface

contains

function dotmull_4 (A, B) result (C)
	real (kind=4), intent(in), dimension(:,:) :: A
	real (kind=4), intent(in), dimension(:,:) :: B
	real (kind=4), dimension(size(A, 1),size(B, 2)) :: C
	C=0	
	do j = 1, size(B, 2)
		do i = 1, size(A, 1)
			C(i, j) = dot_product(A(i,:), B(:,j))
		end do
	end do
end function

function dotmull_8 (A, B) result (C)
	real (kind=8), intent(in), dimension(:,:) :: A
	real (kind=8), intent(in), dimension(:,:) :: B
	real (kind=8), dimension(size(A, 1),size(B, 2)) :: C
	C=0
	do j = 1, size(B, 2)
		do i = 1, size(A, 1)
			C(i, j) = dot_product(A(i,:), B(:,j))
		end do
	end do
end function

function dotmull_16 (A, B) result (C)
	real (kind=16), intent(in), dimension(:,:) :: A
	real (kind=16), intent(in), dimension(:,:) :: B
	real (kind=16), dimension(size(A, 1),size(B, 2)) :: C
	C=0
	do j = 1, size(B, 2)
		do i = 1, size(A, 1)
			C(i, j) = dot_product(A(i,:), B(:,j))
		end do
	end do
end function

end module