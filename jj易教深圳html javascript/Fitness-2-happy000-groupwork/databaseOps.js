'use strict'

// using a Promises-wrapped version of sqlite3
const db = require('./sqlWrap');

// SQL commands for ActivityTable
const insertDB = "insert into ActivityTable (activity, date, amount) values (?,?,?)"
const getOneDB = "select * from ActivityTable where activity = ? and date = ? and amount = ?";
const allDB = "select * from ActivityTable where activity = ?";
const selectAllDB = "select * from ActivityTable";

async function initDB () {
  await db.deleteEverything();
}

async function insertActivityTable (activity, date, amount) {
  await db.run(insertDB,[activity,date,amount]);
  var result = await db.all(selectAllDB);
  console.log('dataBaseReturn1111111111111111111');
  console.log(result);
  return result;
}


module.exports.insertActivityTable = insertActivityTable;
module.exports.initDB = initDB;
