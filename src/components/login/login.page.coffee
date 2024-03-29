React = require 'react'
{ connect } = require 'react-redux'
{ bindActionCreators } = require 'redux'
{ browserHistory } = require 'react-router'
authActions = require '../../actions/authentication.actions'

LoginContent = require './login-content'

class LoginPage extends React.Component
    
    constructor: (props, context) ->
        super props, context
        @state = 
            username: ''
            password: ''

    componentWillReceiveProps: (nextProps) =>
        if nextProps.authStatus.isAuthenticated then browserHistory.push '/dashboard'

    updateLoginState: (event) =>
        @state[event.target.name] = event.target.value
        @setState @state

    onPasswordKeypress: (event) =>
        if event.key is 'Enter' then @onAttemptLogin()

    onAttemptLogin: =>
        @props.authActions.attemptLogin @state.username, @state.password
    
    onForgotPassword: =>
        console.error 'not implemented'

    render: ->
        LoginContent 
            onAttemptLogin: @onAttemptLogin
            updateLoginState: @updateLoginState
            onPasswordKeypress: @onPasswordKeypress
            onForgotPassword: @onForgotPassword
            authStatus: @props.authStatus

mapStateToProps = (state, ownProps) ->
    authStatus = state.authenticationStatus.toObject()
    currentUser: state.currentUser.toObject(), authStatus: authStatus

mapDispatchToProps = (dispatch) ->
    authActions: bindActionCreators authActions, dispatch

module.exports = 
    LoginPage: LoginPage
    LoginPageConnect: connect(mapStateToProps, mapDispatchToProps) LoginPage