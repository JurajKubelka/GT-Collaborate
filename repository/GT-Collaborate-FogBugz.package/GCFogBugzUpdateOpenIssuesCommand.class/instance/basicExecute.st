private
basicExecute
	self trackerIssues do: [ :eachCase | cases updateCase: eachCase ].
	self announceUpdateFinished