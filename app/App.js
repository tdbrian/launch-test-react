import React from 'react';
import styles from './app.css';

export default class App extends React.Component {
  
  constructor(props) {
    super(props);
    this.state = { test: 'foo' };
  }
  
  render() {
    return (
      <div className={styles.app}>
        bar me
      </div>
    );
  }

}