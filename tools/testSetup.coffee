process.env.NODE_ENV = 'test';

require.extensions['.css'] = -> null
require.extensions['.png'] = -> null
require.extensions['.jpg'] = -> null

jsdom = require('jsdom').jsdom
exposedProperties = ['window', 'navigator', 'document']

global.document = jsdom('')
global.window = document.defaultView
Object.keys(document.defaultView).forEach (property) =>
  
    if typeof global[property] is 'undefined'
        exposedProperties.push(property)
        global[property] = document.defaultView[property]

global.navigator =
    userAgent: 'node.js'

documentRef = document