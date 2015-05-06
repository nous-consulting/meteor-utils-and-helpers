Package.describe({
  name: 'nous:utils-and-helpers',
  version: '0.1.0',
  summary: 'Nous Meteor utils and helpers.',
  git: '',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.1.0.2');
  api.use('coffeescript');

  api.addFiles('utils.coffee');
  api.addFiles('array.coffee');
  api.addFiles('properties.coffee');
  api.addFiles('strings.coffee');

  api.export('NousUtils');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('nous:utils-and-helpers');
  api.addFiles('utils-and-helpers-tests.js');
});
