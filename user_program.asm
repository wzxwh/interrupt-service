	.ORIG	x3000
STACK	.BLKW	4
	LEA	R6, STACK
	ADD	R6, R6, #3
	LD	R4, S
	STI	R4, V
	AND	R5, R5, #0
ENABLE	AND	R4, R4, #0
	LDI	R2, KBSR
	LD	R1, C
	NOT	R2, R2
	NOT	R1, R1
	AND	R2, R1, R2
	NOT	R2, R2
	STI	R2, KBSR
	NOT	R5, R5
	BRn	PRINT1
	BRz	PRINT11
PRINT1	AND	R3, R3, #0
	ADD	R3, R3, #7
LOOP	LEA	R0, ONE
	PUTS
	JSR	DELAY
	LEA	R0, ONE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	ADD	R3, R3, #-1
	BRp	LOOP
	LEA	R0, ONE
	PUTS
	JSR	DELAY
	LEA	R0, ONE
	PUTS
	JSR	DELAY
	LD	R0, ENTER
	OUT
	AND	R3, R3, #0
	ADD	R3, R3, #6
PRINT2	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
AGAIN	LEA	R0, ONE
	PUTS
	JSR	DELAY
	LEA	R0, ONE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	ADD	R3, R3, #-1
	BRp	AGAIN
	LEA	R0, ONE
	PUTS
	JSR	DELAY
	LEA	R0, ONE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LD	R0, ENTER
	OUT
	BRnzp	PRINT1
PRINT11	AND	R3, R3, #0
	ADD	R3, R3, #7
LOOP2	LEA	R0, TWO
	PUTS
	JSR	DELAY
	LEA	R0, TWO
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	ADD	R3, R3, #-1
	BRp	LOOP2
	LEA	R0, TWO
	PUTS
	JSR	DELAY
	LEA	R0, TWO
	PUTS
	JSR	DELAY
	LD	R0, ENTER
	OUT
	AND	R3, R3, #0
	ADD	R3, R3, #6
PRINT22	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
AGAIN2	LEA	R0, TWO
	PUTS
	JSR	DELAY
	LEA	R0, TWO
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	ADD	R3, R3, #-1
	BRp	AGAIN2
	LEA	R0, TWO
	PUTS
	JSR	DELAY
	LEA	R0, TWO
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LEA	R0, SPACE
	PUTS
	JSR	DELAY
	LD	R0, ENTER
	OUT
	BRnzp	PRINT11
DELAY	ST	R1, SAVER1
	LD	R1, COUNT
REP	ADD	R1, R1, #-1
	BRp	REP
	LD	R1, SAVER1
	ADD	R4, R4, #0
	BRzp	SKIP
	LD	R0, ENTER
	OUT
	BRnzp	ENABLE
SKIP	RET
V	.FILL	x0180
S	.FILL	x2000
C	.FILL	x4000
ONE	.STRINGZ	"*"
SPACE	.STRINGZ	" "
TWO	.STRINGZ	"#"
ENTER	.FILL	x000A
COUNT	.FILL	x7FFF
SAVER1	.BLKW	1
KBSR	.FILL	xFE00
	.END
	