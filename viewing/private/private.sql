CREATE TABLE "codes" (
	"m_id" INTEGER,
	"char_num" INTEGER,
	"msg_len" INTEGER
);

INSERT INTO "codes" ("m_id", "char_num", "msg_len")
VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);

CREATE VIEW "message" AS
SELECT substr("sentence", "char_num", "msg_len") AS "phrase"
FROM "codes" AS "C"
JOIN "sentences" AS "S" ON "C"."m_id" = "S"."id";
