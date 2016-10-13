React = require 'react'
{ div } = React.DOM

class ProjectsListPage extends React.Component

    constructor: (props, context) ->
        super props, context

    render: ->
        div {}, 'Projects List'

module.exports = ProjectsListPage