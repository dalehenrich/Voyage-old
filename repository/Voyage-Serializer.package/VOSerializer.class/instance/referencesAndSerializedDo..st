accessing
referencesAndSerializedDo: aBlock 
	self serializedMap 
		keysAndValuesDo: [ :object :serialized | 
			aBlock 
				value: (self referenceOf: object) 
				value: serialized ]