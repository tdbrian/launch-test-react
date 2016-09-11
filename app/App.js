require('../css/font-awesome.min.css')
require('../css/simple-line-icons.css')
require('../css/style.min.css')

import React from 'react';
import styles from './app.css';

export default class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {test: 'foo'};
  }
  render() {
    return (
      <div className={styles.app}>
        bar me
      </div>
    );
  }
}