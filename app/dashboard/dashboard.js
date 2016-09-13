import React from 'react';
import DashboardBreadcrumb from './dashboard-breadcrumb';

export default class Dashboard extends React.Component {
	
	constructor(props) {
		super(props);
	}
	
	render() {
		return (
			<main className="main">
            	<DashboardBreadcrumb></DashboardBreadcrumb>
			</main>
		);
	}
}