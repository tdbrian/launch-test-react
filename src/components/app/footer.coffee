React = require 'react'
{ footer, span, a } = React

class Footer extends React.Component
  
    constructor: (props) ->
        super props
  
    render: ->
        footer className: 'footer',
            span className: 'text-left',
                a href: 'http://launchtest.io', 'LaunchTest.io'
                '&copy; 2016 Thomas Brian.'
            span className: 'pull-right',
                'Contribute at',
                a href: 'https://github.com/tdbrian/launch-test', 'Github'

module.exports = Footer