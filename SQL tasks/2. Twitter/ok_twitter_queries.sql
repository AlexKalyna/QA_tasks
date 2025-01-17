USE ok_twitter;
SELECT * FROM comments;
-- 2.1. Display the last 5 published tweets.

SELECT twit, post_date AS posted FROM twits
ORDER BY post_date DESC
LIMIT 5;

-- 2.2. Display the average age of all Twitter users.

SELECT ROUND(YEAR(NOW())-AVG(YEAR(birth_date))) AS 'average age' FROM users;

-- 2.3. Display the number of followers for each user.

SELECT u.first_name, u.last_name, COUNT(f.follower_id) AS 'count' 
FROM followers f
LEFT JOIN users u USING (user_id)
GROUP BY user_id
ORDER BY u.first_name;

-- 2.4. Display users who have at least one follower.

SELECT DISTINCT u.user_id, u.first_name, u.last_name, 'yes' AS has_followers
FROM followers f
LEFT JOIN users u USING (user_id)
ORDER BY u.user_id;

-- 2.5. List users who have no tweets.

SELECT COUNT(u.user_id) 'users_with_no_twits'
FROM users u
WHERE user_id NOT IN(SELECT user_id FROM twits);

-- 2.6. Display the number of comments for each tweet.

SELECT t.twit_id, t.twit, COUNT(c.comment_id) 'comments'
FROM twits t
LEFT JOIN comments c USING (twit_id)
GROUP BY twit_id;

-- 2.7. Display all tweets (including all tweets of followers) for this user, sorted by publication date (last from top).

SELECT t.twit_id,t.twit, t.post_date
FROM twits t
WHERE t.user_id = 22
UNION
SELECT t.twit_id, t.twit, t.post_date 
FROM twits t
JOIN followers f USING (user_id)
WHERE f.follower_id IN (SELECT f.follower_id FROM followers f WHERE user_id = 22)
ORDER BY post_date DESC;

-- 2.8. Display all comments that were published in the last 10 hours.

SELECT * FROM comments
WHERE DATE(creation_date) >= DATE(NOW()) - INTERVAL 10 HOUR;

