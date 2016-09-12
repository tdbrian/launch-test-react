import React from 'react';
import { render } from 'react-dom'
import { Router, Route, browserHistory, IndexRoute } from 'react-router'
import App from './_core/app.js';
import Dashboard from './dashboard/dashboard';

render((
	<Router history={browserHistory}>
		<Route path="/" component={App}>
			<IndexRoute component={Dashboard}/>
			<Route path="dashboard" component={Dashboard}/>
			<Route path="*" component={Dashboard}/>
		</Route>
	</Router>
), document.getElementById('launch-test-app'))