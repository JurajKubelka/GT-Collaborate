accessing
title
	^ title ifNil: [ self titleFromContents ]