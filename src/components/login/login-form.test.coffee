expect = require 'expect'
react = require 'react'
{ mount, shallow } = require 'enzyme'
LoginForm = require './login-form'

describe 'LoginForm', ->

    setup = ->
        props =
            onAttemptLogin: () -> {}
            onChange: () -> {}
            onPasswordEnter: () -> {}
            onForgotPassword: () -> {}
        
        shallow(<LoginForm />)