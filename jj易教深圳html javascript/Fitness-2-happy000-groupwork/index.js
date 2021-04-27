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
app.post('*', async function(request, response, next) {
  console.log("getUrl11111111", request.url);
  console.log("getbody11111111", request.body);
  let newActivity=request.body.activity;
  let newDate=new Date(request.body.date.replace(/-/,"/")).getTime();
  let newAmount=request.body.scalar;
  let result=await dbo.insertActivityTable(newActivity,newDate,newAmount);
  console.log('dataBaseReturn222222222222222');
  console.log(result);
  response.send({
    message: "I got your POST request11111",
    result:result
  });
});


// listen for requests :)
const listener = app.listen(3000, () => {
  console.log("The static server is listening on port " + listener.address().port);
});


// call the async test function for the database
// this is an example showing how the database is used
// you will eventually delete this call.
dbo.initDB().catch(
  function (error) {
    console.log("error:",error);}
);


