import React from 'react';

export default class Dashboard extends React.Component {
	
	constructor(props) {
		super(props);
	}
	
	render() {
		return (
            <main className="main">
				<ol className="breadcrumb">
					<li className="breadcrumb-item"><a href="#/dashboard">Home</a></li>
					<li className="breadcrumb-item"><span>Components</span></li>
					<li className="breadcrumb-item active"><span>Buttons</span></li>
					<li className="breadcrumb-menu">
						<div className="btn-group" role="group" aria-label="Button group with nested dropdown">
							<a className="btn btn-secondary" href="#"><i className="icon-speech"></i></a>
							<a className="btn btn-secondary" ui-sref="app.main" href="#/dashboard"><i className="icon-graph"></i> &nbsp;Dashboard</a>
							<a className="btn btn-secondary" ui-sref="app.main" href="#/dashboard"><i className="icon-settings"></i> &nbsp;Settings</a>
						</div>
					</li>
				</ol>
            </main>
		);
	}
}