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

  var leftTitleId = document.querySelector('#leftTitleId');
  var leftContentId = document.querySelector('#leftContentId');
  var centerImgId = document.querySelector('#centerImgId');
  var centerEnterId = document.querySelector('#centerEnterId');
  var rightId = document.querySelector('#rightId');

  var searchURL = window.location.search;
  searchURL = searchURL.substring(1, searchURL.length);
  var itemName = decodeURIComponent(searchURL.split("&")[0].split("=")[1]);
  leftTitleId.innerHTML=itemName;
  var item;
  for(var i=0;i<records.length;i++){
    if(records[i].fields.title==itemName){
      item=records[i];
    }
  }
  leftContentId.innerHTML=item.fields.description;
  centerImgId.src=item.fields.photo[0].url;

  rightId.addEventListener('click',function(){
    location.href="./stateDetail.html?stateName="+encodeURIComponent(item.fields.state);
  })
  centerEnterId.addEventListener('click',function(){
    location.href="./googleMap.html?itemName="+encodeURIComponent(item.fields.title);
  })

  fetchNextPage();
}, function done(err) {
  if (err) { console.error(err); return; }
});
