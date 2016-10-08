expect = require 'expect'
thunk = require('redux-thunk').default
nock = require 'nock'
{ Map } = require 'immutable'
configureStore = require 'redux-mock-store'

initalState = require '../reducers/_initial.state'
authenticationActions = require './authentication.actions'

mockStore = configureStore [thunk]

describe 'Autentication actions', ->
    store = null
    beforeEach -> store = mockStore initalState
    afterEach -> nock.cleanAll()

    describe 'attempt login', ->

        it 'should call ATTEMPTING_AUTHENTICATION and LOGIN_SUCCEEDED with a valid username and password', (done) ->

            expectedUser =
                id: 1234
                firstName: 'Thomas'
                lastName: 'Brian'
                username: 'tdbrian'

            expectedActions = [
                authenticationActions.attemptingAuthentication()
                authenticationActions.authenticationSucceeded(Map expectedUser)
            ]

            store.dispatch authenticationActions.attemptLogin expectedUser.username, 'pa55word', () ->
                expect(store.getActions()).toEqual expectedActions
                done()

        it 'should call ATTEMPTING_AUTHENTICATION and AUTHENTICATION_FAILED with a valid username and invalid password', (done) ->
            expectedActions = [
                authenticationActions.attemptingAuthentication()
                authenticationActions.authenticationFailed()
            ]

            store.dispatch authenticationActions.attemptLogin 'tdbrian', 'invalidpassword', () ->
                expect(store.getActions()).toEqual expectedActions
                done()

        it 'should call ATTEMPTING_AUTHENTICATION and AUTHENTICATION_ERRORED when a server side error occurs', (done) ->
            expectedActions = [
                authenticationActions.attemptingAuthentication()
                authenticationActions.authenticationErrored()
            ]

            store.dispatch authenticationActions.attemptLogin 'server error', 'invalidpassword', () ->
                expect(store.getActions()).toEqual expectedActions
                done()