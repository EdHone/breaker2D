module swell_mod

    implicit none

    private

    type, public :: swell_type
        real :: wavelength
        real :: height
        real :: period
    contains
        procedure, nopass :: swell_type => swell_constructor
    end type

contains
        
    function swell_constructor(wavelength, height, period) result(new_swell)

        implicit none

        real, intent(in) :: wavelength
        real, intent(in) :: height
        real, intent(in) :: period
        type(swell_type) :: new_swell

        new_swell%wavelength = wavelength
        new_swell%height = height
        new_swell%period = period

    end function swell_constructor

end module swell_mod