# 06_Mr_Robot
  The robot.txt contains a list of folders and files web crawlers can/can't access from your site

## Method 

Go to http://192.168.1.75/robots.txt
/whatever is protected from webcrawlers we can access it though

## How to exploit
Go to http://192.168.1.75/whatever  
We can download a file called `htpasswd`  
decrypt the password using md5
We can now go to http://192.168.1.75/admin/  

username: root
password: dragon

## Solution
- Use a router on the frontend so users have no access to file system
