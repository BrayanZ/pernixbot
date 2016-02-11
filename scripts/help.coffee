module.exports = (robot) ->
  robot.respond /commands/i, (msg) ->
    msg.send "Here's a list of what I can do: https://github.com/BrayanZ/pernixbot/blob/master/COMMANDS.md"