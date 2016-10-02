actionTypes = require '../actions/_action.types'
initalState = require './_initial.state'

module.exports = (state = initalState.currentUser, action) ->
    switch action.type
        when actionTypes.ATTEMPTING_LOGIN then state
        when actionTypes.LOGIN_FAILED then state
        when actionTypes.LOGIN_SUCCEEDED then state
        else state