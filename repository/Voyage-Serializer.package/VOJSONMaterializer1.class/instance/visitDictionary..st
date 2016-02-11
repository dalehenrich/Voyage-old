visitor
visitDictionary: aDictionary
	(aDictionary includesKey: '#instanceOf') ifTrue: [ ^ self visitDictionaryAsObject: aDictionary ].
	(aDictionary includesKey: '#referenceOf') ifTrue: [ ^ self visitDictionaryAsClass: aDictionary ].
	(aDictionary includesKey: '__id') ifTrue: [ ^ self visitDictionaryAsReference: aDictionary ].

	self visitDictionaryAsDictionary: aDictionary