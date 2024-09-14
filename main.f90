
REAL D
DOUBLE PRECISION S
INTEGER B , C ,W,Z,Y
REAL (KIND = 4) Q
REAL (KIND = 8) U
Q = 1
U = 1
S = 1
PRINT *,S,"ASDASD"


BIGQ = HUGE(Q)
SMALLQ = BIGQ + 9999999
PRINT *,Q, ' BigQ: ' ,BIGQ, ' SmallQ: ',SMALLQ ,"  AAA"


D = 1* &
  (2-1) ** 3
B = 10/3*3
OPEN(1, FILE = 'A.txt')
READ(1, *) C
PRINT *,C
WRITE(1, *) B
CLOSE(1)
BIG = HUGE(W)
SMALL = BIG + 1
PRINT*, 'Default kind: ', KIND(W)
PRINT*, 'Largest: '
PRINT*, 'Smallest: ', SMALL
Z = 0
DO
 Z = Z + 1
 Y = SELECTED_INT_KIND( Z )
 IF( Y == -1 ) EXIT
 PRINT*, Z, Y
END DO

END 
