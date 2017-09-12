!*********************************************************************
!
! This benchmark test program is measuring a cpu performance
! of floating point operation by a Poisson equation solver.
!!
! If you have any question, please ask me via email.
! written by Ryutaro HIMENO, November 26, 2001.
! Version 3.0
! ----------------------------------------------
! Ryutaro Himeno, Dr. of Eng.
! Head of Computer Information Division,
! RIKEN (The Institute of Pysical and Chemical Research)
! Email : himeno@postman.riken.go.jp
! ---------------------------------------------------------------
! You can adjust the size of this benchmark code to fit your target
! computer. In that case, please chose following sets of
! (mimax,mjmax,mkmax):
! small : 65,33,33
! small : 129,65,65
! midium: 257,129,129
! large : 513,257,257
! ext.large: 1025,513,513
! This program is to measure a computer performance in MFLOPS
! by using a kernel which appears in a linear solver of pressure
! Poisson eq. which appears in an incompressible Navier-Stokes solver.
! A point-Jacobi method is employed in this solver as this method can 
! be easyly vectrized and be parallelized.
! ------------------
! Finite-difference method, curvilinear coodinate system
! Vectorizable and parallelizable on each grid point
! No. of grid points : imax x jmax x kmax including boundaries
! ------------------
! A,B,C:coefficient matrix, wrk1: source term of Poisson equation
! wrk2 : working area, OMEGA : relaxation parameter
! BND:control variable for boundaries and objects ( = 0 or 1)
! P: pressure
! -------------------
! -------------------
! "use portlib" statement on the next line is for Visual fortran
! to use UNIX libraries. Please remove it if your system is UNIX.
! -------------------
! use portlib
!
module pres
  real(4),dimension(:,:,:),allocatable :: p
end module pres
!
module mtrx
  real(4),dimension(:,:,:,:),allocatable :: a,b,c
end module mtrx
!
module bound
  real(4),dimension(:,:,:),allocatable :: bnd
end module bound
!
module work
  real(4),dimension(:,:,:),allocatable :: wrk1,wrk2
end module work
!
module others
  integer :: mimax,mjmax,mkmax
  integer :: imax,jmax,kmax
  real(4),parameter :: omega=0.8
end module others
!
!
program HimenoBMTxp_F90
  use others
!
  implicit none
!
  integer :: nn
  integer :: ic,icr,icm
  real(4) :: flop,xmflops2,score,gosa
  real(8) :: cpu0,cpu1,cpu,dt
  ! ttarget specifys the measuring period in sec
  real(4),parameter :: ttarget=60.0
  real(8),external :: second
!
  call readparam
!
!! Initializing matrixes
  call initmem
  call initmt
  print *,' mimax=',mimax,' mjmax=',mjmax,' mkmax=',mkmax
  print *,' imax=',imax,' jmax=',jmax,' kmax=',kmax
!
  call system_clock(ic,icr,icm)
  dt= 1.0/real(icr,8)
  print '(2x,a,e10.5)','Time measurement accuracy : ',dt
!! Start measuring
!
  nn=3
  print *,' Start rehearsal measurement process.'
  print *,' Measure the performance in 3 times.'
!
  cpu0=second()
!! Jacobi iteration
  call jacobi(nn,gosa)
!
  cpu1=second()
  cpu = (cpu1 - cpu0)*dt
  flop=real(kmax-2,4)*real(jmax-2,4)*real(imax-2,4)*34.0
  if(cpu /= 0.0)  xmflops2=flop/real(cpu,4)*1.0e-6*real(nn,4)
  print *,'  MFLOPS:',xmflops2,'  time(s):',cpu,gosa
!
!! end the test loop
  nn=10
  print *,'Now, start the actual measurement process.'
  print *,'The loop will be excuted in',nn,' times.'
  print *,'This will take about one minute.'
  print *,'Wait for a while.'
!
!! Jacobi iteration
  cpu0= second()
!! Jacobi iteration
  call jacobi(nn,gosa)
!
  cpu1= second()
  cpu = (cpu1 - cpu0)*dt
  if(cpu /= 0.0)  xmflops2=flop*1.0e-6/real(cpu,4)*real(nn,4)
!
!!!      xmflops2=nflop/cpu*1.0e-6*float(nn)
!
  print *,' Loop executed for ',nn,' times'
  print *,' Gosa :',gosa
  print *,' MFLOPS:',xmflops2, '  time(s):',cpu
  score=xmflops2/82.84
  print *,' Score based on Pentium III 600MHz :',score
!
!  pause
!   stop
end program HimenoBMTxp_F90
!
!
subroutine readparam
!
  use others
!
  implicit none
!
  character(10) :: size
!
  print *,'Select Grid-size:'
!  print *,'For example:'
  print *,'Grid-size= '
  print *,'           XS (64x32x32)'
  print *,'           S  (128x64x64)'
  print *,'           M  (256x128x128)'
  print *,'           L  (512x256x256)'
  print *,'           XL (1024x512x512)'
