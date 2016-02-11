visitor
visitDictionary: aDictionary 
	| serialized |
	
	serialized := self pushStream: [ 
		aDictionary keysAndValuesDo: [ :key :value | 
			key acceptVoyage: self.
			value acceptVoyage: self ] ].
	stream nextPut: (Dictionary newFromPairs: serialized).