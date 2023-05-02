TRUNCATE TABLE users RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO users (user_name, email_address) VALUES ('John Cardiel', 'allhailcardiel@gmail.com');
INSERT INTO users (user_name, email_address) VALUES ('Danny Way', 'dman@hotmail.com');

TRUNCATE TABLE posts RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO posts (post_title, post_content, post_views, user_id) VALUES ('1st day on the job', 'got fired', '3', '13');
INSERT INTO posts (post_title, post_content, post_views, user_id) VALUES ('1st day on my next job', 'got fired again!', '0', '14');