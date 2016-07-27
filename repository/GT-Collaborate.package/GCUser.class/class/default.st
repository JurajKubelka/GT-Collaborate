instance creation
default
	"self default"
	^ self new 
			name: Author uniqueInstance fullName;
			yourself