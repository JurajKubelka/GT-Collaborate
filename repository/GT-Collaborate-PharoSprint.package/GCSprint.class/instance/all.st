accessing - case
all
	^ self fogbugz select: [ :eachCase | eachCase isUndefined and: [ eachCase isOpen ] ]