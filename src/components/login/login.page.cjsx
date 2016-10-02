React = require 'react'
{ browserHistory } = require 'react-router'
{ connect } = require 'react-redux'
{ bindActionCreators } = require 'redux'
attemptLoginActions = require '../../actions/attempt-login.actions'

LoginContent = require './login-content'

class LoginPage extends React.Component
    
    constructor: (props, context) ->
        super props, context
        @state = 
            username: ''
            password: ''

    onAttemptLogin: =>
        @props.attemptLoginActions.attemptLogin @state.username, @state.password
        browserHistory.push '/dashboard'
    
    render: ->
        <LoginContent 
            username={@state.username} 
            onAttemptLogin={@onAttemptLogin}
        />

mapStateToProps = (state, ownProps) ->
    currentUser: state.currentUser

mapDispatchToProps = (dispatch) ->
    attemptLoginActions: bindActionCreators attemptLoginActions, dispatch

module.exports = connect(mapStateToProps, mapDispatchToProps) LoginPage