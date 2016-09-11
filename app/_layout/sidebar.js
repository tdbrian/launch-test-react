import React from 'react';

export default class Sidebar extends React.Component {
  
  constructor(props) {
    super(props);
  }
  
  render() {
    return (
        <div className="sidebar">
            <nav className="sidebar-nav">
                <ul className="nav">
                    <li className="nav-item">
                        <a className="nav-link" href="main.html"><i className="icon-speedometer"></i> Dashboard <span className="tag tag-info">NEW</span></a>
                    </li>
                </ul>
            </nav>
        </div>
    );
  }

}