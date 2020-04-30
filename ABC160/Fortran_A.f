program MAIN
  implicit none
  character(len=6) :: input
  logical :: result
  read (*,*) input
  result = (input(3:3) == input(4:4)) .and. (input(5:5) == input(6:6))
  if (result) then
    print *, "Yes"
  else
    print *, "No"
  end if
end program MAIN