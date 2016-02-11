as yet unclassified
materializeInstances: aDictionary
	aDictionary keysAndValuesDo: [ :id :map | 
		(references includesKey: id) 
			ifFalse: [ 
				references 
					at: id 
					put: (VOJSONMaterializer1 new startOn: map) ] ].