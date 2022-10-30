!     Program to profile Temperature in diffrent planets.
!     Record of Revisions
!       Date                 Programmer              Description of change
!       =====                ==========              =====================
!     19/03/2021     Nithish Kumar Sriramoju            Original Code
program te
implicit none
      integer :: io,k,j,n=0,i
      real, dimension (:),allocatable :: q,pres,temp,alt
      open (1, file = 'Mars(P_T_Z).txt', status = 'old') 
      DO
      	READ(1,*,iostat=io)
      	IF (io/=0) EXIT
      	n = n + 1
      END DO
      print*,n
      Allocate(pres(n))
      Allocate(temp(n))
      Allocate(alt(n))
      rewind 1
      do i = 1,n
      	read(1,*) pres(i),temp(i),alt(i)
      end do
      close(1)
      call execute_command_line('gnuplot -p gnuplot.plt')
end program    
