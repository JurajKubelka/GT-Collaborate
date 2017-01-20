as yet unclassified
buildFogBugzLogin: composite 
	^ composite
		when: [ :aSprint | aSprint isAuthorized not ];
		with: [ :com |
			com tabulator
				column: #fogbugzLogin; column: #fogbugzPassword;
				with: [ :tab |
					tab transmit to: #fogbugzLogin; andShow: [ :a |
						a label ].
					tab transmit to: #fogbugzPassword; andShow: [ :a |
						a text ] ]
		];	
		yourself