expect = require 'expect'
thunk = require('redux-thunk').default
nock = require 'nock'
{ Map } = require 'immutable'
configureStore = require 'redux-mock-store'

initalState = require '../reducers/_initial.state'
authenticationActions = require './authentication.actions'
actionTypes = require './_action.types'

mockStore = configureStore [thunk]

describe 'Autentication actions', ->

    afterEach -> nock.cleanAll()

    describe 'attempt login', ->

        it 'should call ATTEMPTING_LOGIN and LOGIN_SUCCEEDED with a valid username and password', (done) ->

            expectedUser =
                id: 1234
                firstName: 'Thomas'
                lastName: 'Brian'
                username: 'tdbrian'

            store = mockStore initalState

            expectedActions = [
                { type: actionTypes.ATTEMPTING_LOGIN },
                { type: actionTypes.LOGIN_SUCCEEDED, user: Map expectedUser }
            ]

            store.dispatch authenticationActions.attemptLogin expectedUser.username, 'pa55word', () ->
                expect(store.getActions()).toEqual expectedActions
                done()

        it 'should call ATTEMPTING_LOGIN and LOGIN_FAILED with a valid username and invalid password', (done) ->

            expectedUser =
                id: 1234
                firstName: 'Thomas'
                lastName: 'Brian'
                username: 'tdbrian'

            store = mockStore initalState

            expectedActions = [
                { type: actionTypes.ATTEMPTING_LOGIN },
                { type: actionTypes.LOGIN_FAILED, error: 'Invalid login' }
            ]

            store.dispatch authenticationActions.attemptLogin expectedUser.username, 'invalidpassword', () ->
                expect(store.getActions()).toEqual expectedActions
                done()