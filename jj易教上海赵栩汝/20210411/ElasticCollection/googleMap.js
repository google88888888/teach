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

  var iframeContentId = document.querySelector('#iframeContentId');
  var centerOutId = document.querySelector('#centerOutId');

  var searchURL = window.location.search;
  searchURL = searchURL.substring(1, searchURL.length);
  var itemName = decodeURIComponent(searchURL.split("&")[0].split("=")[1]);
  var item;
  for(var i=0;i<records.length;i++){
    if(records[i].fields.title==itemName){
      item=records[i];
    }
  }
  
  centerOutId.addEventListener('click',function(){
    location.href="./itemDetail.html?itemName="+encodeURIComponent(item.fields.title);
  })

  fetchNextPage();
}, function done(err) {
  if (err) { console.error(err); return; }
});
