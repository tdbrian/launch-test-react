{ div } = require('react').DOM
LoginForm = require './login-form'
LoginRegister = require './login-register'

module.exports = ({onAttemptLogin, updateLoginState, onPasswordKeypress, onForgotPassword}) =>
    div className: 'container',
        div className: 'row',
            div 
                vamiddle: '' 
                className: 'col-md-8 m-x-auto pull-xs-none' 
                style:
                    marginTop: '315.5px'
                div className: 'card-group',
                    LoginForm
                        onAttemptLogin: onAttemptLogin 
                        onChange: updateLoginState 
                        onPasswordEnter: onPasswordKeypress 
                        onForgotPassword: onForgotPassword
                    LoginRegister()