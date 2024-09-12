program mzero
  use, intrinsic :: iso_fortran_env, only: sp=>real32, dp=>real64 
  implicit none
  integer, parameter :: qp = selected_real_kind(33, 4931)
  real(sp) :: count
  real(sp) :: prev1
  real(dp) :: prev2
  real(qp) :: prev3
  real(sp) :: float32
  real(dp) :: float64
  real(qp) :: float128
  prev1 = 1.0_sp
  prev2 = 1.0_dp
  prev3 = 1.0_qp
  count = 0_sp
  float32 = 1.0_sp  
  float64 = 1.0_dp
  float128 = 1.0_qp
  print *,float32
  print *,float64
  print *,float128

  !Machine zero for float32(real 4)
  print *,'___________________'
  do while (float32 * 2 > float32)
    prev1 = float32
    float32 = float32 / 2.0
    count = count + 1
  end do
  count = count - 1
  print *,float32 
  print *,prev1
  print *,count
  print *,'Machine Zero at',prev1,' Same as 2^(-',count,')   REAL(4)';
  count = 0
  print *,'___________________'
  !Machine zero for float64(real 8)
  do while (float64 * 2 > float64)
    prev2 = float64
    float64 = float64 / 2.0
    count = count + 1
  end do
  count = count - 1
  print *,float64 
  print *,prev2
  print *,count
  print *,'Machine Zero at',prev2,' Same as 2^(-',count,')   REAL(8)';
  count = 0
  print *,'___________________'
  !Machine zero for float128(real 16)

  do while (float128 * 2 > float128)
    prev3 = float128
    float128 = float128 / 2.0
    count = count + 1
  end do
  count = count - 1
  print *,float128 
  print *,prev3
  print *,count
  print *,'Machine Zero at',prev3,' Same as 2^(-',count,')   REAL(16)';
  count = 0
  print *,'___________________'
end program mzero