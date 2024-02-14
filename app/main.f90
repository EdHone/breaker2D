program main
  use breaker, only: excursion
  use swell_mod, only: swell_type

  implicit none

  type(swell_type) :: swell
  real :: surf(100), x(100)
  integer :: i

  swell = swell_type(20.0, 2.0, 14.0)
  x = real([(i, i=1, 100)])

  call excursion(surf, x, swell)

  print*, surf

end program main
