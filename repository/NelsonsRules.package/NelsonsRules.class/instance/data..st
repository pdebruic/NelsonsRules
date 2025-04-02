accessing
data: someDataValues

	data := someDataValues.
	someDataValues size > 1
		ifTrue: [ 
			mean := someDataValues average.
			stdDev := someDataValues stdev.
			self setTestResults ]
		ifFalse: [ self noApplicableTests ]