private - building
buildCaseIn: composite
	^ composite 
		custom: GCFogBugzCasePresentation new;
		custom: (GLMDynamicPresentation new
			title: [ :case | 'Room #', case id asString ];
			display: [ :case | MQTTChatRoomPresentation new 
				startOn: case room;
				title: nil ];
			yourself ) 