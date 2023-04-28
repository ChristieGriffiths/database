CREATE TABLE blogs (
  id SERIAL PRIMARY KEY,
  title text,
  content text
);

-- Then the table with the foreign key first.
CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  author text,
  content text,
  author_id int,
  constraint fk_author foreign key(author_id)
    references blogs(id)
    on delete cascade
);