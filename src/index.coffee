React = require 'react'
{h1} = React.DOM
{ render } = require 'react-dom'
Provider = React.createFactory require('react-redux').Provider
configureStore = require './reducers/_configure.store'
AppRoutes = require './routes'

store = configureStore()
routes = Provider store: store, AppRoutes()

render routes, document.getElementById('launch-test-app')