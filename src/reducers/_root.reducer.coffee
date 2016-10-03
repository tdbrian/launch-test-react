{ combineReducers } = require 'redux'
currentUser = require './current-user.reducer'
loginStatus = require './login-status.reducer'

module.exports = combineReducers
    currentUser: currentUser
    loginStatus: loginStatus