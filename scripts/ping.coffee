# Description:
#   Hubot is very attentive (ping hubot)
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   tapichu

phrases = [
  "At your service"
  "Aye, master?"
  "By your command"
  "Do you require my aid?"
  "How may I serve thee?"
  "I await your command, master"
  "I'm here, human"
  "I'm here"
  "Locked and loaded"
  "Master?"
  "My lord?"
  "Orders?"
  "Ready for action!"
  "Sire?"
  "What ails you?"
  "What do you need?"
  "What is thy bidding, my master?"
  "What is your wish?"
  "Yes, captain?"
  "Yes, master?"
  "Yes, milord?"
  "You require my assistance?"
  "You're interrupting my calculations!"
  "Your honor?"
]

module.exports = (robot) ->
  name_regex = new RegExp("#{robot.name}[?!]$", "i")

  robot.hear name_regex, (msg) ->
    msg.send msg.random phrases
