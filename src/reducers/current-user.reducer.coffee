immutable = require 'immutable'
actionTypes = require '../actions/action.types'

module.exports = (state = [], action) ->
    switch action.type
        when actionTypes.ATTEMPTING_LOGIN then state
        when actionTypes.LOGIN_FAILED then state
        when actionTypes.LOGIN_SUCCEEDED then state
        else state