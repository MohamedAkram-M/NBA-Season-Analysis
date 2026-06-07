USE NBA_Analytics;
GO


SELECT COLUMN_NAME 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'nba_players';

-- =============================================
-- Q2: Team Offensive Output Analysis
-- =============================================

SELECT 
    Tm                              AS Team,
    CAST(SUM(PTS) AS INT)           AS [Total Score],
    CAST(SUM(AST) AS INT)           AS [Total Assists],
    ROUND(AVG(FG1), 2)              AS [Avg Shooting Efficiency]
FROM nba_players
WHERE Tm != 'TOT'
AND G >= 20
GROUP BY Tm
ORDER BY [Total Score] DESC;
