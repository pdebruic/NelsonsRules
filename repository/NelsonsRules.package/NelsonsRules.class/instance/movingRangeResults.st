rules
movingRangeResults
	|movingRangeData arr max min rangeSize | 
	movingRangeData := OrderedCollection new. 
	rangeSize:=self movingRangeSize.
	(1 to: data size - self movingRangeSize) do:[:ind |  arr:=data copyFrom: ind to: ind+rangeSize -1.
		min:=arr min.
		max:=arr max.
		movingRangeData add:(max- min)].
	^#(#ruleOne: #ruleTwo: #ruleThree: #ruleFour:) collect:[:ea | ea -> (self perform:ea with: movingRangeData )]