React = require 'react'
{ render } = require 'react-dom'
{ Router, Route, browserHistory, IndexRoute } = require 'react-router'
{ Provider } = require 'react-redux'

configureStore = require './store/configure-store'
App = require './components/app/app'
LoginPage = require './components/login/login-page'
DashboardPage = require './components/dashboard/dashboard-page'

store = configureStore()

routes =
	<Provider store={store}>
		<Router history={browserHistory}>
			<Route path="/" component={LoginPage}></Route>
			<Route path="/dashboard" component={App}>
				<IndexRoute component={DashboardPage}/>
				<Route path="dashboard" component={DashboardPage}/>
				<Route path="*" component={DashboardPage}/>
			</Route>
		</Router>
	</Provider>

render routes, document.getElementById('launch-test-app')