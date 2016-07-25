announcement handling
topicAdded: anAnnouncement
	self addCommand: (Dictionary new
								at: #action put: anAnnouncement actionName;
								at: #id put: anAnnouncement topic uuid asString;
								at: #time put: anAnnouncement topic time;
								at: #title put: anAnnouncement topic title;
								at: #contents put: (anAnnouncement topic contents accept: self);
								yourself)