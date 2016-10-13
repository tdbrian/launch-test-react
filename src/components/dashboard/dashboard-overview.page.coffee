React = require 'react'
{ div } = React.DOM
DashboardBreadcrumb = React.createFactory require('./dashboard-breadcrumb')

class DashboardOverviewPage extends React.Component

    constructor: (props, context) ->
        super props, context

    render: ->
        div {}, DashboardBreadcrumb()

module.exports = DashboardOverviewPage