var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');
var req = '';
var res = '';

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

        //rewritten const func = function(x){ return message = message + x};
        function func(x){
            return x;
        }
        //vulnerability
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(func(a));
        res.end(); 
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');
