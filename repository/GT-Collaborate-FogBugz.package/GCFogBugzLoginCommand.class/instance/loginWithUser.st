private
loginWithUser
	^ self credentialsLogin 
			ifEmpty: [ false ]
			ifNotEmpty: [ :aLogin | 
				self credentialsPassword 
					ifEmpty: [ false ]
					ifNotEmpty: [ :aPasword |
						tracker logOnWithEmail: aLogin password: aPasword.
						GCFogBugzSettings uniqueInstance token: tracker identifyingToken.
						true ] ]