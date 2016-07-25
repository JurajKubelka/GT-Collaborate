private
loginWithToken
	^ GCFogBugsSettings uniqueInstance token 
			ifEmpty: [ false ]
			ifNotEmpty: [ :aToken | 
				tracker identifyingToken: aToken.
				true ]