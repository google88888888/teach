'use strict'

// A server that uses a database. 

// express provides basic server functions
const express = require("express");

// our database operations
const dbo = require('./databaseOps');

// object that provides interface for express
const app = express();

// use this instead of the older body-parser
app.use(express.json());

// make all the files in 'public' available on the Web
app.use(express.static('public'))

// when there is nothing following the slash in the url, return the main page of the app.
app.get("/", (request, response) => {
  response.sendFile(__dirname + "/public/index.html");
});

// This is where the server recieves and responds to POST requests
//app.post('*', function(request, response, next) {
  //console.log("Server recieved a post request at", request.url);
  //console.log("body",request.body);
  //response.send({message: "I got your POST request"});
//});

// app.post('/store', function(request, response, next) {
//   console.log("Server recieved a post request at", request.url);
//   let input = request.body;
//   console.log("body",request.body);
//   //接收到store后call这个function，这个function在databaseops里
//   //通过这个function去insert
//   //我不确定是否是对的
//   //这里没问题了 per Leo
//   dbo.testDB(input).catch(
//   function (error) {
//     console.log("error:",error);}
//   );

//   response.send({message: "I got your POST request"});
// });

app.post('/pastActivity', async function(request, response, next) {
  // console.log("Server recieved a post request at", request.url);
  // console.log("body",request.body);
  let newActivity=request.body.activity;
  let newDate=new Date(request.body.date.replace(/-/,"/")).getTime();
  let newAmount=request.body.scalar;
  let result=await dbo.insertActivityTable(newActivity,newDate,newAmount);
  // console.log(result);
  response.send({
    message: "I got your POST request",
    result:result
  });
});

app.post('/store', async function(request, response, next) {
  // console.log("Server recieved a post request at", request.url);
  // console.log("body",request.body);
  let newActivity=request.body.activity;
  let newDate=new Date(request.body.date.replace(/-/,"/")).getTime();
  let newAmount=JSON.stringify(-1);
  let result=await dbo.insertActivityTable(newActivity,newDate,newAmount);
  // console.log('dataBaseReturn');
  // console.log(result);
  response.send({
    message: "I got your POST request",
    result:result
  });
});

// listen for requests :)
const listener = app.listen(3000, () => {
  console.log("The static server is listening on port " + listener.address().port);
});

/*
// call the async test function for the database
// this is an example showing how the database is used
// you will eventually delete this call.*/
dbo.testDB().catch(
  function (error) {
    console.log("error:",error);}
);

// app.get('/reminder', function(request, response, next) {
//   console.log("Sever received a get request at", request.url);
//   const sqlite3 = require('sqlite3').verbose();
//   let db = new sqlite3.Database('activities.db');
//   let sql = `SELECT * From ActivityTable ORDER BY date LIMIT 1`;
//   db.all(sql, [], (err, rows) => {
//     if(err) {
//       console.log(err);
//       return;
//     }


//   })
//   response.send({message: "I got your GET request"});
// });

app.get('/reminder', async function(request, response, next) {
  // console.log("Sever received - a get request at", request.url);
  let result_future = await dbo.recentfutureplan();
  // console.log('result_future11111111111111111');
  // console.log(result_future);
  response.send({
   message: "get request",
   result:result_future
  })
});

app.get('/week',async function(request,response,next){
  console.log("Server received a get request at",request.query.date,request.query.activity);
  var time = new date().getTime();
  if(request.body.activity==null){
    let activity = await dbo.latestactivity();
  }else{
   activity = request.body.activity;
  }
  let date = request.body.date;
  if(request.body.date<time){
    let result = await dbo.getactivitylist(date,activity); 
    response.send({
      message: "I got activity list",
      result:result
    });
  }else{
    response.send({ message:"Too late"});
  }
})