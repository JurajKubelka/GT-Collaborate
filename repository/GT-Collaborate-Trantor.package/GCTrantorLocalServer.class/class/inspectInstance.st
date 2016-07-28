actions
inspectInstance
	"self inspectInstance"
	<script>
	uniqueInstance ifNotNil: [ :anInstance | anInstance inspect ]