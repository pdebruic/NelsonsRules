testing
isInControl
	^testResults allSatisfy:[:assoc | |val | 
		val:=assoc value.
		val isString not and:[val not]]