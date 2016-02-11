visitor
visitCollection: aCollection
	| serialized |
	
	serialized := self pushStream: [ 
		aCollection do: [ :each | each acceptVoyage: self ] ]. 
	stream nextPut: serialized.
