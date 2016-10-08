expect = require 'expect'
{ Map } = require 'immutable'
{ createStore } = require 'redux'
rootReducer = require './_root.reducer'
initialState = require './_initial.state'
authenticationActions = require '../actions/authentication.actions'

describe 'Store', ->
    store = null

    beforeEach ->
        store = createStore rootReducer, initialState

    it 'should handle a successful authentication', ->
        store.dispatch authenticationActions.attemptingAuthentication()
        store.dispatch authenticationActions.authenticationSucceeded()

        actual = store.getState().authenticationStatus
        expected = Map
            isAuthenticating: false
            isAuthenticated: true
            isInvalid: false
            isErrored: false
            message: null

        expect(actual).toEqual expected

    it 'should handle an invalid authentication', ->
        store.dispatch authenticationActions.attemptingAuthentication()
        store.dispatch authenticationActions.authenticationFailed()

        actual = store.getState().authenticationStatus
        expected = Map
            isAuthenticating: false
            isAuthenticated: false
            isInvalid: true
            isErrored: false
            message: 'Invalid Username or Password'

        expect(actual).toEqual expected

    it 'should handle an authentication server error', ->
        store.dispatch authenticationActions.attemptingAuthentication()
        store.dispatch authenticationActions.authenticationErrored()

        actual = store.getState().authenticationStatus
        expected = Map
            isAuthenticating: false
            isAuthenticated: false
            isInvalid: false
            isErrored: true
            message: 'Sorry, there was an error Logging In'

        expect(actual).toEqual expected