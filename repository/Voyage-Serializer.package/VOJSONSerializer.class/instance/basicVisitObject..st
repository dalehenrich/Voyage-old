private
basicVisitObject: anObject
	| instVarNames |
	
	instVarNames := anObject class allInstVarNames.
	stream 
		nextPut: '#instanceOf';
		nextPut: anObject className.
	1 to: anObject class instSize do: [ :index | 
		stream nextPut: (instVarNames at: index).
		(anObject instVarAt: index) acceptVoyage: self ]