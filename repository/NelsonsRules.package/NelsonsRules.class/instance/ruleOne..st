rules
ruleOne: someData
"One point is more than 3 standard deviations from the mean."
"One sample  is grossly out of control."
	| upper lower m std |
	m:=someData average.
	std:=someData stdev.
	upper := m + (3 * std).
	lower := m - (3 * std).
	^ someData anySatisfy: [ :pt | pt > upper or: [ pt < lower ] ]