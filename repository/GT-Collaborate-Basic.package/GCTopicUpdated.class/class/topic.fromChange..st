instance creation
topic: aGCTopic fromChange: aGCContentsChanged 
	^ (self fromChange: aGCContentsChanged)
			topic: aGCTopic;
			yourself