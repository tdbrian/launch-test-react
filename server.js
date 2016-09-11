const path = require('path');
const express = require('express');
const webpack = require('webpack');
const webpackMiddleware = require('webpack-dev-middleware');
const webpackHotMiddleware = require('webpack-hot-middleware');
const config = require('./webpack.config.js');

const isDeveloping = process.env.NODE_ENV !== 'production';
const port = isDeveloping ? 3000 : process.env.PORT;
const app = express();
const compiler = webpack(config);
let middleware;

if (isDeveloping) setupDevelopment()
else setupProduction();

app.listen(port, 'localhost', (err) => {
  if (err) console.log(err);
  console.info(`==> 🌎 Listening on port ${port}. Open up http://localhost:${port}/ in your browser.`);
});

function setupWebpack() {
  middleware = webpackMiddleware(compiler, {
    publicPath: config.output.publicPath,
    contentBase: 'src',
    stats: {
      colors: true,
      hash: false,
      timings: true,
      chunks: false,
      chunkModules: false,
      modules: false
    }
  });

  app.use(middleware);
  app.use(webpackHotMiddleware(compiler));
}

function setupDevelopment() {
  setupWebpack();
  app.use(express.static(`${__dirname}/dist`));
  app.get('*', response =(req, res) => {
    res.write(middleware.fileSystem.readFileSync(path.join(`${__dirname}/dist/index.html`)));
    res.end();
  });
}

function setupProduction() {
  app.use(express.static(`${__dirname}/dist`));
  app.get('*', response = (req, res) => res.sendFile(path.join(`${__dirname}/dist/index.html`)));
}