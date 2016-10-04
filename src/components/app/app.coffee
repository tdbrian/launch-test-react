React = require 'react'
{ section, div } = React.DOM
{ render } = require 'react-dom'
Header = require './header'
Sidebar = require './sidebar'
Footer = require './footer'

class App extends React.Component
	
	constructor: (props, context) ->
		super props, context
		@state = 
			test: 'foo'
	
	render: ->
		section {},
			Header()
			Sidebar()
			div {}, @props.children
			Footer()

module.exports = App