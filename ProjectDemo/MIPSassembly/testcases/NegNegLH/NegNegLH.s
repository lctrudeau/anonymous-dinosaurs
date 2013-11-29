main:	lb $v0, 68($zero)      # initialize $v0 = 5
	lb $a3, 64($zero)      # initialize $a3 = 3
	lb $v1, 69($a3)        # initialize $v1 = 12
	sub $a0, $a3, $v0      # $a0 <= 3 - 5 = -2
	sub $a1, $a0, $v1      # $a1 <= -2 -12 = -14
	add $a1, $a1, $a1      # $a1 <= -14-14 = -28
	beq $a1, $a3, end      # shouldn’t be taken
	slt $a2, $v1, $a0      # $a1 <= 12 < 7 = 0
	beq $a2, $zero, around # should be taken
	lb $a1, 0($zero)       # shouldn’t happen
                               
around: slt $a2, $a3, $v0      # $a2 <= 3 < 5 = 1
	add $a3, $a1, $a1      # $a3 <= -28 - 28 = -56
	mul $a3, $a3, $a3      # $a3 (reg7) <= (-56)*(-56) = 3136 --> UH = 24, LH = 64
	j end                  # should be taken
                               
	lb $a3, 0($zero)       # shouldn’t happen
end: 	sb $a2, 71($v0)        # write adr 76 <= 64 !! SOS --> store and check the paired register 

	.dw 3   	  	# 00000003
	.dw 5			# 00000005
	.dw 12			# 0000000c
