rules
ruleThree: someData

	"Six (or more) points in a row are continually increasing (or decreasing)."
"A trend exists."
	someData size >= 6 ifFalse: [ ^ false ].

	1 to: someData size - 5 do: [ :ind | 
		| subset sorted |
		subset := someData copyFrom: ind to: ind + 5.
		sorted := subset sorted.
		(subset = sorted or: [ subset reverse = sorted ]) ifTrue: [ ^ true ] ].
	^ false