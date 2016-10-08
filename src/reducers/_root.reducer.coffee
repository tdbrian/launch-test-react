{ combineReducers } = require 'redux'
currentUser = require './current-user.reducer'
authenticationStatus = require './authentication-status.reducer'

module.exports = combineReducers
    currentUser: currentUser
    authenticationStatus: authenticationStatus