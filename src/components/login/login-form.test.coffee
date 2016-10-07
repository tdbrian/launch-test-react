expect = require 'expect'
react = require 'react'
{ mount, shallow } = require 'enzyme'
LoginForm = require './login-form'

describe 'LoginForm', ->
    wrapper = null

    setup = ->
        props =
            onAttemptLogin: () -> {}
            onChange: () -> {}
            onPasswordEnter: () -> {}
            onForgotPassword: () -> {}
        
        shallow(LoginForm(props, null))
        
    before () ->
        wrapper = setup()
        
    it 'should render two inputs', ->
        expect(wrapper.find('input').length).toBe 2
        
    it 'should ask user to sign-in', ->
        expect(wrapper.find('.text-muted').text()).toEqual 'Sign In to your LaunchTest.io account'
        
    it 'should render two input groups', ->
        expect(wrapper.find('.input-group').length).toEqual 2
        
    it 'should render two buttons', ->
        expect(wrapper.find('button').length).toEqual 2
        
    it 'should render a login button', ->
        expect(wrapper.find('button').at(0).text()).toEqual 'Login'
         
    it 'should render a forgot password button', ->
        expect(wrapper.find('button').at(1).text()).toEqual 'Forgot password'
        
    