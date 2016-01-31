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

timeInterval = null

initializeClock = (id, endtime) ->
  timeInterval = setInterval(() ->
    clock = document.getElementById(id)
    if clock == null
      clearInterval(timeInterval)
      return
    t = getTimeRemaining(endtime)
    clock.innerHTML = t.weeks + ' weeks, ' + t.days + ' days<br />' +
                      t.hours + ' hours ' + t.minutes + ' minutes ' +
                      t.seconds + ' seconds'
    if t.total <= 0
      clearInterval(timeInterval)
  ,1000)

window.countdown = () -> initializeClock('clockbox', deadline)
