actionTypes = require '../actions/_action.types'
initalState = require './_initial.state'

module.exports = (state = initalState.authenticationStatus, action) ->    
    switch action.type
        
        when actionTypes.ATTEMPTING_AUTHENTICATION
            state.merge 
                isAuthenticating: true
                isAuthenticated: false
                isInvalid: false
                isErrored: false
                message: null

        when actionTypes.AUTHENTICATION_FAILED
            state.merge
                isAuthenticating: false
                isAuthenticated: false
                isInvalid: true
                isErrored: false
                message: null
                message: action.message

        when actionTypes.AUTHENTICATION_SUCCEEDED
            state.merge
                isAuthenticating: false
                isAuthenticated: true
                isInvalid: false
                isErrored: false
                message: null

        when actionTypes.AUTHENTICATION_ERRORED
            state.merge
                isAuthenticating: false
                isAuthenticated: false
                isInvalid: false
                isErrored: true
                message: action.error

        else state