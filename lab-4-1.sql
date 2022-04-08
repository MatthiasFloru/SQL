-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

-- The first one is wrong because it takes an ID from stats which is not the player ID
SELECT players.first_name, players.last_name, stats.hits, sum(hits)
FROM players INNER JOIN stats ON stats.id = players.id
WHERE players.first_name = "Barry" AND players.last_name = "Bonds"
;

-- This one is correct
SELECT sum(hits) FROM stats INNER JOIN players ON stats.player_id = players.id
WHERE players.first_name = "Barry" AND players.last_name = "Bonds"
;