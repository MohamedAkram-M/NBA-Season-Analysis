-- =============================================
-- Q3: Position Outliers - Efficiency Z-Score Analysis
-- =============================================


WITH PositionStats AS (
    SELECT
        Pos,
        ROUND(AVG(PTS + TRB + AST + STL + BLK - TOV), 2)      AS avg_efficiency_per_role,
        ROUND(STDEV(PTS + TRB + AST + STL + BLK - TOV), 2)    AS stdev_efficiency_per_role
    FROM nba_players
    WHERE Tm != 'TOT'
    AND G >= 20
    GROUP BY Pos
)
SELECT
    p.Player,
    p.Pos,
    p.Tm,
    ROUND(p.PTS + p.TRB + p.AST + p.STL + p.BLK - p.TOV, 2)   AS player_efficiency,
    ps.avg_efficiency_per_role,
    ps.stdev_efficiency_per_role,
    ROUND(((p.PTS + p.TRB + p.AST + p.STL + p.BLK - p.TOV) - ps.avg_efficiency_per_role) / ps.stdev_efficiency_per_role, 2) AS z_score,
    CASE 
        WHEN ROUND(((p.PTS + p.TRB + p.AST + p.STL + p.BLK - p.TOV) - ps.avg_efficiency_per_role) / ps.stdev_efficiency_per_role, 2) < -2 THEN 'Critical Underperformer'
        WHEN ROUND(((p.PTS + p.TRB + p.AST + p.STL + p.BLK - p.TOV) - ps.avg_efficiency_per_role) / ps.stdev_efficiency_per_role, 2) < -1.5 THEN 'Significant Underperformer'
        WHEN ROUND(((p.PTS + p.TRB + p.AST + p.STL + p.BLK - p.TOV) - ps.avg_efficiency_per_role) / ps.stdev_efficiency_per_role, 2) < -1.2 THEN 'Underperformer'
    END AS performance_flag
FROM nba_players p
JOIN PositionStats ps ON p.Pos = ps.Pos
WHERE p.Tm != 'TOT'
AND p.G >= 20
AND ROUND(((p.PTS + p.TRB + p.AST + p.STL + p.BLK - p.TOV) - ps.avg_efficiency_per_role) / ps.stdev_efficiency_per_role, 2) < -1.2
ORDER BY z_score ASC;