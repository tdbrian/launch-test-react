{ Map } = require 'immutable'

module.exports = 
    
    currentUser: Map
        id: null
        firstName: ''
        lastName: ''
        username: ''
    
    loginStatus: Map
        isLoggedIn: false
        isAuthenticating: false
        loginError: ''