!-----------------------------------------------------------
! kernel
!-----------------------------------------------------------
  subroutine kernel(SZ, B, C, A)
    implicit none
    
    ! argument
    integer*4,intent(in) :: SZ
    real*8,intent(in)    :: B(SZ), C(SZ)
    real*8,intent(out)   :: A(SZ)
    
    ! local
    integer*4 :: I

    do I=1, SZ
       A(I) = B(I) + C(I)
    enddo
    
    return
  end subroutine kernel
      
!-----------------------------------------------------------
! main starts here
!-----------------------------------------------------------
  program main
    implicit none
    
    integer*4 :: SZ, I
    parameter(SZ=100000)
    real*8 :: A(SZ), B(SZ), C(SZ)
    real*8 :: tstart, tend
    tstart = 0.0d0
    tend   = 0.0d0
    
    A(:) = 0.0d0
    B(:) = 0.0d0
    C(:) = 0.0d0
    
    call kernel(SZ, A, B, C)
    
    write(*,*) 'start'
    call gettod(tstart)
    write(*,*) tstart
    
    call kernel(SZ, A, B, C)
    
    call gettod(tend)
    write(*,*) tend
    
    write(*,*) 'done'
    write(*,*) tend - tstart
  end program main
  
