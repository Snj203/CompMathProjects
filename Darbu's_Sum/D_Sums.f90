PROGRAM Darbus ! DO 1,size  min(fx)|max(fx) * size(-|-|-|...n)
INTEGER NUMBER_OF_INTERVALS
REAL START,END,US,LS,STEP,CUR
REAL, PARAMETER :: PI = 4 * DATAN(1.D0)
START = PI
END = 3 * PI / 2
NUMBER_OF_INTERVALS = 34534
STEP = (END - START) / NUMBER_OF_INTERVALS
US = 0
LS = 0
CUR = START
DO I = 1,NUMBER_OF_INTERVALS
  LS = LS + SIN(CUR) * STEP
  US = US + SIN(CUR + STEP) * STEP
  CUR = CUR + STEP
END DO
PRINT *,LS, " : ", US
END PROGRAM Darbus