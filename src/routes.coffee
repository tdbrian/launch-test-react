React = require 'react'
ReactRouter = require 'react-router'
Router = React.createFactory ReactRouter.Router
Route = React.createFactory ReactRouter.Route
IndexRedirect = React.createFactory ReactRouter.IndexRedirect
{ browserHistory } = ReactRouter

App = require './components/app/app'
{ LoginPage, LoginPageConnect } = require './components/login/login.page'
{ DashboardPage, DashboardOverviewPage } = require './components/dashboard'
{ ProjectsPage, ProjectsListPage, ProjectDetailsPage, ProjectNewPage, ProjectEditPage } = require './components/projects'

module.exports = ->
    Router history: browserHistory,
        Route path: '/login', component: LoginPageConnect
        Route path: '/', component: App,
            IndexRedirect to: 'dashboard/overview'
            Route path: 'dashboard', component: DashboardPage,
                IndexRedirect to: 'overview'
                Route path: 'overview', component: DashboardOverviewPage
            Route path: 'projects', component: ProjectsPage,
                IndexRedirect to: 'list'
                Route path: 'list', component: ProjectsListPage
                Route path: 'new', component: ProjectNewPage
                Route path: ':projectId/details', component: ProjectDetailsPage
                Route path: ':projectId/edit', component: ProjectEditPage
            Route path: '*', component: DashboardPage