expect = require 'expect'
{ Map } = require 'immutable'
loginStatusReducer = require './login-status.reducer'
actionTypes = require '../actions/_action.types'

describe 'Attempt Login Actions', ->

    mockUser =
        id: 1234
        firstName: 'Thomas'
        lastName: 'Brian'
        username: 'tdbrian'
    
    loginStatus = Map
        isAuthenticating: false
        isLoggedIn: false
        loginError: null

    describe 'when passed ATTEMPTING_LOGIN', ->

        attempLoginInitialStatus = loginStatus.merge
            isLoggedIn: true
            loginError: 'an error'

        action = type: actionTypes.ATTEMPTING_LOGIN, user: mockUser
        newState = loginStatusReducer attempLoginInitialStatus, action

        it 'should set isAuthenticating to true', ->
            expect(newState.get 'isAuthenticating').toEqual true

        it 'should set isLoggedIn to false', ->
            expect(newState.get 'isLoggedIn').toEqual false

        it 'should set loginError to null', ->
            expect(newState.get 'loginError').toEqual null

    describe 'when passed LOGIN_FAILED', ->

        failedLoginInitialStatus = loginStatus.merge
            isLoggedIn: true
            isAuthenticating: true

        action = type: actionTypes.LOGIN_FAILED, error: 'login error occurred'
        newState = loginStatusReducer failedLoginInitialStatus, action

        it 'should set isAuthenticating to false', ->
            expect(newState.get 'isAuthenticating').toEqual false

        it 'should set isLoggedIn to false', ->
            expect(newState.get 'isLoggedIn').toEqual false

        it 'should set loginError to "login error occurred"', ->
            expect(newState.get 'loginError').toEqual 'login error occurred'

    describe 'when passed LOGIN_SUCCEEDED', ->

        failedLoginInitialStatus = loginStatus.merge
            isAuthenticating: true
            loginError: 'an error'

        action = type: actionTypes.LOGIN_SUCCEEDED, user: mockUser
        newState = loginStatusReducer failedLoginInitialStatus, action

        it 'should set isAuthenticating to false', ->
            expect(newState.get 'isAuthenticating').toEqual false

        it 'should set isLoggedIn to true', ->
            expect(newState.get 'isLoggedIn').toEqual true

        it 'should set loginError to null', ->
            expect(newState.get 'loginError').toEqual null