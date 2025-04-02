accessing
setTestResults

	testResults := #( #ruleOne #ruleTwo #ruleThree #ruleFour #ruleFive
	                  #ruleSix #ruleSeven #ruleEight ) collect: [ :ea | 
		               ea -> (self perform: ea) ]