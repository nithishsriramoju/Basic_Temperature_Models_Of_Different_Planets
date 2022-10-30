!     Comaparing Modeled and Observed Temperature Profile of Titan.
!     Record of Revisions
!       Date                 Programmer              Description of change
!       =====                ==========              =====================
!     20/03/2021     Nithish Kumar Sriramoju            Original Code
program Ma
implicit none
	real :: T_skin,T_e,T_s,cp,g,z1
	integer :: i
	real,dimension(201):: z , T
	T_s = 93.9
	T_e = 89.95
	T_skin = (T_e)*(2**(-0.25))
	g = 1.352
	cp = 1.04
	z1 = (cp/g)*(T_s-T_skin)
	print*,'Tropopause is at:',z1,'km'
	do i = 1,201
		z(i) = i-1
	end do
	do  i = 1,floor(z1)
		T(i)  =  T_s - z(i)*g/cp
	end do
	do i  = ceiling(z1),201
		T(i) = T_skin
	end do
	open(1,file = 'Modeled_titan.txt',status='unknown')
	do i = 1,201
		write(1,*)z(i),T(i)
	end do
	close (1)
	call execute_command_line('gnuplot -p gnuplot_titan.plt')
end program 
