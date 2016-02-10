module.exports = (robot) ->

  frases = [
    "It's getting hot in here, don't ya think? How 'bout some A/C?",
    "Is it just me or we need the A/C on?",
    "If our mascot was a penguin he would be dead by now, turn on the A/C",
    "Hipsters are starting to wear sweaters, please turn the A/C",
    "My sweat is sweating, turn the A/C on!"
  ]

  robot.respond /ac/i, (msg) ->
    robot.messageRoom "#random", randomPhrase()

  randomPhrase = -> return frases[Math.floor(Math.random() * frases.length)]