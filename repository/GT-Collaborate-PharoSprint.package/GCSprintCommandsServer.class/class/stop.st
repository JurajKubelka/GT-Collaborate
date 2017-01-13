actions
stop
	"self stop"
	<script>
	uniqueInstance ifNotNil: [ :anInstance | anInstance stop ]