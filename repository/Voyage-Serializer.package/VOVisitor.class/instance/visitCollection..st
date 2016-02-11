visitor
visitCollection: aCollection 
	aCollection do: [ :each | each acceptVoyage: self ]