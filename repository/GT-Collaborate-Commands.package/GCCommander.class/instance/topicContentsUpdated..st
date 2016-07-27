announcement handling
topicContentsUpdated: anAnnouncement
	self addCommand: (Dictionary new
								at: #action put: anAnnouncement actionName;
								at: #id put: anAnnouncement topic uuid asString;
								at: #contents put: (anAnnouncement topic contents accept: self);
								yourself)