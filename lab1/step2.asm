bcdb	org     $800
		ldaa	bcdin
		anda	#$f0
		
		lsra
		tfr		a,b
		lsra
		lsra
		psha
		addb	1,sp+
		ldaa	bcdin
		anda	#$0f
		psha
		addb	1,sp+
		stab	binout
		stop
bcdin	fcb		$35
binout	rmb		1
		end
		