execute
execute
	| dictionary changed |
	changed := OrderedCollection new.
	dictionary := self onlyLastStatesPerCase.
	fogbugz do: [ :eachCase |
		dictionary 
			at: eachCase id 
			ifPresent: [ :aStateCommand | 
				(eachCase stateCommand: aStateCommand) ifTrue: [ changed add: eachCase ] ] 
			ifAbsent: [ "ignore" ]  ].
	changed ifNotEmpty: [ 
		fogbugz announcer announce: (GCSprintLocalCaseStatesChanged new cases: changed; yourself) ]