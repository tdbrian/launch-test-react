React = require 'react'
{ render } = require 'react-dom'
{ Router, Route, browserHistory, IndexRoute } = require 'react-router'
App = require './components/app/app'
LoginPage = require './components/login/login-page'
DashboardPage = require './components/dashboard/dashboard-page'

routes =
	<Router history={browserHistory}>
		<Route path="/" component={LoginPage}></Route>
		<Route path="/dashboard" component={App}>
			<IndexRoute component={DashboardPage}/>
			<Route path="dashboard" component={DashboardPage}/>
			<Route path="*" component={DashboardPage}/>
		</Route>
	</Router>

render routes, document.getElementById('launch-test-app')