DROP TABLE IF EXISTS "public"."recipes";

CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name text,
  average_cooking_time int,
  rating int
);
