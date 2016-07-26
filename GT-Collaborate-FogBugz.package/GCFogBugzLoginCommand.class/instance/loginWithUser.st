private
loginWithUser
	^ self credentialsLogin 
			ifEmpty: [ false ]
			ifNotEmpty: [ :aLogin | 
				self credentialsPassword 
					ifEmpty: [ false ]
					ifNotEmpty: [ :aPasword |
						tracker logOnWithEmail: aLogin password: aPasword.
						GCFogBugsSettings uniqueInstance token: tracker identifyingToken.
						true ] ]