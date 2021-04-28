'use strict'

// using a Promises-wrapped version of sqlite3
const db = require('./sqlWrap');

// SQL commands for ActivityTable
const insertDB = "insert into ActivityTable (activity, date, amount) values (?,?,?)"
const getOneDB = "select * from ActivityTable where activity = ? and date = ? and amount = ?";
const allDB = "select * from ActivityTable where activity = ?";
const selectAllDB = "select * from ActivityTable";
const futureplans = "select * from ActivityTable where amount = -1";

async function testDB () {
  // for testing, always use today's date
  //const today = new Date().getTime();
  // all DB commands are called using await

  // empty out database - probably you don't want to do this in your program
  await db.deleteEverything();
  // return;
  await db.run(insertDB,["swim",1619625600000,-1]); //2021-4-29
  await db.run(insertDB,["swim",1619539200000,-1]); //2021-4-28
  await db.run(insertDB,["swim",1619452800000,-1]); //2021-4-27
  await db.run(insertDB,["swim",1617206400000,-1]); //2021-4-1
  //console.log("inserted two items");

  // look at the item we just inserted
  //let result = await db.get(getOneDB,["running",today,2.4]);
  // console.log(result);
  // get multiple items as a list
  //result = await db.all(allDB,["Walk"]);
  //console.log(result);
}

async function insertActivityTable (activity, date, amount) {
  await db.run(insertDB,[activity,date,amount]);
  var result = await db.all(selectAllDB);
  // console.log(result);
  return result;
}

async function recentfutureplan(){
 var time = new Date().getTime();
 const futureplans = "SELECT * FROM ActivityTable WHERE amount = -1 and date < "+time+" order by date desc LIMIT 1" ;
 var future_plan = await db.all(futureplans);

 await db.run("delete from ActivityTable where date < "+time);

 return future_plan;
}

async function latestactivity(){
  const result = await db.all(" select * from ActivityTable order by rowIdNum desc LIMIT 1  ");
  return result;
}

async function getActivitylist(date,activity)
{
  let before=date-604800000;
  const list = "select * from ActivityTable where ( date > "+ before +" and date <"+ date+" ) and activity='" + activity +"'";
  var result = await db.all(list);
  return result;
}


module.exports.insertActivityTable = insertActivityTable;
module.exports.testDB = testDB;
module.exports.recentfutureplan = recentfutureplan;
module.exports.latestactivity = latestactivity;
module.exports.getActivitylist = getActivitylist;