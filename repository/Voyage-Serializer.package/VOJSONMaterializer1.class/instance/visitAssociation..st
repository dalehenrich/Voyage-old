visitor
visitAssociation: anAssociation
	| key value |
	
	anAssociation key acceptVoyage: self.
	key := self pop.
	
	anAssociation value acceptVoyage: self.
	value := self pop.

	self push: key -> value.

	