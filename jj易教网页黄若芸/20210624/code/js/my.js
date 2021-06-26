$(document).ready(function(){
    var navigator1 = document.getElementById("navigator1");
    navigator1.addEventListener("click", function(){
        window.location.href="./home.html"; 
    });
    var navigator2 = document.getElementById("navigator2");
    navigator2.addEventListener("click", function(){
        window.location.href="./shelf.html"; 
    });
    var navigator3 = document.getElementById("navigator3");
    navigator3.addEventListener("click", function(){
        window.location.href="./chat.html"; 
    });
    var navigator4 = document.getElementById("navigator4");
    navigator4.addEventListener("click", function(){
        window.location.href="./my.html"; 
    });


    var home = document.getElementById("home");
    home.addEventListener("click", function(){
        window.location.href="./home.html"; 
    });
    var myChatting = document.getElementById("myChatting");
    myChatting.addEventListener("click", function(){
        window.location.href="./chat.html"; 
    });
    var myShelf = document.getElementById("myShelf");
    myShelf.addEventListener("click", function(){
        window.location.href="./shelf.html"; 
    });
});
