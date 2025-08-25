-- 1. Which party got more donations — Democrats or Republicans?

SELECT Party, SUM(Amount) AS total_donations
FROM donations
WHERE Party IN ('Democrat', 'Republican')
GROUP BY Party
ORDER BY total_donations DESC;


-- 2. Which organization or cause received the most donation?

SELECT Recipient, SUM(Amount) AS total_received
FROM donations
GROUP BY Recipient
ORDER BY total_received DESC
LIMIT 1;


-- 3. To which party did each league give most to?

SELECT League, Party, SUM(Amount) AS total_donations
FROM donations
GROUP BY League, Party
ORDER BY League, total_donations DESC;


-- 4. Who gave the biggest one-time donation?
SELECT Owner, Recipient, Amount, Party, ElectionYear
FROM donations
ORDER BY Amount DESC
LIMIT 1;


-- 5. Who gave the most in total?

SELECT Owner, SUM(Amount) AS total_given
FROM donations
GROUP BY Owner
ORDER BY total_given DESC
LIMIT 1;

