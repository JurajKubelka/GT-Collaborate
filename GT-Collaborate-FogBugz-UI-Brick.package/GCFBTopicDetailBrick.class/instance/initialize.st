initialization
initialize
	super initialize.
	mouseLeaveAction := [ :anEvent :aBrick |  ].
	self useVerticalLinearLayout.
	self color: Color darkGray.
	self eventList: self newEventList.
	