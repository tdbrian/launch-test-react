React = require 'react'
{ div, nav, ul, li, a, i, span } = React.DOM
ReactRouter = require 'react-router'
Link = React.createFactory ReactRouter.Link

class Sidebar extends React.Component
  
    constructor: (props) ->
        super props
  
    render: ->
        div className: 'sidebar',
            nav className: 'sidebar-nav',
                ul className: 'nav',
                    li className: 'nav-item',
                        Link className: 'nav-link', activeClassName: 'active', to: '/dashboard/overview',
                            i className: 'icon-speedometer'
                            'Dashboard'
                    li className: 'divider'
                    li className: 'nav-title', 'Projects'
                    li className: 'nav-item',
                        Link className: 'nav-link', activeClassName: 'active', to: '/projects/new',
                            i className: 'fa fa-plus-circle'
                            'Add New Project'

module.exports = Sidebar