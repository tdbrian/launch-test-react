{ browserHistory } = require 'react-router'
actionTypes = require './_action.types'
currentUserApi = require '../api/authenticate.mock-api'

exports.attemptLogin = (username, password) ->
    (dispatch) ->
        dispatch type: actionTypes.ATTEMPTING_LOGIN
        currentUserApi.authenticate username, password, (user, err) ->
            if err then dispatch type: actionTypes.LOGIN_FAILED, error: err
            else 
                browserHistory.push '/dashboard'
                dispatch type: actionTypes.LOGIN_SUCCEEDED, user: user
