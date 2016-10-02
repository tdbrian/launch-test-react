React = require 'react'

class Footer extends React.Component
  
    constructor: (props) ->
        super props
  
    render: -> (
        <footer className="footer">
            <span className="text-left">
                <a href="http://launchtest.io">LaunchTest.io</a> &copy; 2016 Thomas Brian.
            </span>
            <span className="pull-right">
                Contribute at <a href="https://github.com/tdbrian/launch-test">Github</a>
            </span>
        </footer>
    )

module.exports = Footer