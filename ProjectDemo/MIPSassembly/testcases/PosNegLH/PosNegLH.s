main:	lb $v0, 68($zero)      # initialize $v0 = 5
	lb $a3, 64($zero)      # initialize $a3 = 3
	lb $v1, 69($a3)        # initialize $v1 = 12
	or $a0, $a3, $v0       # $a0 <= 3 or 5 = 7
	add $a1, $v1, $a0      # $a1 <= 12 + 7 = 19
	add $a1, $a1, $a0      # $a1 <= 19 + 7 = 26
	beq $a1, $a3, end      # shouldn’t be taken
	slt $a2, $v1, $a0      # $a1 <= 12 < 7 = 0
	beq $a2, $zero, around # should be taken
	lb $a1, 0($zero)       # shouldn’t happen
                               
around: slt $a2, $a3, $v0      # $a2 <= 3 < 5 = 1
	sub $a3, $a0, $a1      # $a3 <= 7 - 26 = -19
	mul $a3, $a3, $a1      # $a3 (reg7) <= (-19)*26 = -494 --> UH = 11111110 (-2) , LH = 00010010 (18)
	j end                  # should be taken
                               
	lb $a3, 0($zero)       # shouldn’t happen
end: 	sb $a2, 71($v0)        # write adr 76 

	.dw 3   	  	# 00000003
	.dw 5			# 00000005
	.dw 12			# 0000000c
