visitor
visitDictionaryAsReference: aDictionary
	| key reference |
	
	key := aDictionary at: '__id'.
	reference := self referenceMap at: key asNumber.
	
	aDictionary becomeForward: reference.