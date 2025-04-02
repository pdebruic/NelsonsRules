rules
ruleFive

	"Two (or three) out of three points in a row are more than 2 standard deviations from the mean in the same direction."

	"There is a medium tendency for samples to be mediumly out of control.
The side of the mean for the third point is unspecified."

	| twoStDev |
	data size >= 3 ifFalse: [ ^ 'N/A' ].
	twoStDev := 2 * stdDev.
	1 to: data size - 2 do: [ :ind | 
		| subset count diff upCount downCount |
		subset := data copyFrom: ind to: ind + 2.
		upCount := downCount := count := 0.
		subset do: [ :pt | 
			diff := pt - mean.
			diff abs > twoStDev ifTrue: [ 
				count := count + 1.
				diff > 0
					ifTrue: [ upCount := upCount + 1 ]
					ifFalse: [ downCount := downCount + 1 ] ] ].
		(count > 1 and: [ downCount > 1 or: [ upCount > 1 ] ]) ifTrue: [ 
			^ true ] ].
	^ false