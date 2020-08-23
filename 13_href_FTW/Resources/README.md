# 13_href_FTW
Redirections / Links stored on the frontend can be manipulated

## Method & How to exploit
Go to footer http://192.168.1.75/  
Inpect any of the social media icons  
edit the site get value in the link to something else
href=index.php?page=redirect&site=stackoverflow

## Solution
-Use an anchor tag with an href and store the url in the url attribute. No need
to add logic for redirection
