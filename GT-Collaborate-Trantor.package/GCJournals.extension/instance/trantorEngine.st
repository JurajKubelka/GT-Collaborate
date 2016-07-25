*GT-Collaborate-Trantor
trantorEngine
	^ self engines detect: [ :each | each class = GCMultiTrantorEngine ]