actionTypes = require './action.types'

exports.attemptLogin = (username, password) -> type: actionTypes.ATTEMPT_LOGIN, username: username, password: password