Function::nousProp = (props) ->
  @properties ?= {}
  for own name, prop of props
    @properties[name] = prop
    Object.defineProperty @prototype, name, get: prop, enumerable:true

Function::property = (prop, desc) ->
  Object.defineProperty @prototype, prop, desc

