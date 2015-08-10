Template.registerHelper "isEq", (val1, val2) -> val1 == val2
Template.registerHelper "isIn", (val, array) -> val in array
Template.registerHelper "oneOf", (val1, val2) -> val1 or val2
