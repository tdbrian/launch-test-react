{ createStore, applyMiddleware } = require 'redux'
rootReducer = require '../reducers/_root.reducer'
{ composeWithDevTools } = require 'redux-devtools-extension'
thunk = require 'redux-thunk'

module.exports = (initalState) ->
    createStore rootReducer, initalState, composeWithDevTools(applyMiddleware(thunk.default))