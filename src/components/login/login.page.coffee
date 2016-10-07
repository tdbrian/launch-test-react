React = require 'react'
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

    updateLoginState: (event) =>
        @state[event.target.name] = event.target.value
        @setState @state

    onPasswordKeypress: (event) =>
        if event.key is 'Enter' then @onAttemptLogin()

    onAttemptLogin: =>
        @props.attemptLoginActions.attemptLogin @state.username, @state.password
    
    onForgotPassword: =>
        console.error 'not implemented'

    render: ->
        LoginContent 
            onAttemptLogin: @onAttemptLogin
            updateLoginState: @updateLoginState
            onPasswordKeypress: @onPasswordKeypress
            onForgotPassword: @onForgotPassword

mapStateToProps = (state, ownProps) ->
    currentUser: state.currentUser

mapDispatchToProps = (dispatch) ->
    attemptLoginActions: bindActionCreators attemptLoginActions, dispatch

module.exports = 
    LoginPage: LoginPage
    LoginPageConnect: connect(mapStateToProps, mapDispatchToProps) LoginPage