NousUtils =
  # Clone for mongo document
  cloneDoc: (doc, override) ->
    x = JSON.parse JSON.stringify doc
    for own name, update of override
      x[name] = update.call doc
    delete x._id
    x

  dateDiff: (a, b) ->
    MS_PER_DAY = 1000 * 60 * 60 * 24
    utc1 = Date.UTC(a.getFullYear(), a.getMonth(), a.getDate())
    utc2 = Date.UTC(b.getFullYear(), b.getMonth(), b.getDate())
    Math.floor((utc2 - utc1) / MS_PER_DAY)

$amount = (item) -> item?.amount ? 0
$converted = (item) -> item?.converted ? 0
