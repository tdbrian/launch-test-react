React = require 'react'
{ div, nav, ul, li, a, i, span } = React.DOM

class Sidebar extends React.Component
  
    constructor: (props) ->
        super props
  
    render: ->
        div className: 'sidebar',
            nav className: 'sidebar-nav',
                ul className: 'nav',
                    li className: 'divider'
                    li className: 'nav-title', 'Pinned Projects'
                    li className: 'nav-item',
                        a className: 'nav-link', href: 'main.html',
                            i className: 'icon-speedometer'
                            'Dashboard'
                            span className: 'tag tag-info', 'NEW'
                    li className: 'divider'
                    li className: 'nav-title', 'Setup'
                    li className: 'divider'
                    li className: 'nav-title', 'Run'

module.exports = Sidebar