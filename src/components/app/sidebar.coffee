React = require 'react'
{ div, nav, ul, li, a, i, span } = React.DOM

class Sidebar extends React.Component
  
    constructor: (props) ->
        super props
  
    render: ->
        div className: 'sidebar',
            nav className: 'sidebar-nav',
                ul className: 'nav',
                    li className: 'nav-item',
                        a className: 'nav-link active', href: 'main.html',
                            i className: 'icon-speedometer'
                            'Dashboard'
                    li className: 'divider'
                    li className: 'nav-title', 'Projects'
                    li className: 'nav-item',
                        a className: 'nav-link', href: 'main.html',
                            i className: 'fa fa-plus-circle'
                            'Add New Project'

module.exports = Sidebar