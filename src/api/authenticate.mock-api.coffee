delay = require './_delay'
{ Map } = require 'immutable'

currentUser =
    id: 1234
    firstName: 'Thomas'
    lastName: 'Brian'
    username: 'tdbrian'

exports.authenticate = (username, password, cb) ->
    setTimeout -> 
        if username is currentUser.username and password is 'pa55word' then cb Map(currentUser)
        else cb null, 'Invalid login'
    , delay