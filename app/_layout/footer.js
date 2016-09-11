import React from 'react';

export default class Footer extends React.Component {
  
  constructor(props) {
    super(props);
  }
  
  render() {
    return (
        <footer className="footer">
            <span className="text-left">
                <a href="http://launchtest.io">LaunchTest.io</a> &copy; 2016 Thomas Brian.
            </span>
            <span className="pull-right">
                Powered by <a href="http://launchtest.io">LaunchTest.io</a>
            </span>
        </footer>
    );
  }

}