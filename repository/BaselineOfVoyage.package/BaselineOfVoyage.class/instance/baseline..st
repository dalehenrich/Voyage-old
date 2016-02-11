baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'Voyage-Model-Core';
        package: 'Voyage-Memory-Core'
          with: [ spec requires: 'Voyage-Model-Core' ];
        yourself.
      spec
        group: 'default' with: #('Core' 'Memory' 'Tests');
        group: 'Core' with: #('Voyage-Model-Core');
        group: 'Memory' with: #('Voyage-Memory-Core');
        group: 'Tests' with: #() ].
  spec
    for: #'pharo'
    do: [ 
      spec
        project: 'Magritte3'
          with: [ 
              spec
                className: 'ConfigurationOfMagritte3';
                file: 'ConfigurationOfMagritte3';
                version: #'stable';
                repository:
                    'http://www.smalltalkhub.com/mc/Magritte/Magritte3/main' ];
        project: 'MongoTalk'
          with: [ 
              spec
                className: 'ConfigurationOfMongoTalk';
                file: 'ConfigurationOfMongoTalk';
                version: #'stable';
                repository:
                    'http://www.smalltalkhub.com/mc/MongoTalkTeam/mongotalk/main' ];
        package: 'Voyage-Mongo-Core'
          with: [ spec requires: #('MongoTalk' 'Voyage-Model-Core') ];
        package: 'Voyage-Mongo-Magritte'
          with: [ spec requires: #('Magritte3' 'Voyage-Mongo-Core') ];
        package: 'Voyage-Seaside-Container'
          with: [ spec requires: 'Voyage-Model-Core' ];
        package: 'Voyage-Mongo-Tests';
        package: 'Voyage-Mongo-Utils'
          with: [ spec requires: #('Voyage-Mongo-Core') ].
      spec
        group: 'default' with: #('Mongo');
        group: 'Mongo'
          with:
            #('Voyage-Mongo-Core' 'Voyage-Mongo-Magritte' 'Voyage-Mongo-Utils');
        group: 'Tests' with: #('Voyage-Mongo-Tests') ]