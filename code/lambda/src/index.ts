'use strict';

module.exports.handler = (event:any, context:any, callback:any) => 
{
    var request = event.Records[0].cf.request;
    
    console.log('*** REQUEST ***');
    console.log(JSON.stringify(request));
    console.log('*** REQUEST ***');
    
    console.log('*** URI ***');
    console.log(request.uri);
    console.log('*** URI ***');
    
    if(request.uri.includes('.'))
    {
        var extensions = request.uri.split('.');
        var ext = extensions[extensions.length-1];
        ext = ext.replace('/', '');
        
        if(ext === 'html' || ext === 'htm') 
        {
            request.uri = '/index.html';
        }
    }
    else
    {
        request.uri = '/index.html';
    }
      
    console.log('*** URI AFTER ***');
    console.log(request.uri);
    console.log('*** URI AFTER ***');
    
    callback(null, request);
};
