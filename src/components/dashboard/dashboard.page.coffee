React = require 'react'
{ main } = React.DOM
DashboardBreadcrumb = React.createFactory require('./dashboard-breadcrumb')

class DashboardPage extends React.Component

    constructor: (props, context) ->
        super props, context

    render: ->
        main className: 'main', DashboardBreadcrumb()

module.exports = DashboardPage