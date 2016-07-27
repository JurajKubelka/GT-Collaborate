private
basicExecute
	tracker openIssues do: [ :eachCase |
			cases updateCase: eachCase ].
	self announceUpdateFinished. 