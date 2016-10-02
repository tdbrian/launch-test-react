React = require 'react'
{ browserHistory } = require 'react-router'

class LoginPage extends React.Component
    
    handleClick: ->
        browserHistory.push '/dashboard'
    
    render: ->
        <div className="container">
            <div className="row">
                <div vamiddle="" className="col-md-8 m-x-auto pull-xs-none" style={{marginTop: "315.5px"}}>
                    <div className="card-group">
                        <div className="card p-a-2">
                            <div className="card-block">
                                <h1>Login</h1>
                                <p className="text-muted">Sign In to your LaunchTest.io account</p>
                                <div className="input-group m-b-1">
                                    <span className="input-group-addon"><i className="icon-user"></i></span>
                                    <input type="text" className="form-control" placeholder="Username"></input>
                                </div>
                                <div className="input-group m-b-2">
                                    <span className="input-group-addon"><i className="icon-lock"></i></span>
                                    <input type="password" 
                                        className="form-control" 
                                        placeholder="Password" 
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
                                        <button type="button" onClick={@handleClick} className="btn btn-primary p-x-2">Login</button>
                                    </div>
                                    <div className="col-xs-6 text-xs-right">
                                        <button type="button" className="btn btn-link p-x-0">Forgot password?</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="card card-inverse card-primary p-y-3" style={{width: "44%"}}>
                            <div className="card-block text-xs-center">
                                <div>
                                    <h2>Sign up</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <button type="button" className="btn btn-primary active m-t-1">Register Now!</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

module.exports = LoginPage