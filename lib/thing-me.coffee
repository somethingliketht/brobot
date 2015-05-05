#adapted from dazoakley@github

_ = require 'underscore'

module.exports = (robot, name, images, listenerType = "respond") ->

  meRegExp = new RegExp "#{name} me", 'i'
  bombRegExp = new RegExp "#{name} bomb( (\\d+))?", 'i'

  robot[listenerType] meRegExp, (msg) ->
    msg.send msg.random images

  robot[listenerType] bombRegExp, (msg) ->
    count = msg.match[2] || 5
    bomb = _.sample images, count
    msg.send image for image in bomb