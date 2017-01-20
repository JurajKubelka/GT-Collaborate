build ui
buildTabulator: aGLMTabulator
	^ aGLMTabulator 
		row: #login size: 30; 
		row: #list;
		with: [ :tab |
			tab transmit to: #list; andShow: [ :a | 
				self buildColumns: a tabulator ] ];
		with: [ :tab |
			tab transmit to: #login; andShow: [ :a |
				self buildFogBugzLogin: a ] ];
		yourself