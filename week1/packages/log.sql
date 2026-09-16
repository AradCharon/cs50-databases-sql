-- *** The Lost Letter ***

-- Find Anneke's address.
SELECT *
FROM addresses
WHERE address = '900 Somerville Avenue';

-- Find packages sent from Anneke's address.
SELECT *
FROM packages
WHERE from_address_id = 432;

-- Find the destination addresses of those packages.
SELECT *
FROM addresses
WHERE id IN (854, 484, 585, 4984);

-- Find all scans of the package sent to 2 Finnigan Street.
SELECT *
FROM scans
WHERE package_id = 384
ORDER BY timestamp;

-- Find the final address of the Lost Letter.
SELECT *
FROM addresses
WHERE id = 854;

-- Find the contents of the Lost Letter.
SELECT contents
FROM packages
WHERE id = 384;


-- *** The Devious Delivery ***

-- Find packages without a known sender address.
SELECT *
FROM packages
WHERE from_address_id IS NULL;

-- Find all scans of the Devious Delivery.
SELECT *
FROM scans
WHERE package_id = 5098
ORDER BY timestamp;

-- Find the final address of the Devious Delivery.
SELECT *
FROM addresses
WHERE id = 348;


-- *** The Forgotten Gift ***

-- Find the sender's address.
SELECT *
FROM addresses
WHERE address = '109 Tileston Street';

-- Find packages sent from the sender's address.
SELECT id, contents, to_address_id
FROM packages
WHERE from_address_id = 9873;

-- Confirm the destination address.
SELECT *
FROM addresses
WHERE id = 4983;

-- Find all scans of the Forgotten Gift.
SELECT *
FROM scans
WHERE package_id = 9523
ORDER BY timestamp;

-- Find the driver who currently has the package.
SELECT *
FROM drivers
WHERE id = 17;
