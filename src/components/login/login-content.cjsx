React = require 'react'
LoginForm = require './login-form'
LoginRegister = require './login-register'

module.exports = ({username, onAttemptLogin}) =>
    <div className="container">
        <div className="row">
            <div vamiddle="" className="col-md-8 m-x-auto pull-xs-none" style={{marginTop: "315.5px"}}>
                <div className="card-group">
                    <LoginForm onAttemptLogin={onAttemptLogin}/>
                    <LoginRegister/>
                </div>
            </div>
        </div>
    </div>