# 00_I_Can_Mali_Da_Admin

Unsecure email address stored in the front end.

## Method

Go to ?page=recover#  
Inspect submit button element  
Find the hidden input field
Change email value of the input field to anything
Click submit

## How to exploit

- This can be exploited by changing the email value on the hidden input.
- Malicious scripts can also be sent to the email in the value field.

## Solution

- Store admin email in a variable or file on the backend. This will only let devs see the admin email rather than it being publicly avaliable to anyone with a the basic knowledge of dev tools to access it. It is a fixed value as well makes no sense to serve it to the user

