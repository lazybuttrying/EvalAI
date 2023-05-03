CREATE SCHEMA "AI";

CREATE TABLE "AI"."User" (
  "uuid" varchar PRIMARY KEY NOT NULL,
  "team" integer NOT NULL,
  "user_id" varchar NOT NULL,
  "passward" varchar NOT NULL,
  "created_at" timestamp NOT NULL
);

CREATE TABLE "AI"."File" (
  "uuid" varchar PRIMARY KEY,
  "install" varchar,
  "weight" varchar,
  "infer" varchar,
  "created_at" timestamp
);

ALTER TABLE "AI"."File" ADD FOREIGN KEY ("uuid") REFERENCES "AI"."User" ("uuid");

