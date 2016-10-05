React = require 'react'
{ ol, li, div, a } = React

class DashboardBreadcrumb extends React.Component
    
    render: ->
        ol className: 'breadcrumb',
            li className: 'breadcrumb-item', span {}, 'Dashboard'
            li className: 'breadcrumb-item active', span {}, 'Overview'
            li className: 'breadcrumb-menu',
                div className: 'btn-group', role: 'group', ariaLabel: 'Button group with nested dropdown',
                    a className: 'btn btn-secondary', href: '#',
                        i className: 'icon-speech'
                    a className: 'btn btn-secondary', href: '#/dashboard',
                        i className: 'icon-graph'
                        '&nbsp;Dashboard'
                    a className: 'btn btn-secondary', href: '#/dashboard',
                        i className: 'icon-settings'
                        '&nbsp;Settings'

module.exports = DashboardBreadcrumb