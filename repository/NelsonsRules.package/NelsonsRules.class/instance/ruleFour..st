rules
ruleFour: someData

	| m last test subset |
	"Fourteen (or more) points in a row alternate in direction, increasing then decreasing.""This much oscillation is beyond noise.
Note that the rule is concerned with directionality only. The position of the mean and the size of the standard deviation have no bearing."
	someData size >= 14 ifFalse: [ ^ 'N/A' ].
	m := someData average.
	last:=nil.
	1 to: someData size - 13 do: [ :ind | 
		subset := someData copyFrom: ind to: ind + 13.

		subset doWithIndex: [ :pt :index | 
			test := index odd
				        ifTrue: [ pt > m ]
				        ifFalse: [ pt < m ].
			last
				ifNil: [ last := test ]
				ifNotNil: [ last = test ifFalse: [ ^ true ] ] ] ].
	^ false