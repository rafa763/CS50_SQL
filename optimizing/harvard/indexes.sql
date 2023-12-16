-- General index for the database to speed up any query in general, not
-- specefic for one query

CREATE INDEX "student_name" ON "students" ("name");

CREATE INDEX "courses_data" ON "courses" ("department", "semester");

CREATE INDEX "reqs_name" ON "requirements" ("name");

CREATE INDEX "reqs_id" ON "satisfies" ("requirement_id");

CREATE INDEX "enrollments_people" ON "enrollments" ("student_id", "course_id");
