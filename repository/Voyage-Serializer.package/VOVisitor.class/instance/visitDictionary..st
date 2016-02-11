visitor
visitDictionary: aDictionary
	aDictionary keysAndValuesDo: [ :key :value | 
		key acceptVoyage: self.
		value acceptVoyage: self ] 
	