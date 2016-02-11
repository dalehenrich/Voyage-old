accessing
repositorySelector
	^repositorySelector ifNil: [ repositorySelector := self class defaultRepositorySelector ]