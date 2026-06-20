-- Q1: Average stats per position (TOT rows only, min 20 games)
SELECT 
    Pos,
    COUNT(Distinct Player)          AS player_count,
    ROUND(AVG(PTS), 1)              AS avg_points,
    ROUND(AVG(TRB), 1)              AS avg_rebounds,
    ROUND(AVG(AST), 1)              AS avg_assists,
    ROUND(AVG(STL), 1)              AS avg_steals,
    ROUND(AVG(BLK), 1)              AS avg_blocks
FROM nba_players
WHERE Tm != 'TOT'
AND G >= 20
GROUP BY Pos
ORDER BY avg_points DESC;