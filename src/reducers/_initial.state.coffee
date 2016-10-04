{ Map } = require 'immutable'

module.exports = 
    
    currentUser: Map
        firstName: ''
        id: null
        lastName: ''
        username: ''
    
    loginStatus: Map
        isAuthenticating: false
        isLoggedIn: false
        loginError: ''