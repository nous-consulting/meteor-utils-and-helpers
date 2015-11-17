Template.registerHelper "isEq", (val1, val2) -> val1 == val2
Template.registerHelper "isIn", (val, array) -> val in array
Template.registerHelper "oneOf", (val1, val2) -> val1 or val2
Template.registerHelper "amount", (item) -> item?amount ? 0

Template.registerHelper "format", (format, args...) ->
  format.replace /\{([0-9]+)\}/g, (m) -> args[m[1]]

## Operations with Dates
########################
Template.registerHelper "formatDate", (datetime, format) ->
  formats =
    compact: "DD.MM"
    short: "DD.MM.YYYY"
    long: "DD MMMM YYYY (ddd)"
    txt: "DD MMM"

  if moment
    if datetime
      date = new Date datetime
      moment(date).format(formats[format])
    else undefined
  else
    datetime

Template.registerHelper "monthByNumber", (month) ->
  months = ["January", "February",
           "March", "April", "May",
           "June", "July", "August",
           "September", "October", "November",
           "December"]
  months[month-1]

Template.registerHelper 'datePickerOptions', ->
  autoclose: true
  format: "dd MM, yyyy"
  orientation: "top"
  todayHighlight: true
  weekStart: 1
