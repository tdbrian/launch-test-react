var webpack = require('webpack');
var path = require('path');

module.exports = {
    debug: true,
    devtool: 'cheap-module-eval-source-map',
    noInfo: false,
    entry: [
        'webpack-dev-server/client?http://0.0.0.0:8080',
        'webpack/hot/dev-server',
        './src/index'
    ],
    target: 'web',
    output: {
        path: path.resolve(__dirname + '/build'),
        publicPath: '/dist/',
        filename: 'bundle.js'
    },
    resolveLoader: {
        modulesDirectories: ['node_modules']
    },
    resolve: {
        extensions: ['', '.js', '.cjsx', '.coffee']
    },
    devServer: {
        contentBase: path.resolve(__dirname, 'dist')
    },
    plugins: [
        new webpack.HotModuleReplacementPlugin()
    ],
    module: {
        loaders: [
            { test: /\.jsx$/, include: path.join(__dirname, 'src'), loaders: ['jsx-loader?insertPragma=React.DOM'] },
            { test: /\.cjsx$/, loaders: ['coffee', 'cjsx'] },
            { test: /\.coffee$/, loader: 'coffee' },
            { test: /(\.css)$/, loaders: ['style', 'css'] }, 
            { test: /\.eot(\?v=\d+\.\d+\.\d+)?$/, loader: 'file' }, 
            { test: /\.(woff|woff2)$/, loader: 'url?prefix=font/&limit=5000' }, 
            { test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/, loader: 'url?limit=10000&mimetype=application/octet-stream' }, 
            { test: /\.svg(\?v=\d+\.\d+\.\d+)?$/, loader: 'url?limit=10000&mimetype=image/svg+xml'}
        ]
    }
};