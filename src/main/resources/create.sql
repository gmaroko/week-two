CREATE TABLE "squads" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar UNIQUE,
  "max_size" int DEFAULT 5,
  "cause" varchar,
  "deleted" boolean DEFAULT false
);

CREATE TABLE "heroes" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar UNIQUE,
  "age" int,
  "squad_id" int,
  "strength_id" int,
  "weakness_id" int,
  "deleted" boolean DEFAULT false
);

CREATE TABLE "strengths" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar UNIQUE,
  "score" int DEFAULT 5,
  "deleted" boolean DEFAULT false
);

CREATE TABLE "weakness" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar UNIQUE,
  "score" int DEFAULT -5,
  "deleted" boolean DEFAULT false
);

-- Sample Strengths
INSERT INTO strengths (name, score) VALUES ('FEARLESS', 10);
INSERT INTO strengths (name, score) VALUES ('RUNNING', 10);
INSERT INTO strengths (name, score) VALUES ('WEAPONS', 20);
INSERT INTO strengths (name, score) VALUES ('KARATE', 5);

--Sample Weakness

INSERT INTO weakness (name, score) VALUES ('FEAR', -20);
INSERT INTO weakness (name, score) VALUES ('VENOM', -10);
INSERT INTO weakness (name, score) VALUES ('HEIGHTS', -20);
INSERT INTO weakness (name, score) VALUES ('SUN', 5);

-- Sample Squads

INSERT INTO squads (name, max_size, cause) VALUES ('avengers', 7, 'saving the world');
INSERT INTO squads (name, max_size, cause) VALUES ('ninja turtles', 4, 'fights');

-- Sample Heroes

INSERT INTO heroes (name, age) VALUES ('Ironman', 45);
INSERT INTO heroes (name, age) VALUES ('Thor', 40);
INSERT INTO heroes (name, age) VALUES ('Captain America', 35);
INSERT INTO heroes (name, age) VALUES ('Wonder Woman', 30);
INSERT INTO heroes (name, age) VALUES ('Thanos', 50);


