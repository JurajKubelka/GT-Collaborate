accessing
book
	^ self books ifEmpty: [ GCNullBook default ] ifNotEmpty: [ :aCol | aCol first ]