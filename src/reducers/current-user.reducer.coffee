immutable = require 'immutable'
actionTypes = require '../actions/action.types'

module.exports = (state = [], action) ->
    debugger
    switch action.type
        when actionTypes.ATTEMPT_LOGIN then state
        else state