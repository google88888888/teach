var express = require('express')
  , app = express()
  , http = require('http')
  , server = http.createServer(app)
  , io = require('socket.io').listen(server)
  , path = require('path')
  
// Start server
server.listen(3000);

// Set up 'public' folder 
app.use(express.static(path.join(__dirname, 'public')))

// Point / to index.html (could just put index.html in public but leaving for reference)
app.use('/', function(req, res, next){
  res.sendFile('public/html/index.html', { root : __dirname })
})

// // Users array
// var users = [];

// Create new websocket 
io.sockets.on('connection', function (socket) {
  // Set user name
  // var userName = 'user ' + (users.length + 1);
  // socket.userName =  userName
  
  // users.push(userName); //add to array
  // io.sockets.emit('updateUsers', users); // update list			

  //user msgs
  console.log('socket11111111111111111')
  socket.on('emit-msg', function (msg) {
    // console.log(socket.userName + ':', msg);
    console.log('socket222222222222222')
    io.sockets.emit('broadcast-msg', msg);
  });

  //user disconnection
  socket.on('disconnect', function() {
    //remove from array
    // var pos = users.indexOf(socket.userName);
    // if (pos >= 0) {
    //   users.splice(pos, 1);
    // };
    // io.sockets.emit('updateUsers', users);	// update list
    console.log('User disconnected')
  });
});
