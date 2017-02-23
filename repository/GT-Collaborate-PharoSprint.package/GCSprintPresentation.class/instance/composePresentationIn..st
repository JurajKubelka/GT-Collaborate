building
composePresentationIn: browser
	^ browser tabulator
		row: [ :row | row column: #proposedAndAll; column: #taken; column: #done ];
		row: #details;
		with: [ :tabulator |
			tabulator transmit to: #proposedAndAll; andShow: [ :composite | 
				composite 
					custom: (GCCaseProposedListPresentation new);
					custom: (GCCaseAllListPresentation new) ] ];
		with: [ :tabulator |
			tabulator transmit to: #taken; andShow: [ :composite | 
				composite custom: (GCCaseTakenListPresentation new) ] ];
		with: [ :tabulator |
			tabulator transmit to: #done; andShow: [ :composite | 
				composite custom: (GCCaseDoneListPresentation new) ] ];
		with: [ :tabulator |
			tabulator transmit from: #proposedAndAll; to: #details; andShow: [ :composite |
				composite 
					custom: GCFogBugzCasePresentation new;
					custom: (GLMDynamicPresentation new
						title: [ :case | 'Room #', case id asString ];
						display: [ :case | MQTTChatRoomPresentation new 
							startOn: case room;
							title: nil ];
						yourself ) ] ];
		with: [ :tabulator |
			tabulator transmit from: #taken; to: #details; andShow: [ :composite |
				composite custom: (GCFogBugzCasePresentation new
					yourself) ] ];
		with: [ :tabulator |
			tabulator transmit from: #done; to: #details; andShow: [ :composite |
				composite custom: (GCFogBugzCasePresentation new
					yourself) ] ];
		yourself