SELECT 
  Season,
  COUNT(*) AS total_matches,
  SUM(CASE WHEN FTR = 'H' THEN 1 ELSE 0 END) AS home_wins,
  ROUND(SUM(CASE WHEN FTR = 'H' THEN 1 ELSE 0 END) / COUNT(*) * 100, 1) AS home_win_pct
FROM `analyse-data-mod5.premier_league.matches_combined`
GROUP BY Season
ORDER BY Season;
