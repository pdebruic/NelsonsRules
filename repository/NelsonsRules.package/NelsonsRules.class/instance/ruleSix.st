rules
ruleSix

	"Four (or five) out of five points in a row are more than 1 standard deviation from the mean in the same direction."

	"There is a strong tendency for samples to be slightly out of control.
The side of the mean for the fifth point is unspecified."

	| diff |
	data size >= 5 ifFalse: [ ^ 'N/A' ].

	1 to: data size - 4 do: [ :ind | 
		| subset count upCount downCount |
		subset := data copyFrom: ind to: ind + 4.
		upCount := downCount := count := 0.
		subset do: [ :pt | 
			diff := pt - mean.
			diff abs > stdDev ifTrue: [ 
				count := count + 1.
				diff > 0
					ifTrue: [ upCount := upCount + 1 ]
					ifFalse: [ downCount := downCount + 1 ] ] .
				(count > 3 and: [ upCount > 3 or: [ downCount > 3 ] ]) ifTrue: [ 
			^ true ]].
		 ].
	^ false