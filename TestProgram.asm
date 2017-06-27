	
	.text
	# Initializations
	addi $t0,$zero,2
	addi $t1,$zero,3
	addi $t2,$zero,7
	addi $t3,$zero,1
	 
	# Moving values
	add $s0,$t0,$zero
	add $s1,$t1,$zero
	add $s0,$t2,$zero
	add $s4,$t3,$zero
	
	# Basic operations
	add $t3,$t0,$t1
	or  $t4,$t1,$t2
	and $t4,$t1,$t2
	addi $t5,$t4,1
	
	# 2's complement of register $t0
	nor $at,$t0,$t0
	addi $t0,$at,1
	
	# Move register $t0 to $t6
	add $t6,$zero,$t0
	
	# Swap registers $t1 and $t2
	addi $t0,$zero,10
	addi  $t1,$zero, 9
	addi  $t2,$zero, 0x0F
	
	# if-else example
	beq $t0,$t1,else
	addi $t1,$t1,1
	beq $t0,$t1,end
else:
	addi $t2,$t2,-1
end:
	
	# loop example
	addi $t8,$zero,4
	addi $t9,$zero,8
loop:
	add $t9,$t9,$t8
	addi $t8,$t8,-1
	bne $t8,$zero,loop
	
	add $zero,$zero,$zero
	
	
	
	
