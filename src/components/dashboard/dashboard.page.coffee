React = require 'react'
{ main } = React.DOM

class DashboardPage extends React.Component

    constructor: (props, context) ->
        super props, context

    render: ->
        main className: 'main', @props.children

module.exports = DashboardPage