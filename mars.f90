!     Comaparing Modeled and Observed Temperature Profile of Mars without dust.
!     Record of Revisions
!       Date                 Programmer              Description of change
!       =====                ==========              =====================
!     19/03/2021     Nithish Kumar Sriramoju            Original Code
program Ma
implicit none
	real :: T_skin,T_e,T_s,cp,g,z1
	integer :: i
	real,dimension(101):: z , T
	print*,'Enter the Surface Temperature of Mars:'
	read(*,*)T_s
	T_e = 210
	T_skin = (T_e)*(2**(-0.25))
	print*,T_skin
	g  = 3.711
	cp = 0.83
	z1 = (cp/g)*(T_s-T_skin)
	print*,'Tropopause is at:',z1,'km'
	do i = 1,101
		z(i) = i-1
	end do
	do  i = 1,floor(z1)
		T(i)  =  T_s - z(i)*g/cp
	end do
	do i  = ceiling(z1),101
		T(i) = T_skin
	end do
	open(1,file = 'Modeled_mars.txt',status='unknown')
	do i = 1,101
		write(1,*)z(i),T(i)
	end do
	close (1)
	call execute_command_line('gnuplot -p gnuplot1.plt')
end program 
	
	
	
	
   	
   	
