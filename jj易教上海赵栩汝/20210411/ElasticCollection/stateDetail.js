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
  var subtitleId = document.querySelector('#subtitleId');
  var containerId = document.querySelector('#containerId');


  var searchURL = window.location.search;
  searchURL = searchURL.substring(1, searchURL.length);
  var stateName = decodeURIComponent(searchURL.split("&")[0].split("=")[1]);
  subtitleId.innerHTML=stateName;

  console.log('11111111111111111111111');
  console.log(records);
  var stateArray=[];
  for(var i=0;i<records.length;i++){
    if(records[i].fields.state==stateName){
      stateArray.push(records[i]);
    }
  }



  fetchNextPage();
}, function done(err) {
  if (err) { console.error(err); return; }
});
