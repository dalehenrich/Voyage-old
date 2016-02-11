running
setUp
	super setUp.
	repository := VOMongoRepository 
		host: VOMongoRepository defaultHost
		database: 'Voyage-Tests'.