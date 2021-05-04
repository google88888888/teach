$(document).ready(function(){
  // connect with server
  var socket = window.io.connect();
  
  
  // print new brush strokes from broadcasted data
  socket.on('broadcast-msg', function(data) {
    console.log('Get broadcast msg: ', data);
    var brushStroke = '<div>'+data[0]+'</div>';
    
    document.querySelector('#showAreaId').innerHTML=document.querySelector('#showAreaId').innerHTML+brushStroke;
  });

  // create new socket connection
  socket.on('connect', function(){   

  });
})


