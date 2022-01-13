var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');
var res;
function handleServer(req, response){
    res = response;
    var path = route.parse(req.url, true);

    if(req.url === '/'){
        res.writeHead(200, {"Content-Type" : "text/html"});
        fs.createReadStream('./index.html').pipe(res);
    }else if(path.pathname === '/query/'){
        console.log(req.method);

        //PATTERN CODE {1}
        // Pass `MyFunction` as an argument to `print` function
        //print(MyFunction);
        //transformation
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        const n = query.name;
        print(n);

        
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
//callback function
//the idea is to call a function "dynamically", that print on 
//console the elements of a form (e.g. when it is asked to
//you if the info provided are correct). XSS
function MyFunction(n) {
    //it takes element from a form 
    return n;
}
 
 function print(n) {
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(MyFunction(n)); 
    res.end();
 }
 
