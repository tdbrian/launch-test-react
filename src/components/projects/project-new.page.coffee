React = require 'react'
{ ol, li, a, i, div, span, strong, small, input, select, option, label, button } = React.DOM

class ProjectNewPage extends React.Component

    constructor: (props, context) ->
        super props, context

    render: ->
        div {},
        
            ol className: 'breadcrumb',
                li className: 'breadcrumb-item', span {}, 'Projects'
                li className: 'breadcrumb-item active', span {}, 'New'

            div className: 'container-fluid',
                div className: 'animated fadeIn',
                    div className: 'row',
                        div {},
                            div className: 'card',
                                div className: 'card-header',
                                    strong {}, 'Add New Project'
                                    small {}, ' Form'

                                div className: 'card-block',
                                    
                                    div className: 'row',
                                        div className: 'col-sm-12',
                                            div className: 'form-group',
                                                label htmlFor: 'name', 'Name'
                                                input type: 'text', className: 'form-control', id: 'name', placeholder: 'Enter the project name'

                                    div className: 'row',
                                        div className: 'col-sm-12',
                                            div className: 'form-group',
                                                label htmlFor: 'projectNumber', 'Project Number'
                                                input type: 'text', className: 'form-control', id: 'projectNumber', placeholder: 'Enter the project number (1001, etc.)'

                                div className: 'card-footer',
                                    button type: 'submit', className: 'btn btn-sm btn-primary',
                                        i className: 'fa fa-dot-circle-o'
                                        ' Submit'
                                    button type: 'reset', className: 'btn btn-sm btn-danger',
                                        i className: 'fa fa-ban'
                                        ' Cancel'

module.exports = ProjectNewPage