!  print *,' Grid-size = '
!  read(*,*) size
  size = 'XS'
  call grid_set(size)
!
  imax=mimax-1
  jmax=mjmax-1
  kmax=mkmax-1
!
  return
end subroutine readparam
!
!
subroutine grid_set(size)
!
  use others
!
  implicit none
!
  character(10),intent(in) :: size
!
  select case(size)
  case("xs")
     mimax=65
     mjmax=33
     mkmax=33
  case("XS")
     mimax=65
     mjmax=33
     mkmax=33
  case("s")
     mimax=129
     mjmax=65
     mkmax=65
  case("S")
     mimax=129
     mjmax=65
     mkmax=65
  case("m")
     mimax=257
     mjmax=129
     mkmax=129
  case("M")
     mimax=257
     mjmax=129
     mkmax=129
  case("l")
     mimax=513
     mjmax=257
     mkmax=257
  case("L")
     mimax=513
     mjmax=257
     mkmax=257
  case("xl")
     mimax=1025
     mjmax=513
     mkmax=513
  case("XL")
     mimax=1025
     mjmax=513
     mkmax=513
  case default
     print *,'Invalid input character !!'
     stop
  end select
!
  return
end subroutine grid_set
!
!
!**************************************************************
subroutine initmt
!**************************************************************
  use pres
  use mtrx
  use bound
  use work
  use others
!
  implicit none
!
  integer :: i,j,k
!
  a=0.0
  b=0.0
  c=0.0
  p=0.0
  wrk1=0.0   
  wrk2=0.0   
  bnd=0.0 
!
  a(1:imax,1:jmax,1:kmax,1:3)=1.0
  a(1:imax,1:jmax,1:kmax,4)=1.0/6.0
  c(1:imax,1:jmax,1:kmax,:)=1.0
  bnd(1:imax,1:jmax,1:kmax)=1.0 
  do k=1,kmax
     p(:,:,k)=real((k-1)*(k-1),4)/real((kmax-1)*(kmax-1),4)
  enddo
!
  return
end subroutine initmt
!
!*************************************************************
subroutine initmem
!*************************************************************
  use pres
  use mtrx
  use bound
  use work
  use others
!
  implicit none
!
  allocate(p(mimax,mjmax,mkmax))
  allocate(a(mimax,mjmax,mkmax,4),b(mimax,mjmax,mkmax,3), &
       c(mimax,mjmax,mkmax,3))
  allocate(bnd(mimax,mjmax,mkmax))
  allocate(wrk1(mimax,mjmax,mkmax),wrk2(mimax,mjmax,mkmax))
!
  return
end subroutine initmem
!
!*************************************************************
subroutine jacobi(nn,gosa)
!*************************************************************
  use pres
  use mtrx
  use bound
  use work
  use others
!
  implicit none
!
  integer,intent(in) :: nn
  real(4),intent(inout) :: gosa
  integer :: i,j,k,loop
  real(4) :: s0,ss
!
!
  do loop=1,nn
     gosa= 0.0
     do k=2,kmax-1
        do j=2,jmax-1
           do i=2,imax-1
              s0=a(I,J,K,1)*p(I+1,J,K) &
                   +a(I,J,K,2)*p(I,J+1,K) &
                   +a(I,J,K,3)*p(I,J,K+1) &
                   +b(I,J,K,1)*(p(I+1,J+1,K)-p(I+1,J-1,K) &
                               -p(I-1,J+1,K)+p(I-1,J-1,K)) &
                   +b(I,J,K,2)*(p(I,J+1,K+1)-p(I,J-1,K+1) &
                               -p(I,J+1,K-1)+p(I,J-1,K-1)) &
                   +b(I,J,K,3)*(p(I+1,J,K+1)-p(I-1,J,K+1) &
                               -p(I+1,J,K-1)+p(I-1,J,K-1)) &
                   +c(I,J,K,1)*p(I-1,J,K) &
                   +c(I,J,K,2)*p(I,J-1,K) &
                   +c(I,J,K,3)*p(I,J,K-1)+wrk1(I,J,K)
              ss=(s0*a(I,J,K,4)-p(I,J,K))*bnd(I,J,K)
              GOSA=GOSA+SS*SS
              wrk2(I,J,K)=p(I,J,K)+OMEGA *SS
           enddo
        enddo
     enddo
!     
     p(2:imax-1,2:jmax-1,2:kmax-1)= &
          wrk2(2:imax-1,2:jmax-1,2:kmax-1)
!
  enddo
!! End of iteration
  return
end subroutine jacobi
!
!
!
function second() result(rtime)
!
  implicit none
!
  integer :: ic,ir,im
  real(8) :: rtime
!
  call system_clock(ic,ir,im)
!
  rtime= real(ic,8)
!
end function second
