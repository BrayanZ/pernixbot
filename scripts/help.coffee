module.exports = (robot) ->
  robot.respond /(-h)?(\h)?(what can you do?)?(commands)?/i, (msg) ->
    msg.send "Here's a list of what I can do: https://github.com/BrayanZ/pernixbot/blob/master/COMMANDS.md
    \nOr you can just type in `help` and I'll spit the commands list to ya!"