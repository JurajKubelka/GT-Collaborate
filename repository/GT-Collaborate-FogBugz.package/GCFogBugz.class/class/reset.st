accessing
reset
	<script>
	"self reset"
	uniqueInstance ifNotNil: [ :instance | instance unsubscribeHooks ].
	uniqueInstance := nil.