moment = require('moment')
timezone = require('moment-timezone')

TIME_ZONE = "America/Costa_Rica"

module.exports = (robot) ->
  
  dateToday = moment()
  costaRica = timezone(dateToday, TIME_ZONE)
  hour = moment(costaRica).get('hour')
  work_hours = [13, 17]

  robot.respond /[\s\S]/i, (msg) ->
    if hour < work_hours[0] || hour > work_hours[1]
      msg.send randomCall(msg.message.user.name)

  randomCall = (username) ->
    insults = [
      "@#{username} What are you trying to do punk!? :unamused:",
      "@#{username} Hey punk! What ya think ye're doing?! :rage:",
      "Can you guys believe this punk @#{username}?! making ME work after hours :angry:",
      "Chill dude! @#{username}, we're off work now...",
      "WHOAAA! ... You scared me creep! @#{username}",
      "Why you making me work at this time @#{username}?! This is abuse! :shakefist:",
      "You're on my blacklist now @#{username}!",
      "Dammit Jerry! @#{username}"
    ]

    return insults[Math.floor(Math.random() * insults.length)]