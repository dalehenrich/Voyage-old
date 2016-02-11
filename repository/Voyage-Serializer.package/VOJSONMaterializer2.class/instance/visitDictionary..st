visitor
visitDictionary: aDictionary
	(aDictionary includesKey: '__id') 
		ifTrue: [ ^ self visitDictionaryAsReference: aDictionary ].
	super visitDictionary: aDictionary.