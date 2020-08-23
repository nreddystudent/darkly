# 04_Look_at_me_I_am_the_admin_now

Admin cookie/session stored unsecurely

## Method

Go to http://192.168.1.75/  
Open Dev tools go to Storage and select cookies for this website
change the I_am_admin value to md5 true.

## How to exploit

 I_am_amdin cookie contains md5 false change
 this to true and the application will see you as an admin
 b326b5062b2f0e69046810717534cb09 - md5 true

## Solution

Never save sensitive session information on the browser. Store information such
as is_admin on the database or the session variable on the backend where
it cannot be accessed and use cookies to track if a user is logged in after they
have logged in,with no information about the user session itself,and
should be signed or encrypted with something like JWT
