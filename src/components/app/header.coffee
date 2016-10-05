React = require 'react'
{ header, div, a, ul, li, button, img, span, strong, i } = React

class Header extends React.Component
  
    constructor: (props) ->
        super props
  
    render: ->
        header className: 'navbar',
            div className: 'container-fluid',
                button className: 'navbar-toggler mobile-toggler hidden-lg-up', type: 'button'
                a className: 'navbar-brand', href: '#'
                
                ul className: 'nav navbar-nav hidden-md-down',
                    li className: 'nav-item',
                        a className: 'nav-link navbar-toggler layout-toggler', href: '#'
                    li className: 'nav-item p-x-1',
                        a className: 'nav-link', href: '#', 'Projects'
                    li className: 'nav-item p-x-1',
                        a className: 'nav-link', href: '#', 'Users'
                    li className: 'nav-item p-x-1',
                        a className: 'nav-link', href: '#', 'Settings'
                
                ul className: 'nav navbar-nav pull-right hidden-md-down',
                    li className: 'nav-item',
                        a className: 'nav-link', href: '#',
                            i className: 'icon-bell'
                            span className: 'tag tag-pill tag-danger'
                    li className: 'nav-item',
                        a className: 'nav-link', href: '#',
                            i className: 'icon-list'
                    li className: 'nav-item',
                        a className: 'nav-link', href: '#',
                            i className: 'icon-location-pin'
                    li className: 'nav-item dropdown',
                        a 
                            className: 'nav-link dropdown-toggle' 
                            dataToggle: 'dropdown' 
                            href: '#' 
                            role: 'button' 
                            ariaHaspopup: 'true' 
                            ariaExpanded: 'false'
                            img src: 'img/avatars/default-user-pic.jpg', className: 'img-avatar', alt: 'admin@bootstrapmaster.com'
                            span className: 'hidden-md-down', 'Admin'
                        
                        div className: 'dropdown-menu dropdown-menu-right',
                            div className: 'dropdown-header text-xs-center',
                                strong 'Account'
                            a className: 'dropdown-item', href: '#',
                                i className: 'fa fa-bell-o'
                                'Updates'
                                span className: 'tag tag-info', '2'
                            a className: 'dropdown-item', href: '#',
                                i className: 'fa fa-envelope-o'
                                'Messages'
                                span className: 'tag tag-success', '2'
                            a className: 'dropdown-item', href: '#',
                                i className: 'fa fa-tasks'
                                'Tasks'
                                span className: 'tag tag-danger', '2'
                            a className: 'dropdown-item', href: '#',
                                i className: 'fa fa-comments'
                                'Comment'
                                span className: 'tag tag-warning', '2'
                            div className: 'dropdown-header text-xs-center',
                                strong {}, 'Settings'
                            a className: 'dropdown-item', href: '#',
                                i className: 'fa fa-user'
                                'Profile'
                            a className: 'dropdown-item', href: '#',
                                i className: 'fa fa-wrench'
                                'Setting'
                            a className: 'dropdown-item', href: '#',
                                i className: 'fa fa-usd'
                                'Payments'
                                span className: 'tag tag-default', '2'
                            a className: 'dropdown-item', href: '#',
                                i className: 'fa fa-file'
                                'Projects'
                                span className: 'tag tag-primary', '2'
                            div className: 'divider'
                            a className: 'dropdown-item', href: '#',
                                i className: 'fa fa-shield'
                                'Lock account'
                            a className: 'dropdown-item', href: '#',
                                i className: 'fa fa-lock'
                                'Logout'
                    li className: 'nav-item',
                        a className: 'nav-link navbar-toggler aside-toggle', href: '#'

module.exports = Header