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
  var leftId = document.querySelector('#leftId');
  var rightId = document.querySelector('#rightId');

  console.log('11111111111111111111111');
  console.log(records);
  var stateArray=[];
  for(var i=0;i<records.length;i++){
    var hasValueInStateArray=false
    for(var j=0;j<stateArray.length;j++){
      if(records[i].fields.state==stateArray[j]){
        hasValueInStateArray=true;
        break;
      }
    }
    if(hasValueInStateArray===false){
      stateArray.push(records[i].fields.state);
    }
  }

  console.log('22222222222222222222222');
  console.log(stateArray);
  for(var x=0;x<stateArray.length;x++){
    console.log('3333333333333333333333333333333333');
    console.log(stateArray[x]);
    var leftItem = document.createElement('div');
    leftItem.classList.add("leftItem");
    leftItem.innerHTML = stateArray[x];
    leftItem.addEventListener('click',function(){
      location.href="./stateDetail.html?stateName="+encodeURIComponent(this.innerHTML);
    })
    leftItem.addEventListener('mouseover',function(){
      rightId.innerHTML='';
      var rightImg = document.createElement('img');
      rightImg.classList.add("rightImg");
      rightImg.src="./png/"+this.innerHTML+'.png';
      rightId.append(rightImg);
    })
    leftId.append(leftItem);
  }


  fetchNextPage();
}, function done(err) {
  if (err) { console.error(err); return; }
});
