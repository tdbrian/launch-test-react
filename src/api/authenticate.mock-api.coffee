delay = require './_delay'
{ Map } = require 'immutable'

currentUser =
    id: 1234
    firstName: 'Thomas'
    lastName: 'Brian'

exports.authenticate = (username, password, cb) ->
    setTimeout -> 
        if username is currentUser.firstName and password is currentUser.lastName then cb Map(currentUser)
        else cb null, 'Invalid login'
    , delay