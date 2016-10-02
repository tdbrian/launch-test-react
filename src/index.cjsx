React = require 'react'
{ render } = require 'react-dom'
{ Router, Route, browserHistory, IndexRoute } = require 'react-router'
Login = require './_core/login'
App = require './_core/app'
Dashboard = require './components/dashboard/dashboard-page'

routes = (
	<Router history={browserHistory}>
		<Route path="login" component={Login}></Route>
		<Route path="/" component={App}>
			<IndexRoute component={Dashboard}/>
			<Route path="dashboard" component={Dashboard}/>
			<Route path="*" component={Dashboard}/>
		</Route>
	</Router>
)

render routes, document.getElementById('launch-test-app')