module.exports = (robot) ->
  call = "@here Hey y'all!\n"
  phrases = [
    "Anyone :ice_cream: at :clock3:?",
    "There seems to be a beloved event ( :icecream: ) scheduled in the hearts of the people at :clock3: ... anybody in?",
    "Pops wants you! :icecream: at :clock3:",
    "How 'bout we get that #fat2016 going? :ice_cream: at :clock3:",
    "Come to the dark side! We have :ice_cream: at :clock3:!"
  ]

  robot.respond /icecream/i, (msg) ->
    robot.messageRoom "#random", randomPhrase()

  randomPhrase = ->
    today = new Date
    day = today.getDay()
    
    if day == 3
      "Here's a sweet reminder -> :icecream: at :clock3:, brought to y'all by Moyo (2x1 TODAY!)"
    else
      return call + phrases[Math.floor(Math.random() * phrases.length)]
