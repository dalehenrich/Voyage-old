accessing
repository: aRepository
	^WACurrentSession value 
		perform: self repositorySelector asMutator
		with: aRepository