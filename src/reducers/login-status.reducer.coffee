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
                isAuthenticating: false
                isLoggedIn: false
                loginError: action.error

        when actionTypes.LOGIN_SUCCEEDED
            state.merge
                isAuthenticating: false
                isLoggedIn: true
                loginError: null

        else state