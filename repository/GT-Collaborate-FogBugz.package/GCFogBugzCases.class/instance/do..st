enumerating
do: aBlockClosure 
	mutex critical: [ collection do: aBlockClosure ]