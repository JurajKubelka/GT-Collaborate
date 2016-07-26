private
basicExecute
	self logCr: #updating.
	[ tracker openIssues do: [ :eachCase |
		cases updateCase: eachCase ] 
	] on: NetworkError, PrimitiveFailed do: [ :ex | self announceCannotConnect ].
	self announceUpdateFinished.
	self logCr: #end_updating.
