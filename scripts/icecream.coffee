TIMEZONE = "America/Costa_Rica"
REMINDER_TIME = "0 50 14 * * 1-5" # Monday-Friday 2.50pm
ROOM = "#random"

cronJob = require('cron').CronJob

module.exports = (robot) ->
  call = "@channel Hey y'all!\n"
  phrases = [
    "Anyone :ice_cream: at :clock3:?",
    "There seems to be a beloved event ( :icecream: ) scheduled in the hearts of the people at :clock3: ... anybody in?",
    "Here's a sweet reminder -> :icecream: at :clock3:, brought to y'all by Moyo",
    "Pops wants you! :icecream: at :clock3:",
    "How 'bout we get that #fat2016 going? :ice_cream: at :clock3:",
    "Come to the dark side! We have :ice_cream: at :clock3:!"
  ]

  reminder = new cronJob REMINDER_TIME, -> robot.messageRoom ROOM, randomPhrase()
  null
  true
  TIMEZONE

  reminder.start()

  randomPhrase = -> return call + phrases[Math.floor(Math.random() * phrases.length)]
