initialize-release
unsubscribeHooks
	hooks ifNotNil: [ :aCollection | 
		aCollection do: [ :eachHook | eachHook unsubscribeFrom: self ] ].
	hooks := nil