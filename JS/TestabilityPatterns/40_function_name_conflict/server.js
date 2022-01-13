var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');
const { receiveMessageOnPort } = require('worker_threads');

function handleServer(req, res){
    var path = route.parse(req.url, true);

    if(req.url === '/'){
        res.writeHead(200, {"Content-Type" : "text/html"});
        fs.createReadStream('./index.html').pipe(res);
    }else if(path.pathname === '/query/'){
        console.log(req.method);

        //PATTERN CODE {1}
        //it takes element from a form 
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        var a = query.name;
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(outer()(a));
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
function outer(){
    var x = 'safe';
    function insider(x){
        return x;
    }
    return insider;
}