SELECT 'Podium: ' || team
FROM league
WHERE position <= 3

UNION ALL

SELECT 'Demoted: ' || team
FROM league
WHERE position >= 14