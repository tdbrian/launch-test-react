React = require 'react'

class Sidebar extends React.Component
  
    constructor: (props) ->
        super props
  
    render: ->
        <div className="sidebar">
            <nav className="sidebar-nav">
                <ul className="nav">
                    <li className="divider"></li>
                    <li className="nav-title">Pinned Projects</li>
                        <li className="nav-item">
                            <a className="nav-link" href="main.html"><i className="icon-speedometer"></i> Dashboard
                                <span className="tag tag-info">NEW</span>
                            </a>
                        </li>
                    <li className="divider"></li>
                    <li className="nav-title">Setup</li>
                    <li className="divider"></li>
                    <li className="nav-title">Run</li>
                </ul>
            </nav>
        </div>

module.exports = Sidebar