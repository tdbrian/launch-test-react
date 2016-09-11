import React from 'react';
import styles from './app.css';
import Header from '../_layout/header';
import Sidebar from '../_layout/sidebar';
import Footer from '../_layout/footer';

export default class App extends React.Component {
  
  constructor(props) {
    super(props);
    this.state = { test: 'foo' };
  }
  
  render() {
    return (
      <section>
        <Header></Header>
        <Sidebar></Sidebar>
        <div className={styles.app}>
          bar me
        </div>
        <Footer></Footer>
      </section>
    );
  }

}