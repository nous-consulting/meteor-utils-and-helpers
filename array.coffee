Array::unique = ->
  output = {}
  output[@[key]] = @[key] for key in [0...@length]
  value for key, value of output

Array::merge = (other) -> Array::push.apply @, other

# Will not touch original array, return array without element
Array::exclude = (element) ->
  @filter (el) -> el isnt element

# Will remove element from original array
Array::remove = (element) ->
  index = @indexOf element
  @splice(index, 1)[0] if index isnt -1

# Clean undefined elements from an array
Array::clean = ->
  index = @indexOf undefined
  while index isnt -1
    @splice(index, 1)
    index = @indexOf undefined
  return @
