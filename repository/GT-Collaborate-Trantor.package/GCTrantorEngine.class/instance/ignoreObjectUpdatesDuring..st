announcement handling
ignoreObjectUpdatesDuring: aBlock.
	mutex critical: [ 
		ignoreObjectUpdates := true.
		[ aBlock value ]
		ensure: [ ignoreObjectUpdates := false ] ]