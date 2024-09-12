!Machine Epsilon
program hello
  use, intrinsic :: iso_fortran_env, only: sp=>real32, dp=>real64 
  implicit none
  real(sp) :: count
  real(sp) :: float32
  real(dp) :: float64
  integer, parameter :: qp = selected_real_kind(33, 4931)
  real(qp) :: float128
  count = 1.0_sp
  float32 = 1.0_sp  
  float64 = 1.0_dp
  float128 = 1.0_qp

  print *,float32
  print *,float64
  print *,float128
  !Epsilon for float32(real 4)
  print *,'___________________'
  count = 0
  do while (float32 + 1.0 /= 1.0)
    float32 = float32 / 2.0
    count = count + 1
  end do
  float32 = float32 * 2
  print *,float32
  float32 = float32 + 1
  print *,float32
  count = count - 1
  print *,count,'Epsilon32BIT = 1 * 2^(-',count,')'
  !Epsilon for float64(real 8)
  print *,'___________________'
  count = 0
  do while (float64 + 1.0 /= 1.0)
    float64 = float64 / 2.0
    count = count + 1
  end do
  float64 = float64 * 2
  print *,float64
  float64 = float64 + 1
  print *,float64
  count = count - 1
  print *,count,'Epsilon64BIT = 1 * 2^(-',count,')'
  !Epsilon for float128(real 16)
  print *,'___________________'
  count = 0
  do while (float128 + 1.0 /= 1.0)
    float128 = float128 / 2.0
    count = count + 1
  end do
  float128 = float128 * 2
  print *,float128
  float128 = float128 + 1
  print *,float128
  count = count - 1
  print *,count,'Epsilon128BIT = 1 * 2^(-',count,')'
end program hello
