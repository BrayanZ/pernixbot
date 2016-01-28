# Description:
#   Amonesta a alguien
#
# Dependencies:
#   None
#
# Configuration:
#
# Commands:
#   hubot amoneste a <alguien> - Amonesta a alguien
#
# Author:
#   BrayanZ

module.exports = (robot) ->
  robot.respond /amoneste (a )?(@?\w+)/, (msg) ->
    query = msg.match[2]
    msg.send("Hey #{query}, damn it Jerry!")
