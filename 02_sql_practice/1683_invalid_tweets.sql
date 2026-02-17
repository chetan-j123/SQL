/*
LeetCode 1683 - Invalid Tweets

Table: Tweets
- tweet_id (INT, Primary Key)
- content (VARCHAR)

A tweet is invalid if the number of characters in content is
strictly greater than 15.

Task:
Return the tweet_id of all invalid tweets.
*/

SELECT
    tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
