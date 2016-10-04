{ div, h2, p, button } = require('react').DOM

module.exports = =>
    div 
        className: 'card card-inverse card-primary p-y-3' 
        style: 
            width: "44%"
        div className: 'card-block text-xs-center',
            div
                h2 {}, 'Sign up'
                p {}, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                button type: 'button', className: 'btn btn-primary active m-t-1', 'Register Now!'