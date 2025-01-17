USE blog;

-- 1.1 Display the number of all posts.

SELECT COUNT(post_id)
FROM posts;

-- 1.2 Display the number of posts published for the previous day.

SELECT COUNT(creation_date) FROM posts WHERE creation_date >= (CURDATE()-1) AND creation_date < CURDATE();

-- 1.3 Display the last 5 published posts.

SELECT * FROM posts
ORDER BY creation_date DESC
LIMIT 5;

-- 1.4 Display all posts with a list of tags separated by commas.

SELECT p.post_id, p.title, GROUP_CONCAT(DISTINCT tt.tag ORDER BY pt.post_id DESC) AS tags
FROM posts p
LEFT JOIN post_tags pt
USING (post_id)
JOIN thematic_tags tt USING (tag_id)
GROUP BY p.post_id;

-- 1.5 Display all posts that do not have tags.

SELECT * FROM posts
WHERE post_id NOT IN(SELECT post_id FROM post_tags);

-- 1.6 Display all posts whose titles begin with the letter 'S'.

SELECT * FROM posts
WHERE title LIKE 'S%';

SELECT * FROM posts
WHERE title REGEXP '^S';

-- 1.7 For each tag, display the number of posts.

SELECT tt.tag,COUNT(pt.post_id) AS 'posts ammount'
FROM thematic_tags tt
JOIN post_tags pt USING (tag_id)
GROUP BY tag;

-- 1.8 Display the top 5 users based on the number of published tags.

SELECT u.first_name, u.last_name, COUNT(pt.tag_id) AS posted_tags
FROM users u
JOIN posts p
ON u.user_id = p.author_id
JOIN post_tags pt
ON p.post_id = pt.post_id
GROUP BY user_id
ORDER BY posted_tags DESC
LIMIT 5;
