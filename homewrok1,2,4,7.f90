!98C
REAL A,P
DOUBLE PRECISION B
INTEGER C
C = 0
A = 1
B = 1
PRINT *,"_____________________Machine Epsilon F32"
DO I = 1,24
  IF(A + 1 == 1)EXIT
  A = A / 10
  C = C + 1 
END DO
PRINT *,C
PRINT *,A
PRINT *,A + 1
PRINT *,C - 1
PRINT *,A * 10
PRINT *,A * 10 + 1
C = 0
PRINT *,"_____________________Machine Epsilon F64"
DO I = 1,53
  IF(B + 1 == 1)EXIT
  B = B / 10
  C = C + 1
END DO
PRINT *,C
PRINT *,B
PRINT *,B + 1
PRINT *,C-1
PRINT *,B * 10
PRINT *,B * 10 + 1
PRINT *,"_____________________Machine zero" 
A = 1
C = 0
P = 1
DO WHILE ( A /= 0 )
  P = A
  A = A / 10
  C = C + 1 
END DO
PRINT *,C
PRINT *,A
PRINT *,C - 1
PRINT *,P
PRINT *,"_____________________Machine inf" 
A = 1
C = 0
P = 1
DO WHILE ( A * 10 > A )
  P = A
  A = A * 10
  C = C + 1 
END DO
PRINT *,C
PRINT *,A
PRINT *,C - 1
PRINT *,P
END