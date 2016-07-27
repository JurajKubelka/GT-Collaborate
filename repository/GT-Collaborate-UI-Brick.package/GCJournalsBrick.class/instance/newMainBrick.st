instance creation
newMainBrick
	^ GCBrickBuilder2 new 
		journalHolder: self journalHolder;
		owner: self;
		newMainBrick