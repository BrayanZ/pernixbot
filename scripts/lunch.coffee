module.exports = (robot) ->

  lunches = [
    ":bento:", ":pizza:", ":hotdog:", ":taco:",
    ":hamburger: :fries:", ":meat_on_bone"
  ]
  
  robot.respond /lunch/i, (msg) ->
    robot.messageRoom "#random", randomLunch()

  randomLunch = -> return lunches[Math.floor(Math.random() * lunches.length)] + " @ :clock12: ?"