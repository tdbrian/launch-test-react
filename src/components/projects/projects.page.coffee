React = require 'react'
{ main } = React.DOM

class ProjectsPage extends React.Component

    constructor: (props, context) ->
        super props, context

    render: ->
        main className: 'main', @props.children

module.exports = ProjectsPage