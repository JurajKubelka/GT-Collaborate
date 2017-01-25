private - build ui
allList: composite
	^ composite fastList 
		title: 'All';
		with: [ :aList | self addFogBugzActions: aList ];
		display: [ :aSprint | | col | 
			col := aSprint undefinedAndOpen.
			col ifEmpty: [ col addFirst: 'nothing to do :-)' ].
			col ];
		format: [ :aCase :aSprint | self allRowFor: aCase sprint: aSprint ];
		rowHeight: [ :presentation | presentation class defaultRowHeight * 2 ];
		with: [ :list | self configureList: list ];
		selectionAct: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase propose: aSprint developer ] ] 
			entitled: 'Propose for Pharo Sprint';
		dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
			aSprint := list entity.
			draggedObject renounce: aSprint developer.
			true ]
