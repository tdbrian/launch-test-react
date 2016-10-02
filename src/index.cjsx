React = require 'react'
{ render } = require 'react-dom'
{ Provider } = require 'react-redux'
configureStore = require './reducers/_configure.store'
AppRoutes = require './routes'

store = configureStore()

routes =
	<Provider store={store}>
		<AppRoutes/>
	</Provider>

render routes, document.getElementById('launch-test-app')