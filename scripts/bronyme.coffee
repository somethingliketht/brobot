# Description:
#   For the MLP fans
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot brony me -- receive a brony message
#
# Author:
#  rachel-s

thingme = require '../lib/thing-me'

module.exports = (robot) ->
  thingme robot, '(?:br|p)ony', [
    "http://www.wired.com/images_blogs/underwire/2013/12/Bronies-On-the-Internet.jpg"
    "http://www.quickmeme.com/img/47/477546d6f5d34d25c62b6b4262d175c64c4a46bdf3ef465d1755c209afda1796.jpg"
    "https://i.chzbgr.com/maxW500/7365151488/h682EAB25.jpg"
    "http://iambrony.steeph.tp-radio.de/mlp/gif/161894__UNOPT__.gif"
    "http://global3.memecdn.com/mlp-fim_o_1210241.jpg"
    "http://mylittlefacewhen.com/media/f/img/mlfw2919-sweetie_bot_100percent.jpg"
    "http://24.media.tumblr.com/tumblr_me08y1YbiQ1runaoio1_500.png"
  ]