accessing
noApplicableTests

	testResults := #( #ruleOne #ruleTwo #ruleThree #ruleFour #ruleFive
	                  #ruleSix #ruleSeven #ruleEight ) collect: [ :ea | 
		               ea -> 'N/A' ]