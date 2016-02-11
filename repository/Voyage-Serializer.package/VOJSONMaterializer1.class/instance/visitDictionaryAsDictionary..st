visitor
visitDictionaryAsDictionary: aDictionary
	| dictionary |
	
	dictionary := self push: (Dictionary new: aDictionary size).
	aDictionary keysAndValuesDo: [ :propName :propValue | 
		| newName newValue |
		
		propName acceptVoyage: self.
		newName := self pop.
		propValue acceptVoyage: self.
		newValue := self pop.
		dictionary at: newName put: newValue ].