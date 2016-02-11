visitor
visitAssociation: anAssociation
	| serialized |
	
	serialized := self pushStream: [ 
		anAssociation key acceptVoyage: self.
		anAssociation value acceptVoyage: self ].
	
	serialized size = 2 ifFalse: [
		self error: 'bad association serialization' ].
	
	stream nextPut: serialized first -> serialized second.	