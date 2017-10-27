var request = require("request");

request("https://api-tls11.friendbuy.com", function(error, response, body) {
  console.log(body);
});