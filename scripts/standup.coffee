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
    "@channel HEY MINIONS! DON'T FORGET!",
    "What did you do yesterday?",
    "What will you do today?",
    "Are there any impediments in your way?"
  ]

  burn_questions = [
    "What's up guys? Aren't ya forgetting something?! :unamused:"
    "What did you do yesterday?",
    "What will you do today?",
    "Are there any impediments in your way?"
  ]

  robot.respond /(what are the )?standup questions(\?)?(.*)/i, (msg) ->
    people = msg.match[3]

    if people.length == 0
      robot.messageRoom "#daily-stand-up-goals", questions.join("\n")
    else
      robot.messageRoom "#daily-stand-up-goals", people + "\n" + burn_questions.join("\n")

