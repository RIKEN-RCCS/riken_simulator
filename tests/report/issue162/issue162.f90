program main
  implicit none
  integer,parameter :: n = 3
  real(8) :: r(n)
  real(8) :: w
  integer :: ir, irmax
  w = 0.0d0
  irmax = 0
  r = 1.0d0
  do ir = 1, n
     if(r(ir) < 10.0d0) then
        irmax = ir
        w = r(ir)
     end if
  end do
  write(6,*) irmax, w
end program main
