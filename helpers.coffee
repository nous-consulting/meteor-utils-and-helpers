Template.registerHelper "pathFor", (routeName) ->
  params = arguments[1].hash
  FlowRouter.path routeName, params

Template.registerHelper "isEq", (val1, val2) -> val1 == val2
Template.registerHelper "isIn", (val, array) -> val in array
Template.registerHelper "oneOf", (val1, val2) -> val1 or val2
