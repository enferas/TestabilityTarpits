var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');
const events = require('events');

function handleServer(request, response){
    req = request;
    res = response;
    var path = route.parse(req.url, true);

    if(req.url === '/'){
        res.writeHead(200, {"Content-Type" : "text/html"});
        fs.createReadStream('./index.html').pipe(res);
    }else if(path.pathname === '/query/'){
        console.log(req.method);

        //PATTERN CODE {1}
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        var a = query.name;
        let event = new events.EventEmitter('build');
        event.a = a;
        // Listen for the event.
        //event.addListener('build', func);

        // Dispatch the event.
        //event.emit('build');
        func(event);

        function func(event){
            //vulnerability
            res.writeHead(200, {"Content-Type" : "text/html"});
            res.write(event.a);
            res.end(); 
        }

    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');
