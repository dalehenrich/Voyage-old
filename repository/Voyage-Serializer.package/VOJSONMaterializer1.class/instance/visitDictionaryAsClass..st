visitor
visitDictionaryAsClass: aDictionary
	self push: (Smalltalk at: (aDictionary at: '#referenceOf') asSymbol)