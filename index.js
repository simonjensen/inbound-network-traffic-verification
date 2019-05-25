const http = require('http');
const server = http.createServer(function(req, res) {
  const ip = req.headers['x-forwarded-for'] || req.connection.remoteAddress;
  let date = new Date();
  console.log(date.toISOString(), ip, req.method, req.url);

  res.end("OK\n");
});

server.listen(8080);
