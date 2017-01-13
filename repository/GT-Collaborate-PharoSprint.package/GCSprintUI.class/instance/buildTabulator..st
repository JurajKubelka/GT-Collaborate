build ui
buildTabulator: aGLMTabulator
	aGLMTabulator column: #proposed; column: #taken; column: #done.
	aGLMTabulator transmit to: #proposed; andShow: [ :a | 
		a list 
			title: 'Proposed';
			display: [ :aSprint | | col | 
				col := aSprint proposed.
				col ifEmpty: [ col addFirst: 'you are done :-)' ].
				col ];
			gcConfigureList: self;
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject renounce: aSprint developer.
				aGLMTabulator update.
				true ].
		a list 
			title: 'All';
			display: [ :aSprint | | col | 
				col := aSprint all.
				col ifEmpty: [ col addFirst: 'nothing to do :-)' ].
				col ];
			gcConfigureList: self;
			selectionAct: [ :list :sprint | 
					list selection ifNotNil: [ :aCase | aCase propose ]. 
					aGLMTabulator update. ] 
				entitled: 'Propose for Pharo Sprint';
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject renounce: aSprint developer.
				aGLMTabulator update.
				true ]
			].
	aGLMTabulator transmit to: #taken; andShow: [:a |  
		a list
			title: 'Taken'; 
			display: [ :aSprint | | col | 
				col := aSprint taken.
				col ifEmpty: [ col addFirst: 'be first :-)' ].
				col ];
			gcConfigureList: self;
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject take: aSprint developer.
				aGLMTabulator update.
				true ]
			].
	aGLMTabulator transmit to: #done; andShow: [:a |  
		a list
			title: 'Done'; 
			display: [ :aSprint | | col | 
				col := aSprint done.
				col ifEmpty: [ col addFirst: 'be first :-)' ].
				col ];
			gcConfigureList: self;
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject finish: aSprint developer.
				aGLMTabulator update.
				true ]
			].

	^ aGLMTabulator