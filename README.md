# inbound-network-traffic-verification

> A simple node.js app used for verifying inbound traffic

## How it works

Run the application:

```sh
docker run --rm -p 8080:8080 simonjensen/inbound-network-traffic-verification:latest

> inbound-network-traffic-verification@1.0.0 start
> node index.js
```

Test connection, but calling the service:

```sh
> curl -X GET 127.0.0.1:8080
{"timestamp":"2024-11-10T18:06:37.920Z","clientIp":"::ffff:172.17.0.1","method":"GET","url":"/"}

> curl -X POST 127.0.0.1:8080
{"timestamp":"2024-11-10T18:06:32.111Z","clientIp":"::ffff:172.17.0.1","method":"POST","url":"/"}
```
