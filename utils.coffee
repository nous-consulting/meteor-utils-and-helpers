NousUtils =
  # Clone for mongo document
  cloneDoc: (doc, override) ->
    x = JSON.parse JSON.stringify doc
    for own name, update of override
      x[name] = update.call doc
    delete x._id
    x