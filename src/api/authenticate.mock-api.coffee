delay = require './_delay'
{ Map } = require 'immutable'

currentUser =
    id: 1234
    firstName: 'Thomas'
    lastName: 'Brian'
    username: 'tdbrian'

exports.authenticate = (username, password, cb) ->
    setTimeout -> 
        if username is 'server error' then cb null, 'Sorry, there was an error Logging In'
        else if username is currentUser.username and password is 'pa55word' then cb Map(currentUser)
        else cb 'invalid'
    , delay