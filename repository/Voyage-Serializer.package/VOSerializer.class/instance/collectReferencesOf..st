private
collectReferencesOf: aCollection 
	|  rootReferences |
	
	rootReferences := Dictionary new: aCollection size.
	aCollection withIndexDo: [ :each :index |
		rootReferences 
			at: each
			put: (VORootReference root: each reference: index) ].
		
	^ rootReferences