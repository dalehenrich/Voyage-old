baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'Voyage-Model-Core';
				package: 'Voyage-Memory-Core' with: [ spec requires: 'Voyage-Model-Core' ];
				package: 'Voyage-Memory-Tests' with: [ spec requires: #('Voyage-Tests' 'Voyage-Memory-Core') ];
				package: 'Voyage-Tests' with: [ spec requires: 'Voyage-Model-Core' ];
				yourself.
			spec
				group: 'default' with: #('Core' 'Tests');
				group: 'Core' with: #('Voyage-Model-Core');
				group: 'Memory' with: #('Voyage-Memory-Core');
				group: 'Tests' with: #('Voyage-Tests' 'Voyage-Memory-Tests');
				yourself ].
	spec
		for: #pharo
		do: [ 
			spec
				project: 'Magritte3'
					with: [ 
							spec
								className: 'ConfigurationOfMagritte3';
								file: 'ConfigurationOfMagritte3';
								version: #stable;
								repository: 'http://www.smalltalkhub.com/mc/Magritte/Magritte3/main' ];
				project: 'MongoTalk'
					with: [ 
							spec
								className: 'ConfigurationOfMongoTalk';
								file: 'ConfigurationOfMongoTalk';
								version: #stable;
								repository: 'http://www.smalltalkhub.com/mc/MongoTalkTeam/mongotalk/main' ];
				baseline: 'Tugrik' with: [ spec repository: 'github://dalehenrich/Tugrik:master/repository' ];
				yourself.
			spec
				package: 'Voyage-Mongo-Core' with: [ spec requires: #('MongoTalk' 'Voyage-Model-Core') ];
				package: 'Voyage-Tugrik-Core' with: [ spec requires: #('Tugrik' 'Voyage-Model-Core' 'Voyage-Mongo-Core') ];
				package: 'Voyage-Mongo-Magritte' with: [ spec requires: #('Magritte3' 'Voyage-Mongo-Core') ];
				package: 'Voyage-Seaside-Container' with: [ spec requires: 'Voyage-Model-Core' ];
				package: 'Voyage-Mongo-Tests' with: [ spec requires: 'Voyage-Tests' ];
				package: 'Voyage-Tugrik-Tests' with: [ spec requires: 'Voyage-Mongo-Tests' ];
				package: 'Voyage-Mongo-Utils' with: [ spec requires: #('Voyage-Mongo-Core') ];
				yourself.
			spec
				group: 'default' with: #('Mongo' 'Memory' 'GemStone');
				group: 'Mongo' with: #('Voyage-Mongo-Core' 'Voyage-Mongo-Magritte' 'Voyage-Mongo-Utils');
				group: 'Tugrik' with: #('Voyage-Tugrik-Core');
				group: 'Tests' with: #('Voyage-Mongo-Tests' 'Voyage-Tugrik-Tests');
				yourself ].
	spec
		for: #(#'gs3.2.x' #'gs3.3.x' #'gs3.4.x')
		do: [ 
			spec
				package: 'Voyage-GemStone-Server' with: [ spec requires: 'Voyage-Model-Core' ];
				package: 'Voyage-GemStone-Tests-Server' with: [ spec requires: #('Voyage-GemStone-Server') ];
				yourself.
			spec
				group: 'default' with: #('GemStone' 'Memory');
				group: 'GemStone' with: #('Voyage-GemStone-Server');
				group: 'Tests' with: #('Voyage-GemStone-Tests-Server');
				yourself ]