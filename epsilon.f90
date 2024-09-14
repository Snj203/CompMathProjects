REAL A
DOUBLE PRECISION B
INTEGER C
!41 стр
C = 0
A = 1
B = 1
DO I = 1,33
  IF(A + 1 /= 1)THEN
    A = A / 10
    C = C + 1
  END IF
END DO
PRINT *,C
PRINT *,A
PRINT *,A + 1
PRINT *,C - 1
PRINT *,A * 10
PRINT *,A * 10 + 1
C = 0
PRINT *,"_____________________"
DO I = 1,33
  IF(B + 1 /= 1)THEN
    B = B / 10
    C = C + 1
  END IF
END DO
PRINT *,C
PRINT *,B
PRINT *,B + 1
PRINT *,C-1
PRINT *,B * 10
PRINT *,B * 10 + 1
PRINT *,"_____________________"
END