build ui
buildTabulator: aGLMTabulator
	aGLMTabulator column: #proposed; column: #taken; column: #done.
	aGLMTabulator transmit to: #proposed; andShow: [ :composite | 
		composite fastList 
			title: 'Proposed';
			with: [ :aList | self addFogBugzActions: aList ];
			display: [ :aSprint | | col | 
				col := aSprint proposed.
				col ifEmpty: [ col addFirst: 'you are done :-)' ].
				col ];
			with: [ :list | self configureList: list ];
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject renounce: aSprint developer.
				aGLMTabulator update.
				true ].
		composite fastList 
			title: 'All';
			with: [ :aList | self addFogBugzActions: aList ];
			display: [ :aSprint | | col | 
				col := aSprint undefinedAndOpen.
				col ifEmpty: [ col addFirst: 'nothing to do :-)' ].
				col ];
			with: [ :list | self configureList: list ];
			selectionAct: [ :list :sprint | 
					list selection ifNotNil: [ :aCase | | aSprint |
						aSprint := list entity.
						aCase propose: aSprint developer ]. 
					aGLMTabulator update. ] 
				entitled: 'Propose for Pharo Sprint';
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject renounce: aSprint developer.
				aGLMTabulator update.
				true ]
			].
	self takenList: aGLMTabulator.
	aGLMTabulator transmit to: #done; andShow: [ :composite |  
		composite fastList
			title: 'Done'; 
			display: [ :aSprint | | col | 
				col := aSprint done sorted: [ :a :b | (aSprint isMyState: a) ].
				col ifEmpty: [ col addFirst: 'be first :-)' ].
				col ];
			with: [ :list | self configureList: list ];
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject finish: aSprint developer.
				aGLMTabulator update.
				true ]
			].

	^ aGLMTabulator