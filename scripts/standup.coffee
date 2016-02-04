# Description:
#   Responds with the questions to answer on the daily standup
#
# Commands:
#   pernixbot what are the standup questions?
#
# Author:
#   ajacksified, brandonvalentine
TIMEZONE = "America/Costa_Rica"
REMINDER_TIME = "*/30 0 8-17 * * 1-5" # Monday-Friday 8am
ROOM = "#daily-stand-up-goals"

cronJob = require('cron').CronJob

module.exports = (robot) ->
  questions = [
    "@channel HEY MINIONS! DON'T FORGET!",
    "What did you do yesterday?",
    "What will you do today?",
    "Are there any impediments in your way?"
  ]

  reminder = new cronJob REMINDER_TIME, -> robot.messageRoom ROOM, questions.join("\n")
  null
  true
  TIMEZONE

  reminder.start()

  robot.respond /(what are the )?standup questions(\?)?/i, (msg) ->
    msg.send questions.join("\n")
