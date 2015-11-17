Package.describe({
  name: 'nous:utils-and-helpers',
  version: '0.3.0',
  summary: 'Nous Meteor utils and helpers.',
  git: 'https://github.com/nous-consulting/meteor-utils-and-helpers',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.2.0');
  api.use('coffeescript');
  api.use('templating@1.0.0');

  api.addFiles('utils.coffee');
  api.addFiles('array.coffee');
  api.addFiles('properties.coffee');
  api.addFiles('strings.coffee');
  api.addFiles(['helpers.coffee'], 'client');

  api.export('NousUtils');
  api.export('$amount');
  api.export('$converted');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('nous:utils-and-helpers');
  api.addFiles('utils-and-helpers-tests.js');
});
