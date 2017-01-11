instance creation
updateWithLogin: stringLogin password: stringPassword
	"Create a new instance, login, and update cases"
	^ self new
			login: stringLogin password: stringPassword;
			login;
			update;
			yourself