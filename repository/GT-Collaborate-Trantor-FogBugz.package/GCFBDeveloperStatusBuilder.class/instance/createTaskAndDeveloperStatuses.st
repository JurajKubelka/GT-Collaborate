private
createTaskAndDeveloperStatuses
	^ individuals collect: [ :each | self createTaskAndDeveloperStatus: each ] as: OrderedCollection 