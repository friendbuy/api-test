const request = require("request");

request('https://api-tls11.friendbuy.com', (error, response, body) => {
  console.log(body);
});
