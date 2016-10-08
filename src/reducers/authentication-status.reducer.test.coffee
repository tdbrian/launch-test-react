expect = require 'expect'
{ Map } = require 'immutable'
authenticationStatusReducer = require './authentication-status.reducer'
authenticationActions = require '../actions/authentication.actions'

describe 'Authentication reducer', ->

    mockUser =
        id: 1234
        firstName: 'Thomas'
        lastName: 'Brian'
        username: 'tdbrian'
    
    authenticationStatus = Map
        isAuthenticating: false
        isAuthenticated: false
        isInvalid: false
        isErrored: false
        message: null

    it 'should set correct state when passed ATTEMPTING_AUTHENTICATION', ->

        attempLoginInitialStatus = authenticationStatus.merge
            isAuthenticated: true
            message: 'an error'

        action = authenticationActions.attemptingAuthentication()
        actual = authenticationStatusReducer attempLoginInitialStatus, action
        expected = Map
            isAuthenticating: true
            isAuthenticated: false
            isInvalid: false
            isErrored: false
            message: null 

        expect(actual).toEqual expected

    it 'should set correct state when passed AUTHENTICATION_FAILED', ->

        failedLoginInitialStatus = authenticationStatus.merge
            isAuthenticated: true
            isAuthenticating: true

        action = authenticationActions.authenticationFailed()
        actual = authenticationStatusReducer failedLoginInitialStatus, action
        expected = Map
            isAuthenticating: false
            isAuthenticated: false
            isInvalid: true
            isErrored: false
            message: 'Invalid Username or Password' 

        expect(actual).toEqual expected

    it 'should set correct state when passed AUTHENTICATION_SUCCEEDED', ->

        status = authenticationStatus.merge
            isAuthenticating: true
            message: 'an error'

        action = authenticationActions.authenticationSucceeded()
        actual = authenticationStatusReducer status, action
        expected = Map
            isAuthenticating: false
            isAuthenticated: true
            isInvalid: false
            isErrored: false
            message: null
        
        expect(actual).toEqual expected