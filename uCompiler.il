BR L1
L2:
PUSH D1
MOV SP D1
ADD SP #4 SP
MOV -4(D1) 1(D1)
PUSH 1(D1)
PUSH #0
CMPEQS
BRFS L3
PUSH #1
POP 2(D1)
BR L4
L3:
PUSH 1(D1)
PUSH #0
PUSH 1(D1)
PUSH #1
SUBS
PUSH #-1
CALL L2
SUB SP #2 SP
MULS
POP 2(D1)
L4:
MOV 2(D1) -5(D1)
SUB SP #4 SP
POP D1
RET
L5:
PUSH D1
MOV SP D1
ADD SP #3 SP
MOV -4(D1) 1(D1)
PUSH #50
NEGS
POP 2(D1)
L6:
PUSH 1(D1)
PUSH 2(D1)
CMPGTS
BRFS L7
PUSH 1(D1)
WRTS
PUSH #" "
WRTS
PUSH 1(D1)
PUSH #1
SUBS
POP 1(D1)
BR L6
L7:
PUSH #""
WRTS
WRTLN #""
SUB SP #3 SP
POP D1
RET
L8:
PUSH D1
MOV SP D1
ADD SP #2 SP
PUSH #1
CASTSF
PUSH #2.0
MULSF
PUSH #4
CASTSF
DIVSF
PUSH #2
CASTSF
ADDSF
POP 1(D1)
PUSH #"From procedure otherthing is: "
WRTS
PUSH 1(D1)
WRTS
WRTLN #""
SUB SP #2 SP
POP D1
RET
L12:
PUSH D4
MOV SP D4
ADD SP #2 SP
MOV -4(D4) 1(D4)
PUSH #"I am super imbedded and awesome. B is "
WRTS
PUSH 1(D4)
WRTS
WRTLN #""
SUB SP #2 SP
POP D4
RET
L11:
PUSH D3
MOV SP D3
ADD SP #3 SP
MOV -4(D3) 1(D3)
PUSH 1(D3)
PUSH D3
PUSH #1
ADDS
CALL L12
SUB SP #2 SP
SUB SP #3 SP
POP D3
RET
L10:
PUSH D2
MOV SP D2
ADD SP #3 SP
MOV -4(D2) 1(D2)
PUSH 1(D2)
PUSH D2
PUSH #1
ADDS
CALL L11
SUB SP #2 SP
SUB SP #3 SP
POP D2
RET
L9:
PUSH D1
MOV SP D1
ADD SP #7 SP
MOV -4(D1) 3(D1)
MOV -6(D1) 2(D1)
MOV -8(D1) 1(D1)
PUSH #"trying the whole imbedded thing"
WRTS
PUSH 3(D1)
WRTS
WRTLN #""
PUSH 1(D1)
PUSH 2(D1)
ADDSF
CASTSI
POP 5(D1)
PUSH 5(D1)
PUSH D1
PUSH #5
ADDS
CALL L10
SUB SP #2 SP
PUSH #"This string was returned as a value"
POP 4(D1)
MOV 4(D1) -9(D1)
SUB SP #7 SP
POP D1
RET
L13:
PUSH D1
MOV SP D1
ADD SP #2 SP
MOV -3(D1) 1(D1)
PUSH #5
PUSH @1(D1)
ADDS
POP @1(D1)
PUSH #"Variable x should be changed to "
WRTS
PUSH @1(D1)
WRTS
WRTLN #""
SUB SP #2 SP
POP D1
RET
L15:
PUSH D2
MOV SP D2
ADD SP #2 SP
MOV -3(D2) 1(D2)
PUSH #"In refCheck 3 value is: "
WRTS
PUSH @1(D2)
WRTS
WRTLN #""
PUSH #""
WRTS
WRTLN #""
SUB SP #2 SP
POP D2
RET
L14:
PUSH D1
MOV SP D1
ADD SP #5 SP
MOV -3(D1) 3(D1)
MOV -5(D1) 2(D1)
MOV -8(D1) 1(D1)
PUSH @2(D1)
PUSH @3(D1)
ADDSF
POP @2(D1)
PUSH #"X in refcheck2 is "
WRTS
PUSH @2(D1)
WRTS
WRTLN #""
PUSH @3(D1)
PUSH 3(D1)
CALL L15
SUB SP #2 SP
SUB SP #5 SP
POP D1
RET
L1:
PUSH D0
MOV SP D0
ADD SP #14 SP
PUSH #"Welcome to my program (^_^ )"
WRTS
WRTLN #""
PUSH #"Please enter an integer to find the factorial of:"
WRTS
WRTLN #""
RD 2(D0)
PUSH #0
PUSH #1
SUBS
NEGS
BRFS L16
PUSH #0
PUSH 2(D0)
PUSH D0
PUSH #2
ADDS
CALL L2
SUB SP #2 SP
WRTS
WRTLN #""
BR L17
L16:
PUSH #"-1"
WRTS
WRTLN #""
L17:
PUSH #100
PUSH #2
DIVS
PUSH #-1
CALL L5
SUB SP #2 SP
PUSH #0
PUSH #9
PUSH #3
DIVS
PUSH #-1
CALL L2
SUB SP #2 SP
PUSH #-1
CALL L5
SUB SP #2 SP
PUSH #5
PUSH #2
MODS
POP 1(D0)
PUSH 1(D0)
NEGS
WRTS
WRTLN #""
PUSH #1
POP6(D0)
PUSH #0
POP7(D0)
PUSH 6(D0)
WRTS
PUSH 7(D0)
WRTS
WRTLN #""
PUSH 7(D0)
PUSH 6(D0)
ANDS
POP7(D0)
PUSH 7(D0)
WRTS
WRTLN #""
PUSH 7(D0)
PUSH 6(D0)
ORS
POP7(D0)
PUSH 7(D0)
WRTS
WRTLN #""
PUSH #1
PUSH #2
ADDS
NEGS
WRTS
WRTLN #""
PUSH #15
PUSH #15
MULS
PUSH #5
DIVS
PUSH #1
ADDS
PUSH #2
PUSH #2
MULS
SUBS
POP 1(D0)
PUSH #"From *main* otherthing is: "
WRTS
PUSH 1(D0)
WRTS
WRTLN #""
CALL L8
PUSH #"From *main* otherthing still is: "
WRTS
PUSH 1(D0)
WRTS
WRTLN #""
PUSH #7.0
PUSH #2.1
MULSF
PUSH #0.6
PUSH #13
CASTSF
DIVSF
SUBSF
PUSH #0
PUSH #13
PUSH #11
SUBS
PUSH #-1
CALL L2
SUB SP #2 SP
CASTSF
MULSF
POP 3(D0)
PUSH 3(D0)
WRTS
WRTLN #""
PUSH #""
PUSH #0.001
PUSH #-1
PUSH #1.23
PUSH #-1
PUSH #"String as input argument"
PUSH #-1
CALL L9
SUB SP #6 SP
WRTS
WRTLN #""
PUSH #"X starts at "
WRTS
PUSH 1(D0)
WRTS
WRTLN #""
PUSH 1(D0)
PUSH D0
PUSH #1
ADDS
CALL L13
SUB SP #2 SP
PUSH #"X is now "
WRTS
PUSH 1(D0)
WRTS
PUSH #" in main"
WRTS
WRTLN #""
PUSH #"floatMathTest start: "
WRTS
PUSH 3(D0)
WRTS
WRTLN #""
PUSH #10
PUSH #3
DIVS
PUSH #-1
PUSH 3(D0)
PUSH D0
PUSH #3
ADDS
PUSH 3(D0)
PUSH D0
PUSH #3
ADDS
CALL L14
SUB SP #6 SP
PUSH #"floatMathTest is now "
WRTS
PUSH 3(D0)
WRTS
PUSH #" in main"
WRTS
WRTLN #""
PUSH #5
POP 1(D0)
L18:
PUSH 1(D0)
WRTS
PUSH #" "
WRTS
PUSH 1(D0)
PUSH #3
SUBS
POP 1(D0)
PUSH 1(D0)
PUSH #0
CMPLTS
BRFS L18
PUSH #5
NEGS
POP 1(D0)
PUSH 1(D0)
PUSH #20
ADDS
PUSH #1
ADDS
L19:
BEQ 1(D0) -1(SP) L20
PUSH #"otherthing is "
WRTS
PUSH 1(D0)
WRTS
WRTLN #""
PUSH 1(D0)
PUSH #1
ADDS
POP 1(D0)
BR L19
L20:
CASTSI
POP 1(D0)
PUSH #1
POP4(D0)
PUSH #5
CASTSF
PUSH #6.5
ADDSF
WRTS
WRTLN #""
PUSH #"Thank you for using this!"
WRTS
WRTLN #""
SUB SP #14 SP
POP D0
HLT
