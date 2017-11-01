const request = require("request");

request('https://api-tls11.friendbuy.com', (error, response, body) => {
  if (error) {
    console.log('TLS 1.1 is not supported. Please upgrade your integration.');
    return;
  }
  console.log(body);
});
