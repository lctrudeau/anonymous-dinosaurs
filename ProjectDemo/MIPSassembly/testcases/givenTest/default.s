main:	lb $v0, 68($zero)      # initialize $2 = 5
	lb $a3, 64($zero)      # initialize $7 = 3
	lb $v1, 69($a3)        # initialize $3 = 12
	or $a0, $a3, $v0       # $4 <= 3 or 5 = 7
	and $a1, $v1, $a0      # $5 <= 12 and 7 = 4
	add $a1, $a1, $a0      # $5 <= 4 + 7 = 11
	beq $a1, $a3, end      # shouldn’t be taken
	slt $a2, $v1, $a0      # $6 <= 12 < 7 = 0
	beq $a2, $zero, around # should be taken
	lb $a1, 0($zero)       # shouldn’t happen
                               
around: slt $a2, $a3, $v0      # $6 <= 3 < 5 = 1
	add $a3, $a2, $a1      # $7 <= 1 + 11 = 12
	sub $a3, $a3, $v0      # $7 <= 12 - 5 = 7
	j end                  # should be taken
                               
	lb $a3, 0($zero)       # shouldn’t happen
end: 	sb $a3, 71($v0)        # write adr 76 <= 7

	.dw 3   	  	# 00000003
	.dw 5			# 00000005
	.dw 12			# 0000000c
