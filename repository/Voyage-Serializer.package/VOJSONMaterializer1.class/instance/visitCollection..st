visitor
visitCollection: aCollection 
	| collection |
	collection := self push: (aCollection species new: aCollection size).
	aCollection do: [ :each | 
		each acceptVoyage: self.
		collection add: self pop ]