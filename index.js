var config = require("./config");
var express = require("express");
var app = express();

var routes = require("./routes/route");

app.use("/", routes);

var server = app.listen(config.port, function () {
  var port = server.address().port;
  console.log(`API is running on http://localhost:${port}`);
});
