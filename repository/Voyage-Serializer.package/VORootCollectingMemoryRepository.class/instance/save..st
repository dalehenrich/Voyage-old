persistence
save: anObject 
	(VORootCollector new startOn: anObject) 
		do: [ :each | super save: anObject ].