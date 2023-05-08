--  5 OLDEST USERS
select * from users
order by created_at
LIMIT 1,5;

-- DAYOFWEEK WITH THE MOST REGISTRATIONS
SELECT dayname(created_at) as new1,count(*)
FROM users
group by new1
order by count(*) desc ;

-- 3 ( WHICH USER HASNOT POSTED ANY PHOTOS)
SELECT username,image_url FROM users
LEFT JOIN photos on users.id = photos.user_id
WHERE photos.id IS NULL;

-- 4 ( WHICH USER GETS THE MOST LIKES ON ONE PIC)
SELECT
    username,
    PHOTOS.ID,
    PHOTOS.IMAGE_URL,
    COUNT(*) AS most_likes
FROM
    PHOTOS
        INNER JOIN
    likes ON photos.id = likes.photo_id
        INNER JOIN
    users ON users.id = photos.user_id
GROUP BY photo_id
ORDER BY most_likes DESC
LIMIT 1;

-- 5 (TO KNOW WHICH USER POST THE MOST)
SELECT COUNT(*) AS NEW ,USER_ID,ID FROM PHOTOS
GROUP BY USER_ID
ORDER BY NEW DESC;
-- AVERAGE POST PER USER
SELECT (SELECT COUNT(*) FROM PHOTOS) /
(SELECT COUNT(*) FROM USERS) AS Average_post;

-- 6 (TOP 5 MOST COMMONLY USED HASHTAGS)
SELECT tags.tag_name, count(*) as total FROM photo_tags
JOIN tags ON photo_tags.tag_id = tags.id
GROUP BY tag_id
order by total DESC
LIMIT 5;

-- 7 ( FIND USERS WHO HAVE LIKED EVERY SINGLE PHOTO)
SELECT 
     users.username, COUNT(*) AS most_likes
FROM
    LIKES
        JOIN
    users ON USERS.ID = LIKES.user_id
GROUP BY user_id
HAVING most_likes = 257;  -- IF WE KNOW THE NO OF PHOTOS, HAVING CLAUSE CAN BE USED AS WHERE CLAUSE.

-- OR (IF WE DONOT KNOW NO OF PHOTOS)
SELECT 
     users.username, COUNT(*) AS most_likes
FROM
    LIKES
        JOIN
    users ON USERS.ID = LIKES.user_id
GROUP BY users.id
HAVING most_likes = (SELECT COUNT(*) FROM PHOTOS); 
