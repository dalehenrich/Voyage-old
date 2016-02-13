accessing
reset
	collections := Dictionary new.
	pool ifNotNil: [ pool flush ].
	pool := VOTugrikSessionPool sessionDescription: repository sessionDescription database: repository databaseName.
	pool size: repository poolSize