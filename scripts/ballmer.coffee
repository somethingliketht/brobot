# Description:
#   Ballmer GIFs for all
#
# Commands:
#   hubot ballmer me - Get a random Ballmer image
#   hubot ballmer bomb N - Get N Ballmer images

thingme = require '../lib/thing-me'

module.exports = (robot) ->
  thingme robot, 'ballmer', [
    "http://cdn.gifbay.com/2013/09/steve_ballmer-88323.gif",
    "http://img.gawkerassets.com/img/18sjypnc1wiifgif/ku-xlarge.gif",
    "http://info.abril.com.br/noticias/blogs/omg/files/2013/10/ballmer-evil.gif",
    "http://microsoft-news.com/wp-content/uploads/2012/10/ballmerngates_thumb.gif",
    "http://stream1.gifsoup.com/webroot/animatedgifs5/2581610_o.gif",
    "http://www.1851project.com/wp-content/uploads/2013/12/Steve1.gif",
    "http://www.bobborries.com/Funnies/Ballmer.gif",
  ], 'hear'