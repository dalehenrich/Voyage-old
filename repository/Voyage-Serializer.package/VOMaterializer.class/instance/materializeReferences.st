as yet unclassified
materializeReferences
	self references copy withIndexDo: [ :each :index | 
		VOJSONMaterializer2 new 
			referenceMap: self basicReferences;
			startOn: each ]