
var closeId = document.querySelector('#closeId');
var overTipsId = document.querySelector('#overTipsId');
var nextId = document.querySelector('#nextId');



closeId.addEventListener('click',function(){
    overTipsId.classList.add('hide');
})


nextId.addEventListener('click',function(){
    location.href="./map.html"
})