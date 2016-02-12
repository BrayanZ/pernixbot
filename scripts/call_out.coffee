moment = require('moment')
timezone = require('moment-timezone')

TIME_ZONE = "America/Costa_Rica"
OFFSET = 8

module.exports = (robot) ->
  
  dateToday = moment()
  costaRica = timezone(dateToday, TIME_ZONE)
  hour = moment(costaRica).get('hour')

  robot.respond /[\s\S]/i, (msg) ->
    if !workingHours(hour)
      # robot.messageRoom "#random", randomCall(msg.message.user.name)
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
      "Dammit Jerry! @#{username}",
      "@#{username} Stop working my ass off! :rage:",
      "Getting real tired of your :shit: @#{username}!"
    ]

    return insults[Math.floor(Math.random() * insults.length)] + " | #{hour - OFFSET} | "

  workingHours = (h) ->
    h = h - OFFSET
    return h > 16 and h < 17