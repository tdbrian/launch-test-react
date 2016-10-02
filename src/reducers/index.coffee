{ combineReducers } = require 'redux'
currentUser = require './current-user.reducer'

module.exports = combineReducers
    currentUser: currentUser