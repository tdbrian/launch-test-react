redux = require 'redux'
rootReducer = require '../reducers'

module.exports = (initalState) ->
    redux.createStore rootReducer, initalState