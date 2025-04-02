rules
ruleSeven

	"Fifteen points in a row are all within 1 standard deviation of the mean on either side of the mean."

	"With 1 standard deviation, greater variation would be expected."

	data size >= 15 ifFalse: [ ^ 'N/A' ].

	1 to: data size - 14 do: [ :ind | 
		| subset count |
		subset := data copyFrom: ind to: ind + 14.
		count := 0.
		(subset allSatisfy: [ :pt | (pt - mean) abs < stdDev ]) ifTrue: [ 
			^ true ] ].
	^ false