{ createStore, applyMiddleware } = require 'redux'
rootReducer = require '../reducers/_root.reducer'
thunk = require 'redux-thunk'

module.exports = (initalState) ->
    createStore rootReducer, initalState, applyMiddleware(thunk.default)