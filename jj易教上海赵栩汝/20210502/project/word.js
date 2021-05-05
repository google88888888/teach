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
var upId = document.querySelector('#upId');
var downId = document.querySelector('#downId');
var firstId = document.querySelector('#firstId');
var secondId = document.querySelector('#secondId');
var thirdId = document.querySelector('#thirdId');
var fruitId = document.querySelector('#fruitId');
var nameId = document.querySelector('#nameId');




function getSelectImg(selectImgIndex){
  console.log('selectImgIndex111111111111');
  console.log(selectImgIndex);
  firstId.innerHTML='';
  var firstImg = document.createElement('img');
  firstImg.classList.add('selectImg');
  firstImg.src='./fruit/'+allFruits[selectImgIndex]+'.png';
  firstId.append(firstImg);
  
  secondId.innerHTML='';
  var secondImg = document.createElement('img');
  secondImg.classList.add('selectImg');
  secondImg.src='./fruit/'+allFruits[selectImgIndex+1]+'.png';
  secondId.append(secondImg);
  
  thirdId.innerHTML='';
  var thirdImg = document.createElement('img');
  thirdImg.classList.add('selectImg');
  thirdImg.src='./fruit/'+allFruits[selectImgIndex+2]+'.png';
  thirdId.append(thirdImg);
}

var selectImgIndex=0;
getSelectImg(selectImgIndex);



upId.addEventListener('click',function(){
  if(selectImgIndex>=allFruits.length-3){
    return;
  }
  selectImgIndex=selectImgIndex+3;
  getSelectImg(selectImgIndex);
})
downId.addEventListener('click',function(){
  if(selectImgIndex<=0){
    return;
  }
  selectImgIndex=selectImgIndex-3;
  getSelectImg(selectImgIndex);
})

firstId.addEventListener('click',function(){
  fruitId.innerHTML='';
  var fruitImg = document.createElement('img');
  fruitImg.classList.add('fruitImg');
  fruitImg.src='./fruit/'+allFruits[selectImgIndex]+'.png';
  fruitId.append(fruitImg);
  nameId.innerHTML=allFruits[selectImgIndex];
})
secondId.addEventListener('click',function(){
  fruitId.innerHTML='';
  var fruitImg = document.createElement('img');
  fruitImg.classList.add('fruitImg');
  fruitImg.src='./fruit/'+allFruits[selectImgIndex+1]+'.png';
  fruitId.append(fruitImg);
  nameId.innerHTML=allFruits[selectImgIndex+1];
})
thirdId.addEventListener('click',function(){
  fruitId.innerHTML='';
  var fruitImg = document.createElement('img');
  fruitImg.classList.add('fruitImg');
  fruitImg.src='./fruit/'+allFruits[selectImgIndex+2]+'.png';
  fruitId.append(fruitImg);
  nameId.innerHTML=allFruits[selectImgIndex+2];
})