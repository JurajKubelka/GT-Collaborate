connection
connect
	"True means, we are connecting. False means, we are already connected."
	^ self basicConnect or: [ remoteObject isNil ]