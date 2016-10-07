React = require 'react'
expect = require 'expect'
{ mount, shallow } = require 'enzyme'
{ LoginPage } = require './login.page'

describe 'Login Page', () ->
    wrapper = mount React.createElement LoginPage

    it 'should render the wrapper', () -> 
        expect(wrapper).toExist()

    it 'should contain two inputs', () -> 
        expect(wrapper.find('input').length).toBe(2)