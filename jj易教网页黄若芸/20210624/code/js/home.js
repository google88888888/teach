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
    var friendsViewAll = document.getElementById("friendsViewAll");
    friendsViewAll.addEventListener("click", function(){
        window.location.href="./chat.html"; 
    });
    $(".peopleItem").click(function(){
        window.location.href="./chatMessage.html"; 
    });

    var readingViewAll = document.getElementById("readingViewAll");
    readingViewAll.addEventListener("click", function(){
        window.location.href="./shelf.html"; 
    });


    var book1 = document.getElementById("book1");
    book1.addEventListener("click", function(){
        window.location.href="https://www.learningarabicwithangela.com/post/free-online-arabic-short-stories-for-pdf-download-stage-1-children-and-beginners"; 
    });
    var book2 = document.getElementById("book2");
    book2.addEventListener("click", function(){
        window.location.href="https://dlscrib.com/download/i-39-m-learning-japanese-a-language-adventure-for-young-people_58f404c1dc0d600b4cda983a_pdf"; 
    });
    var book3 = document.getElementById("book3");
    book3.addEventListener("click", function(){
        window.location.href="https://accelconf.web.cern.ch/ipac2016/talks/thea01_talk.pdf"; 
    });
    var book4 = document.getElementById("book4");
    book4.addEventListener("click", function(){
        window.location.href="https://www.spanishplayground.net/spanish-story-for-beginners-pdf/"; 
    });
    var book5 = document.getElementById("book5");
    book5.addEventListener("click", function(){
        window.location.href="http://www.dominiopublico.gov.br/download/texto/gu010577.pdf"; 
    });
    var book6 = document.getElementById("book6");
    book6.addEventListener("click", function(){
        window.location.href="https://www.routledge.com/Listening-in-Language-Learning/Rost-Candlin/p/book/9780582016507"; 
    });


});
