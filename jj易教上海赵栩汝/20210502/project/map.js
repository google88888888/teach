
console.log('find me in main.js');

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
for(var i=0;i<initImages.length;i++){
  var photoUrl = document.createElement('img');
  photoUrl.classList.add('item');
  photoUrl.src = initImages[i];
  container.append(photoUrl);
}

for(var i=0;i<78;i++){
  var photoUrl = document.createElement('img');
  photoUrl.classList.add('item');
  photoUrl.src = './fruit/plate.png';
  container.append(photoUrl);
}
