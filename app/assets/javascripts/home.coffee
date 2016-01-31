# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

deadline = 'July 23 2016 14:00:00 GMT-04:00'

getTimeRemaining = (endtime) ->
  t = Date.parse(endtime) - Date.parse(new Date())
  seconds = Math.floor( (t/1000) % 60 )
  minutes = Math.floor( (t/1000/60) % 60 )
  hours = Math.floor( (t/(1000*60*60)) % 24 )
  raw_days = Math.floor( t/(1000*60*60*24) )
  weeks = Math.floor( raw_days/7 )
  days = Math.floor(raw_days - weeks*7)
  total: t,
  weeks: weeks
  days: days,
  hours: hours,
  minutes: minutes,
  seconds: seconds

initializeClock = (id, endtime) ->
  setInterval(() ->
    clock = document.getElementById(id)
    t = getTimeRemaining(endtime)
    clock.innerHTML = t.weeks + ' weeks, ' + t.days + ' days<br />' +
                      t.hours + ' hours ' + t.minutes + ' minutes ' +
                      t.seconds + ' seconds'
    if t.total <= 0
      clearInterval(timeinterval)
  ,1000)

initializeClock('clockbox', deadline)
