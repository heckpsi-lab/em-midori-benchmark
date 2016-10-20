var express = require('express');
var app = express();

app.get('/', function (_req, res){
  res.end(JSON.stringify({msg: 'Hello World'}));
});

app.listen(4563, function(){
  console.log('Hello World app listening on port 4563!');
});

