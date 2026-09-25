WITH post AS
(
  SELECT
    COUNT(user_id) AS tweet_bucket
  FROM tweets
  WHERE tweet_date BETWEEN '2022-01-01 00:00:00' AND '2022-12-31 23:59:59'
  GROUP BY user_id
)

SELECT 
  tweet_bucket,
  COUNT(tweet_bucket) AS user_num
FROM post
GROUP BY tweet_bucket