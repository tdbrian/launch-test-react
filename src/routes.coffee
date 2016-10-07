React = require 'react'
ReactRouter = require 'react-router'
Router = React.createFactory ReactRouter.Router
Route = React.createFactory ReactRouter.Route
IndexRoute = React.createFactory ReactRouter.IndexRoute
{ browserHistory } = ReactRouter

App = require './components/app/app'
{ LoginPage, LoginPageConnect } = require './components/login/login.page'
DashboardPage = require './components/dashboard/dashboard.page'

module.exports = ->
    Router history: browserHistory,
        Route path: '/', component: LoginPageConnect
        Route path: '/dashboard', component: App,
            IndexRoute component: DashboardPage
            Route path: 'dashboard', component: DashboardPage
            Route path: '*', component: DashboardPage