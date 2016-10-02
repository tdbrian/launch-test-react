{ createStore, applyMiddleware } = require 'redux'
rootReducer = require '../reducers'
thunk = require 'redux-thunk'

module.exports = (initalState) ->
    createStore rootReducer, initalState, applyMiddleware(thunk.default)