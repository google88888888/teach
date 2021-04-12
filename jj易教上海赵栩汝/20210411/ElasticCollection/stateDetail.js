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
  function getItem(itemParam){
    console.log('item11111111111111111');
    console.log(itemParam);
    var item = document.createElement('div');
    item.classList.add("item");
  
    var itemTop = document.createElement('img');
    itemTop.classList.add("itemTop");
    itemTop.src=itemParam.fields.photo[0].url;
  
    var itemBottom = document.createElement('div');
    itemBottom.classList.add("itemBottom");
    if(itemParam.fields.genre[0]=='history'){
      itemBottom.classList.add("itemHistory");
    }
    if(itemParam.fields.genre[0]=='religion'){
      itemBottom.classList.add("itemReligion");
    }
    if(itemParam.fields.genre[0]=='market'){
      itemBottom.classList.add("itemMarket");
    }
    if(itemParam.fields.genre[0]=='road'){
      itemBottom.classList.add("itemRoad");
    }
    if(itemParam.fields.genre[0]=='nature'){
      itemBottom.classList.add("itemNature");
    }
    item.append(itemTop);
    item.append(itemBottom)
    return item;
  }

  var subtitleId = document.querySelector('#subtitleId');
  var containerId = document.querySelector('#containerId');
  var buttonHistoryId = document.querySelector('#buttonHistoryId');
  var buttonReligionId = document.querySelector('#buttonReligionId');
  var buttonMarketId = document.querySelector('#buttonMarketId');
  var buttonRoadId = document.querySelector('#buttonRoadId');
  var buttonNatureId = document.querySelector('#buttonNatureId');
  var buttonReturnId = document.querySelector('#buttonReturnId');


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
    var item = getItem(stateArray[j]);
    containerId.append(item);
  }



  fetchNextPage();
}, function done(err) {
  if (err) { console.error(err); return; }
});
