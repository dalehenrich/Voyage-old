visitor
visitDictionaryAsObject: aDictionary
	| reference |
	
	reference := self push: (Smalltalk at: (aDictionary at: '#instanceOf') asSymbol) basicNew.
	aDictionary keysAndValuesDo: [ :propName :propValue | 
		propName = '#instanceOf' ifFalse: [
			propValue acceptVoyage: self.
			reference
				instVarNamed: propName 
				put: self pop ] ].