as yet unclassified
materializeDocuments
	(self references 
		select: [ :each | each isKindOf: PRCase ])
		do: [ :each | 
			each document 
				ifNotNil: [ each document: (PRDocumentParser parse: each document) ].
			each properties 
				at: #documents
				ifPresent: [ :docs | 
					docs copy keysAndValuesDo: [ :key :value | 
						value ifNotNil: [
							docs at: key put: (PRDocumentParser parse: value ) ] ] ] ].