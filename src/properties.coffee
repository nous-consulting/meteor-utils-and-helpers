Function::nousProp = (props) ->
  @properties ?= {}
  for own name, prop of props
    @properties[name] = prop
    Object.defineProperty @prototype, name, get: prop, enumerable:true

Function::property = (props) ->
  for own name, prop of props
    Object.defineProperty @prototype, name, get: prop, enumerable:true
