
-- *** The Lost Letter ***

SELECT "address", "type" FROM "addresses"
WHERE "id" = (
        SELECT "to_address_id" FROM "packages"
        WHERE "contents" LIKE "%congratulatory%"
);


-- *** The Devious Delivery ***

-- get the package details
SELECT * FROM "packages"
WHERE "from_address_id" IS NULL;

-- see the current status of this package
SELECT * FROM "scans"
WHERE "package_id" = 5098;

-- get the address and it's type where it is currently
SELECT * FROM "addresses"
WHERE "id" = 348;


-- *** The Forgotten Gift ***

-- get the package id and it's content
SELECT "id", "contents" FROM "packages"
WHERE "from_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE "address" = '109 Tileston Street'
);

-- see the current status of this package
SELECT * FROM "scans"
WHERE "package_id" = 9523;

-- get the name of whom picked the package
SELECT "name" FROM "drivers"
WHERE "id" = 17;
