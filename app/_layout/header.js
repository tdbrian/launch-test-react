import React from 'react';

export default class Header extends React.Component {
  
  constructor(props) {
    super(props);
  }
  
  render() {
    return (
        <header className="navbar">
            <div className="container-fluid">
                <button className="navbar-toggler mobile-toggler hidden-lg-up" type="button">&#9776;</button>
                <a className="navbar-brand" href="#"></a>
                <ul className="nav navbar-nav hidden-md-down">
                    <li className="nav-item">
                        <a className="nav-link navbar-toggler layout-toggler" href="#">&#9776;</a>
                    </li>
                    <li className="nav-item p-x-1">
                        <a className="nav-link" href="#">Projects</a>
                    </li>
                    <li className="nav-item p-x-1">
                        <a className="nav-link" href="#">Users</a>
                    </li>
                    <li className="nav-item p-x-1">
                        <a className="nav-link" href="#">Settings</a>
                    </li>
                </ul>
                
                <ul className="nav navbar-nav pull-right hidden-md-down">
                    <li className="nav-item">
                        <a className="nav-link" href="#"><i className="icon-bell"></i><span className="tag tag-pill tag-danger">5</span></a>
                    </li>
                    <li className="nav-item">
                        <a className="nav-link" href="#"><i className="icon-list"></i></a>
                    </li>
                    <li className="nav-item">
                        <a className="nav-link" href="#"><i className="icon-location-pin"></i></a>
                    </li>
                    <li className="nav-item dropdown">
                        <a className="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            <img src="img/avatars/default-user-pic.jpg" className="img-avatar" alt="admin@bootstrapmaster.com"></img>
                            <span className="hidden-md-down">admin</span>
                        </a>
                        <div className="dropdown-menu dropdown-menu-right">
                            <div className="dropdown-header text-xs-center">
                                <strong>Account</strong>
                            </div>
                            <a className="dropdown-item" href="#"><i className="fa fa-bell-o"></i> Updates<span className="tag tag-info">42</span></a>
                            <a className="dropdown-item" href="#"><i className="fa fa-envelope-o"></i> Messages<span className="tag tag-success">42</span></a>
                            <a className="dropdown-item" href="#"><i className="fa fa-tasks"></i> Tasks<span className="tag tag-danger">42</span></a>
                            <a className="dropdown-item" href="#"><i className="fa fa-comments"></i> Comment<span className="tag tag-warning">42</span></a>
                            <div className="dropdown-header text-xs-center">
                                <strong>Settings</strong>
                            </div>
                            <a className="dropdown-item" href="#"><i className="fa fa-user"></i> Profile</a>
                            <a className="dropdown-item" href="#"><i className="fa fa-wrench"></i> Setting</a>
                            <a className="dropdown-item" href="#"><i className="fa fa-usd"></i> Payments<span className="tag tag-default">42</span></a>
                            <a className="dropdown-item" href="#"><i className="fa fa-file"></i> Projects<span className="tag tag-primary">42</span></a>
                            <div className="divider"></div>
                            <a className="dropdown-item" href="#"><i className="fa fa-shield"></i> Lock account</a>
                            <a className="dropdown-item" href="#"><i className="fa fa-lock"></i> Logout</a>
                        </div>
                    </li>
                    <li className="nav-item">
                        <a className="nav-link navbar-toggler aside-toggle" href="#">☰</a>
                    </li>
                </ul>

            </div>
        </header>
    );
  }

}