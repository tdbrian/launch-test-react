React = require 'react'
{ render } = require 'react-dom'
Header = require '../_layout/header'
Sidebar = require '../_layout/sidebar'
Footer = require '../_layout/footer'

class App extends React.Component
	
	constructor: (props) ->
		super props
		@state = 
			test: 'foo'
	
	render: -> (
			<section>
				<Header/>
				<Sidebar/>
				<div>
					{this.props.children}
				</div>
				<Footer/>
			</section>
	)

module.exports = App