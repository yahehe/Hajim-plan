 // better instead
var express = require('express');
var server = express();

// server set up
server.configure(function(){
  server.use('/media', express.static(__dirname + '/media'));
  server.use(express.static(__dirname + '/public'));
});

/* some server side logic */
app.post("/user/add", function(req, res) { 
	res.send("OK");
});
	
/* serves main page */
//server.get("/", function(req, res) {
//});

 /* serves all the static files */
server.get(/^(.+)$/, function(req, res){ 
	res.sendfile('app/index.html')
    console.log('static file request : ' + req.params);
    res.sendfile( __dirname + req.params[0]); 
});

var port = process.env.PORT || 5000;
app.listen(port, function() {
   console.log("Listening on " + port);
});