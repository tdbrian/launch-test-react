{ Map } = require 'immutable'

module.exports = 
    
    currentUser: Map
        firstName: ''
        id: null
        lastName: ''
        username: ''
    
    authenticationStatus: Map
        isAuthenticating: false
        isAuthenticated: false
        isInvalid: false
        isErrored: false
        message: null