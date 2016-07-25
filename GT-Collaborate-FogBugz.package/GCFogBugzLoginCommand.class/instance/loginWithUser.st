private
loginWithUser
	^ GCFogBugsSettings uniqueInstance login 
			ifEmpty: [ false ]
			ifNotEmpty: [ :aLogin | 
				GCFogBugsSettings uniqueInstance password 
					ifEmpty: [ false ]
					ifNotEmpty: [ :aPasword |
						tracker logOnWithEmail: aLogin password: aPasword.
						GCFogBugsSettings uniqueInstance token: tracker identifyingToken.
						true ] ]