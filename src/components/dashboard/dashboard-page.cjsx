React = require 'react'
DashboardBreadcrumb = require './dashboard-breadcrumb'

class DashboardPage extends React.Component

    constructor: (props) ->
        super props

    render: ->
        <main className = "main" >
            <DashboardBreadcrumb/> 
        </main>

module.exports = DashboardPage