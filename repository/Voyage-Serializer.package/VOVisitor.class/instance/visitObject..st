visitor
visitObject: anObject
	1 to: anObject class instSize do: [ :index | 
		(anObject instVarAt: index) acceptVoyage: self ].