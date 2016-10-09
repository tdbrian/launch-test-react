var webpack = require('webpack');
var path = require('path');

module.exports = {
    cache: true,
    debug: true,
    devtool: 'cheap-module-eval-source-map',
    noInfo: true,
    entry: './src/index',
    target: 'web',
    output: {
        path: path.resolve(__dirname),
        filename: 'bundle.js',
        publicPath: '/dist/'
    },
    resolveLoader: {
        modulesDirectories: ['node_modules']
    },
    resolve: {
        extensions: ['', '.js', '.coffee']
    },
    devServer: {
        contentBase: path.resolve(__dirname, 'dist'),
        historyApiFallback: true
    },
    plugins: [],
    module: {
        loaders: [
            { test: /\.jsx$/, include: path.join(__dirname, 'src'), loaders: ['jsx-loader?insertPragma=React.DOM'] },
            { test: /\.coffee$/, loader: 'coffee', exclude: /node_modules/, include: path.join(__dirname, 'src') },
            { test: /(\.css)$/, loaders: ['style', 'css'], exclude: /node_modules/, include: path.join(__dirname, 'src') }, 
            { test: /\.eot(\?v=\d+\.\d+\.\d+)?$/, loader: 'file' }, 
            { test: /\.(woff|woff2)$/, loader: 'url?prefix=font/&limit=5000' }, 
            { test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/, loader: 'url?limit=10000&mimetype=application/octet-stream' }, 
            { test: /\.svg(\?v=\d+\.\d+\.\d+)?$/, loader: 'url?limit=10000&mimetype=image/svg+xml'}
        ]
    }
};