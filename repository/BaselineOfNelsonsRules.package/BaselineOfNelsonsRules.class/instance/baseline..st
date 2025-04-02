baselines
baseline: spec

	<baseline>
	spec for: #common do: [ 
		spec package: 'NelsonsRules'.
		spec group: 'Core' with: #( 'NelsonsRules' ).
		spec group: 'default' with: #( 'Core' ) ]