PROGRAM Factorial
INTEGER, DIMENSION(0:15) :: A
INTEGER I,B,C,D
REAL G,K
G = 15.256
K = 15
PRINT *,"fsfs",MOD(G,K)
C = 10
DO I = 1,15
  IF(ANY (A == C))THEN
    PRINT *,"asdasd",I,A
    EXIT
  END IF
  A(I) = I
END DO
DO I = 0,14
  PRINT *,A(I)
END DO
END PROGRAM Factorial
