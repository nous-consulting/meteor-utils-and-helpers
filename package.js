Package.describe({
  name: 'nous:utils-and-helpers',
  version: '0.4.3',
  summary: 'Nous Meteor utils and helpers.',
  git: 'https://github.com/nous-consulting/meteor-utils-and-helpers',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.2.1');
  api.use('coffeescript');
  api.use('templating@1.1.5');
  api.use('momentjs:moment@2.10.6')

  api.addFiles('src/utils.coffee');
  api.addFiles('src/array.coffee');
  api.addFiles('src/properties.coffee');
  api.addFiles('src/strings.coffee');
  api.addFiles(['src/helpers.coffee'], 'client');

  api.export('NousUtils');
  api.export('$amount');
  api.export('$converted');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('nous:utils-and-helpers');
  api.addFiles('utils-and-helpers-tests.js');
});
