announce
announceTopicSelectionChangedFrom: oldTopic to: newTopic ui: aGCTopicBrick
	^ self announce: (GCTopicSelectionChanged new
				previousTopic: oldTopic;
				topic: newTopic;
				ui: aGCTopicBrick;
				yourself)