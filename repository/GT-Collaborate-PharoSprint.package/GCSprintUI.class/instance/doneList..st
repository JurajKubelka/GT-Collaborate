private - build ui
doneList: aGLMTabulator
	aGLMTabulator transmit to: #done; andShow: [ :composite |  
		composite fastList
			title: 'Done'; 
			display: [ :aSprint | | col | 
				col := aSprint done sorted: [ :a :b | (aSprint isMyState: a) ].
				col ifEmpty: [ col addFirst: 'be first :-)' ].
				col ];
			format: [ :aCase :aSprint | self doneRowFor: aCase sprint: aSprint ];
			rowHeight: [ :presentation | presentation class defaultRowHeight * 3 ];
			with: [ :list | self configureList: list ];
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject finish: aSprint developer.
				true ]
			].
	^ aGLMTabulator
