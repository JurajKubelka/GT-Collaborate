accessing - case
undefinedAndOpen
	^ self fogbugz select: [ :eachCase | eachCase isUndefined and: [ eachCase isOpen ] ]