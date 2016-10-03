actionTypes = require '../actions/_action.types'
initalState = require './_initial.state'

module.exports = (state = initalState.loginStatus, action) ->
    switch action.type
        
        when actionTypes.ATTEMPTING_LOGIN
            state.merge 
                isAuthenticating: true
                isLoggedIn: false
                loginError: null
        
        when actionTypes.LOGIN_FAILED
            state.merge
                isAuthenticating: true
                isLoggedIn: false
                loginError: state.error

        when actionTypes.LOGIN_SUCCEEDED
            state.merge
                isAuthenticating: false
                isLoggedIn: true

        else state