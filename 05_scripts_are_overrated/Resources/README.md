# 05_XSS_injection
scripts can be injected regex on backend is incorrect  

## Method & How to exploit

Go to http://192.168.1.75/?page=feedback  
In the 'Name' field type `script`  
Submit the form.

## Solution  
- Change regex on backend that does sanitization or
Replace < with &lt; and > with &gt; so html tags are displayed
as text.

