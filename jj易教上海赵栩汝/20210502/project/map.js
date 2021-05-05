
console.log('find me in main.js');

//生成从minNum到maxNum的随机数
function randomNum(minNum,maxNum){ 
  return parseInt(Math.random()*(maxNum-minNum+1)+minNum,10); 
} 
var container = document.querySelector('.container');

var place = document.createElement('div');
place.classList.add("container");
document.querySelector(".container").append(place);

var initImages=[
  './fruit/L.png',
  './fruit/E.png',
  './fruit/T.png',
  './fruit/S.png',
  './fruit/plate.png',
  './fruit/L.png',
  './fruit/E.png',
  './fruit/A.png',
  './fruit/R.png',
  './fruit/N.png'
]
var allFruits=[
  'apple',
  'banana',
  'grape',
  'lemon',
  'lychee',
  'mango',
  'orange',
  'peach',
  'pear',
  'pineapple',
  'strawberry',
  'watermelon',
]
var currentFruit;
for(var i=0;i<initImages.length;i++){
  var photoUrl = document.createElement('img');
  photoUrl.classList.add('item');
  photoUrl.src = initImages[i];
  
  photoUrl.addEventListener('mouseover',function(){
    let index=randomNum(0,11);
    this.src='./fruit/'+allFruits[index]+'.png';
    currentFruit=allFruits[index];
  })
  photoUrl.addEventListener('click',function(){
    var mp3 = "./sound/"+currentFruit+".mp3";
    var mp3 = new Audio(mp3);
    mp3.play();
  })

  container.append(photoUrl);
}

for(var i=0;i<78;i++){
  var photoUrl = document.createElement('img');
  photoUrl.classList.add('item');
  photoUrl.src = './fruit/plate.png';

  photoUrl.addEventListener('mouseover',function(){
    let index=randomNum(0,11);
    this.src='./fruit/'+allFruits[index]+'.png';
    currentFruit=allFruits[index];
  })
  photoUrl.addEventListener('click',function(){
    var mp3 = "./sound/"+currentFruit+".mp3";
    var mp3 = new Audio(mp3);
    mp3.play();
  })

  container.append(photoUrl);
}

var nextId = document.querySelector('#nextId');
nextId.addEventListener('click',function(){
  location.href="./word.html"
})

var player = document.querySelector('#myAudio');
document.addEventListener('click',function(){
  player.play();
})