
console.log('find me in main.js');


var Airtable = require('airtable');

Airtable.configure({
  apiKey: 'keyFxvwCW8U8MxKns',
  endpointUrl: 'https://api.airtable.com'
});
var base = Airtable.base('apppLaTVMWcNaWWa8');

base('Table 1').select({
  maxRecords: 200,
  view: 'Grid view'
}).eachPage(function page(records, fetchNextPage) {
  console.log('11111111111111111111111');
  console.log(records);

  var placeContainer = document.querySelector('.container');

   records.forEach(function(record) {
    


    var place = document.createElement('div');
    place.classList.add("place-container");
    document.querySelector(".container").append(place);

    var placeTitle= document.createElement('div');
    placeTitle.classList.add('place-title');
    placeTitle.innerHTML = record.fields.title;


    var description = document.createElement('div');
    description.classList.add('description');
    description.innerHTML = record.fields.description;


    var photoUrl = document.createElement('img');
    photoUrl.classList.add('photo');
    photoUrl.src = record.fields.photo[0].url;


    var city = document.createElement('div');
    city.classList.add('city');
    city.innerHTML = record.fields.city;

    place.append(placeTitle);
    place.append(description);
    placeTitle.append(photoUrl);
    placeTitle.append(city);
    placeContainer.append(place);
    

  });

  fetchNextPage();
}, function done(err) {
  if (err) { console.error(err); return; }
});
