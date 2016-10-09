React = require 'react'
{ section, div } = React.DOM
{ render } = require 'react-dom'
Header = React.createFactory require('./header')
Sidebar = React.createFactory require('./sidebar')
Footer = React.createFactory require('./footer')

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