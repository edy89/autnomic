program sums_in_loop
        implicit none
        integer :: add_two_nums
        integer :: i, num_loops
        integer :: a, b
        character(20) :: sum
        character(1024) :: buffer
        
        ! Read in number of sums
        read *, num_loops
        write (buffer, "(a)") ""
        do i = 1, num_loops
          ! Read in numbers
          read *, a, b
          ! Internal write the result.
          write (sum, "(i20)") add_two_nums(a, b)
          ! Format result.
          if (i .eq. 1) then
            write (buffer, "(a)") adjustl(sum)
          else
            write (buffer, "(a,a,a)") trim(buffer), " ", adjustl(sum)
          end if
        end do

        print "(a)", buffer
        
      end program

      integer function add_two_nums(a, b)
        ! Adds two numbers a and b.
        implicit none
        integer, intent(in) :: a, b
        add_two_nums = a + b
end function add_two_nums
