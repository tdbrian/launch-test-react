actionTypes = require './_action.types'
currentUserApi = require '../api/authenticate.mock-api'

exports.attemptingAuthentication = -> 
    type: actionTypes.ATTEMPTING_AUTHENTICATION

exports.authenticationErrored = -> 
    type: actionTypes.AUTHENTICATION_ERRORED
    error: 'Sorry, there was an error Logging In'

exports.authenticationFailed = -> 
    type: actionTypes.AUTHENTICATION_FAILED
    message: 'Invalid Username or Password'

exports.authenticationSucceeded = (user) ->
    type: actionTypes.AUTHENTICATION_SUCCEEDED, user: user

exports.attemptLogin = (username, password, cb) ->
    (dispatch) ->
        dispatch exports.attemptingAuthentication()
        currentUserApi.authenticate username, password, (user, err) ->
            if err then dispatch exports.authenticationErrored()
            else if user is 'invalid' then dispatch exports.authenticationFailed() 
            else dispatch exports.authenticationSucceeded(user)
            if cb then cb()