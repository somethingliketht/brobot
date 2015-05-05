# Description:
#   Express your disapproval
#
# Commands:
#   hubot throw shade [at @user] - Send a Look of Disapproval image

imageme = require '../lib/image-me'

module.exports = (robot) ->
  robot.hear /throw shade/i, (msg) ->
    imageme msg, "Look of Disapproval", (url) ->
      msg.send url