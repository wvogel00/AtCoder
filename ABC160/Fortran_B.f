program MAIN
  implicit none
  integer :: money
  read (*,*) money
  print *, hisHappiness(money)
  stop

  contains
  integer function hisHappiness(value)
    implicit none
    integer :: value, happy500, happy5
    happy500 = value / 500 * 1000
    happy5 = mod(value, 500) / 5 * 5
    hisHappiness = happy500 + happy5
    return
  end function hisHappiness
  
end program MAIN