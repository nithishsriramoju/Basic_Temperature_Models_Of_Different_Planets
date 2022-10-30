!     Comaparing Modeled and Observed Temperature Profile of Venus.
!     Record of Revisions
!       Date                 Programmer              Description of change
!       =====                ==========              =====================
!     20/03/2021     Nithish Kumar Sriramoju            Original Code
program Ma
implicit none
	real :: T_skin,T_e,T_s,cp,g,z1
	integer :: i
	real,dimension(181):: z , T
	T_e = 232
	T_s = 760
	T_skin = (T_e)*(2**(-0.25))
	g = 8.87
	cp = 0.85
	z1 = (cp/g)*(T_s-T_skin)
	print*,'Tropopause is at:',z1,'km'
	do i = 1,181
		z(i) = i-1
	end do
	do  i = 1,floor(z1)
		T(i)  =  T_s - z(i)*g/cp
	end do
	do i  = ceiling(z1),181
		T(i) = T_skin
	end do
	open(1,file = 'Modeled_venus.txt',status='unknown')
	do i = 1,181
		write(1,*)z(i),T(i)
	end do
	close (1)
	call execute_command_line('gnuplot -p gnuplot_venus.plt')
end program 
	
	
	
   	
   	
