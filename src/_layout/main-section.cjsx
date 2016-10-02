React = require 'react'

class MainSection extends React.Component
  
  constructor: (props) ->
    super props
  
    render -> (
        <main class="main">

            <ol class="breadcrumb" breadcrumb="">
                <li class="breadcrumb-menu">
                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <a class="btn btn-secondary" href="#"><i class="icon-speech"></i></a>
                        <a class="btn btn-secondary" ui-sref="app.main" href="#/dashboard"><i class="icon-graph"></i> &nbsp;Dashboard</a>
                        <a class="btn btn-secondary" ui-sref="app.main" href="#/dashboard"><i class="icon-settings"></i> &nbsp;Settings</a>
                    </div>
                </li>
            </ol>

            <div class="container-fluid">
            <div id="launch-test-app"></div>
            </div>
        </main>
    )

module.exports = MainSection