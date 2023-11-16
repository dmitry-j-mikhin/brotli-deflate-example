# brotli-deflate-example

This is example how to test infoleak compressed with brotli or deflate.

Image can be executed with [run.sh](run.sh) script:
```Shell
$ NODE_TOKEN='<Your WMX Node Token>' ./run.sh
```
Send an example of requests with infoleaks:
```Shell
curl -v 127.1/test.html
curl -v 127.1/test.html.br
curl -v 127.1/test.html.deflate
```

For each request infoleak will be created in Cloud