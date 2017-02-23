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
				self buildCaseIn: composite ] ];
		with: [ :tabulator |
			tabulator transmit from: #taken; to: #details; andShow: [ :composite |
				self buildCaseIn: composite ] ];
		with: [ :tabulator |
			tabulator transmit from: #done; to: #details; andShow: [ :composite |
				self buildCaseIn: composite ] ];
		yourself