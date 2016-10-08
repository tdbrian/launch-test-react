{ div, h1, p, span, i, input, button } = require('react').DOM

module.exports = ({onAttemptLogin, onChange, onPasswordEnter, onForgotPassword, authStatus}) =>
    div className: 'card p-a-2',
        div className: 'card-block',
            h1 {}, 'Login'
            p className: 'text-muted', 'Sign In to your LaunchTest.io account'
            div className: 'input-group m-b-1',
                span className: 'input-group-addon',
                    i className: 'icon-user'
                input
                    name: 'username' 
                    type: 'text' 
                    className: 'form-control' 
                    placeholder: 'Username'
                    onChange: onChange
            
            div className: 'input-group m-b-2',
                span className: 'input-group-addon',
                    i className: 'icon-lock'
                input
                    name: 'password'
                    type: 'password'
                    className: 'form-control' 
                    placeholder: 'Password'
                    onChange: onChange
                    onKeyUp: onPasswordEnter
                    autoComplete: 'off'
            
            if authStatus?.isErrored or authStatus?.isInvalid then div className: 'row',
                div className: 'alert alert-danger', authStatus?.message

            div className: 'row',
                div className: 'col-xs-6',
                    button type: 'button', onClick: onAttemptLogin, className: 'btn btn-primary p-x-2', 'Login'
                div className: 'col-xs-6 text-xs-right',
                    button type: 'button', className: 'btn btn-link p-x-0', onClick: onForgotPassword, 'Forgot password'