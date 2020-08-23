# 03_Kanye_for_president

Unsecure data validation for survey on backend

## Method

Go to http://192.168.1.75/?page=survey#
Inspect select input
change vakue attribute on one of the options in the select

## How to exploit
Voting systems like these can be exploited by users to influence the results of the vote.

## Solution
- Do input validation on backend as well as frontend and send a response if frontend
has been tampered with
