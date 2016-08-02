*GT-Collaborate-Trantor-Basic
trantorEngine
	^ self engines detect: [ :each | each class = GCMultiTrantorEngine ]