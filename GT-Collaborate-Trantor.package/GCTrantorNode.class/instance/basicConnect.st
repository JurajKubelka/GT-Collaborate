private - accessing
basicConnect
	"True means, we are connecting. False means, we are already connected.
	192.80.24.217 #[ 192 80 24 217 ]
	#[ 127 0 0 1 ]"
	node peeredConnections ifNotEmpty: [ ^ false ].
	[node connectTo: #[ 127 0 0 1 ] port: 8855] 
		on: ConnectionTimedOut
		do: [ :ex | Transcript show: 'Trantor timeout: '; show: ex; cr ].
	^ true