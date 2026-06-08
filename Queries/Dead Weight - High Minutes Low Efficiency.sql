USE NBA_Analytics;
GO

-- =============================================
-- Q4: Dead Weight - High Minutes Low Efficiency
-- =============================================

SELECT
    Player,
    Pos,
    Tm,
    ROUND(MP, 1) AS MP,
    ROUND(PTS + TRB + AST + STL + BLK - TOV, 2)    AS efficiency
FROM nba_players
WHERE MP >= 20
AND Tm != 'TOT'
AND G >= 20
AND (PTS + TRB + AST + STL + BLK - TOV) <= 13
ORDER BY efficiency ASC;
