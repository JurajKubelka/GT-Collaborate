private
loginWithToken
	^ self credentialsToken 
			ifEmpty: [ false ]
			ifNotEmpty: [ :aToken | 
				tracker identifyingToken: aToken.
				true ]