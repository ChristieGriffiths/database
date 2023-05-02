CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  user_name text,
  email_address text
);

-- Then the table with the foreign key first.
CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  post_title text,
  post_content text,
  post_views int,
  user_id int,
  constraint fk_user foreign key(user_id)
    references users(id)
    on delete cascade
);