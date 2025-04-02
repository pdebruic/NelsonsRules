rules
ruleTwo: someData

	| m |
	"Nine (or more) points in a row are on the same side of the mean.""Some prolonged bias exists."
	someData size >= 9 ifFalse: [ ^ false ].
	m := someData average.
	1 to: someData size - 8 do: [ :ind | 
		| subset |
		subset := someData copyFrom: ind to: ind + 8.
		((subset allSatisfy: [ :ea | ea > m ]) or: [ 
			 subset allSatisfy: [ :ea | ea < m ] ]) ifTrue: [ ^ true ] ].
	^ false