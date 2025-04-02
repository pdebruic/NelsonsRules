rules
ruleEight

	"Eight points in a row exist, but none within 1 standard deviation of the mean, and the points are in both directions from the mean."

	"Jumping from above to below while missing the first standard deviation band is rarely random."

	data size >= 8 ifFalse: [ ^ 'N/A' ].

	1 to: data size - 7 do: [ :ind | 
		| subset tests val |
		subset := data copyFrom: ind to: ind + 7.
		tests := OrderedCollection new.
		((subset allSatisfy: [ :pt | 
			  val := pt - mean.
			  val abs > stdDev
				  ifTrue: [ tests add: val.
					true ]
				  ifFalse: [ false ] ]) and: [ 
			 (tests collect: [ :ea | ea > 0 ]) asSet size = 2 ]) ifTrue: [ 
			^ true ] ].
	^ false