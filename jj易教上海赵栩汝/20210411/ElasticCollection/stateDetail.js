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
  for(var j=0;j<stateArray.length;j++){
    var item = document.createElement('div');
    item.classList.add("item");

    var itemTop = document.createElement('img');
    itemTop.classList.add("itemTop");
    itemTop.src=stateArray[j].fields.photo[0].url;

    var itemBottom = document.createElement('div');
    itemBottom.classList.add("itemBottom");
    if(stateArray[j].fields.genre[0]=='history'){
      itemBottom.classList.add("itemHistory");
    }
    if(stateArray[j].fields.genre[0]=='religion'){
      itemBottom.classList.add("itemReligion");
    }
    if(stateArray[j].fields.genre[0]=='market'){
      itemBottom.classList.add("itemMarket");
    }
    if(stateArray[j].fields.genre[0]=='road'){
      itemBottom.classList.add("itemRoad");
    }
    if(stateArray[j].fields.genre[0]=='nature'){
      itemBottom.classList.add("itemNature");
    }
    

    item.append(itemTop);
    item.append(itemBottom)
    containerId.append(item);
  }



  fetchNextPage();
}, function done(err) {
  if (err) { console.error(err); return; }
});
