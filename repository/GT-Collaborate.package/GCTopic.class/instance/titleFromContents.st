accessing
titleFromContents
	^ self contents title ifNil: [ '<empty title>' ]