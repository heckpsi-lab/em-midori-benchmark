var http = require('http');

function requestListener(req, res) {
  if (req.url === '/') {
    res.end(JSON.stringify({msg: 'Hello world'}));
  } else {
    res.end();
  }
}

http.createServer(requestListener).listen(4562, function() {
  console.log('Hello World app listening on port 4562!');
});

