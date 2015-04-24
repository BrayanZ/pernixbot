calcTime = (offset) ->
  d = new Date()
  utc = d.getTime() + (d.getTimezoneOffset() * 60000)
  nd = new Date(utc + (3600000*offset))
  nd.toLocaleString()

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "PONG"

  robot.respond /ADAPTER$/i, (msg) ->
    msg.send robot.adapterName

  robot.respond /ECHO (.*)$/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /TIME$/i, (msg) ->
    msg.send "#{calcTime(-6)}"
