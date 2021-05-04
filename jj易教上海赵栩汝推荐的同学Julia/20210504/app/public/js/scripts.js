$(document).ready(function(){
  // connect with server
  var socket = window.io.connect();
  
  
  // print new brush strokes from broadcasted data
  socket.on('broadcast-msg', function(data) {
    console.log('Get broadcast msg: ', data);
    var returnX = data[0];
    var returnY = data[1];
    var returnColor = data[2];
    var brushStroke = '<div class="brush-stroke" style="left:' + returnX + 'px;top:' + returnY+ 'px;background:' + returnColor+ '"></div>';
    
    document.querySelector('#showAreaId').innerHTML=document.querySelector('#showAreaId').innerHTML+brushStroke;
  });

  // information about current users
  socket.on('updateUsers', function(data) {
  });

  // create new socket connection
  socket.on('connect', function(){
     $('form').submit(function(event) {
      event.preventDefault();
      var messageText1 = $('#messageText1').val();
      var messageText2 = $('#messageText2').val();
      var messageColor = document.querySelector('#messageColor').value;
      var position = [messageText1, messageText2,messageColor];
      
      socket.emit('emit-msg', position, function(data) {
      });
    });
    var showAreaId = document.querySelector('#showAreaId');



    showAreaId.addEventListener('click',function(e){
      var x = e.pageX;
      var y = e.pageY-30;
      var messageColor = document.querySelector('#messageColor').value;
      var position = [x, y,messageColor];
      
      socket.emit('emit-msg', position, function(data) {
      });
    })    

  });
})


