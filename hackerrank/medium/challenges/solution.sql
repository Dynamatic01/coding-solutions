/*
Enter your query here.
*/

SELECT h.hacker_id,
       h.name,
       COUNT(c.challenge_id) AS total_challenges
FROM Hackers h
JOIN Challenges c
ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING COUNT(c.challenge_id) IN (
        SELECT cnt
        FROM (
            SELECT COUNT(challenge_id) AS cnt
            FROM Challenges
            GROUP BY hacker_id
        ) t
        GROUP BY cnt
        HAVING COUNT(*) = 1
    )
    OR COUNT(c.challenge_id) = (
        SELECT MAX(cnt)
        FROM (
            SELECT COUNT(challenge_id) AS cnt
            FROM Challenges
            GROUP BY hacker_id
        ) x
    )
ORDER BY total_challenges DESC,
         h.hacker_id ASC;
         
