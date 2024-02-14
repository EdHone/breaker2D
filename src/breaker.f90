module breaker

use swell_mod, only: swell_type

  implicit none

  private
  public :: excursion

contains

  subroutine excursion(surface, x, swell)

    implicit none

    real, intent(inout) :: surface(:)
    real, intent(in) :: x(:)
    type(swell_type) :: swell

    integer :: i
    real :: t = 1.0

    do i = 1, size(surface)

      surface(i) = ( swell%height / 2 ) * cos( 2 * 3.14159 * ( ( x(i) / swell%wavelength ) - &
                                                          ( t / swell%period ) ) )

    end do

  end subroutine excursion

end module breaker
