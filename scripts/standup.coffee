# Description:
#   Responds with the questions to answer on the daily standup
#
# Commands:
#   pernixbot what are the standup questions?
#
# Author:
#   ajacksified, brandonvalentine
module.exports = (robot) ->
  questions = [
    "What did you do yesterday?",
    "What will you do today?",
    "Are there any impediments in your way?"
  ]

  robot.respond /(what are the )?standup questions(\?)?/i, (msg) ->
    msg.send questions.join("\n")
