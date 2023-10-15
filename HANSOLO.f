program HANSOLO_generator
implicit none

integer :: i
character(len=7) :: hansolo = "HANSOLO"
integer, parameter :: num_hansolos = 1000000
character(len=10) :: filename = "HANSOLO.hs"
integer :: file_unit, status

open(newunit=file_unit, file=filename, status='replace', action='write', iostat=status)

if (status /= 0) then
    write(*,*) "Error opening file"
    stop
end if

do i = 1, num_hansolos
    write(file_unit, '(A)') hansolo
end do

close(file_unit)

end program HANSOLO_generator
