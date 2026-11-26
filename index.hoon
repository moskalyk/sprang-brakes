|=  [speed=@, rotation=@deg, incline=@, breakTime=@, timeABS]
^-  @ud  adjustment  :-  startFunc speed  breakTime
^-  @b  switcherDir
^-  @b  critical
>=
|-  ?:  gte  timeABS  0
        adjustment
    adjustment+critical
$ 
adjustment  (add  (?:  lte  rotation  10  :-  adjustment  sub  -W  :-  sub  -Z)  !>  :-  mul  -1  switcherDir)
critical  :-  add  :-  mul  speed  X   :-  add   mul  incline  Y
==
