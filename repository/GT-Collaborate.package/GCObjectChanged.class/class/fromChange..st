instance creation
fromChange: aGCObjectChanged 
	^ self new
			previousValue: aGCObjectChanged previousValue;
			actualValue: aGCObjectChanged actualValue;
			yourself