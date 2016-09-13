import React, {Component} from 'react';

class DashboardBreadcrumb extends Component {
    render() {
        return (
            <ol className="breadcrumb">
                <li className="breadcrumb-item"><span>Dashboard</span></li>
                <li className="breadcrumb-item active"><span>Overview</span></li>
                <li className="breadcrumb-menu">
                    <div className="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <a className="btn btn-secondary" href="#"><i className="icon-speech"></i></a>
                        <a className="btn btn-secondary" href="#/dashboard"><i className="icon-graph"></i> &nbsp;Dashboard</a>
                        <a className="btn btn-secondary" href="#/dashboard"><i className="icon-settings"></i> &nbsp;Settings</a>
                    </div>
                </li>
            </ol>
        );
    }
}

export default DashboardBreadcrumb;