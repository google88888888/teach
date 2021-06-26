$(document).ready(function(){
    $("#send").click(function(){
        var messageInput=$("#messageInput").val();
        $("#center").append(
            '<div class="rightItem">'+
            '<div class="rightImg">'+
                '<img src="./image/right.png" class="rightImgPng" />'+
            '</div>'+
            '<div class="rightContent">'+
                messageInput+
            '</div>'+
            '<div class="clear"></div>'+
            '</div>'
        )
    });

    $("#return,#close").click(function(){
        window.location.href="./chat.html"; 
    });
});
