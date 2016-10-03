React = require 'react'

module.exports = ({onAttemptLogin, onChange, onPasswordEnter, onForgotPassword}) =>
    <div className="card p-a-2">
        <div className="card-block">
            <h1>Login</h1>
            <p className="text-muted">Sign In to your LaunchTest.io account</p>
            <div className="input-group m-b-1">
                <span className="input-group-addon"><i className="icon-user"></i></span>
                <input name="username" type="text" className="form-control" placeholder="Username" onChange={onChange}></input>
            </div>
            <div className="input-group m-b-2">
                <span className="input-group-addon"><i className="icon-lock"></i></span>
                <input name="password"
                    type="password"
                    className="form-control" 
                    placeholder="Password"
                    onChange={onChange}
                    onKeyUp={onPasswordEnter}
                    autoComplete="off" 
                    style={{
                        cursor: "auto", 
                        backgroundImage: "url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAAPhJREFUOBHlU70KgzAQPlMhEvoQTg6OPoOjT+JWOnRqkUKHgqWP4OQbOPokTk6OTkVULNSLVc62oJmbIdzd95NcuGjX2/3YVI/Ts+t0WLE2ut5xsQ0O90F6UxFjAI8qNcEGONia08e6MNONYwCS7EQAizLmtGUDEzTBNd1fxsYhjEBnHPQNG3KKTYV34F8ec/zwHEciOMYyrIE3/ehKAqIoggo9inGXKmFXwbyBkmSQJqmUNe15IRhCG3byphitm1/eUzDM4qR0TTNjEixGdAnSi3keS5vSk2UDKqqgizLqB4YzvassiKhGtZ/jDMtLOnHz7TE+yf8BaDZXA509yeBAAAAAElFTkSuQmCC)", 
                        backgroundAttachment: "scroll", 
                        backgroundSize: "16px 18px", 
                        backgroundPosition: "98% 50%", 
                        backgroundRepeat: "no-repeat"
                    }}>
                </input>
            </div>
            <div className="row">
                <div className="col-xs-6">
                    <button type="button" onClick={onAttemptLogin} className="btn btn-primary p-x-2">Login</button>
                </div>
                <div className="col-xs-6 text-xs-right">
                    <button type="button" className="btn btn-link p-x-0" onClick={onForgotPassword}>Forgot password?</button>
                </div>
            </div>
        </div>
    </div>