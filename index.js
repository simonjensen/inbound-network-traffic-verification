const http = require('node:http');
const requestIp = require('request-ip');

const port = process.env.PORT;
const server = http.createServer(function (req, res) {
  const ip = requestIp.getClientIp(req);
  let date = new Date();
  console.log(date.toISOString(), ip, req.method, req.url);

  res.writeHead(200, { 'Content-Type': 'application/json' });
  res.end(JSON.stringify({
    timestamp: date.toISOString(),
    clientIp: ip,
    method: req.method,
    url: req.url
  }));
});

server.listen(port);
