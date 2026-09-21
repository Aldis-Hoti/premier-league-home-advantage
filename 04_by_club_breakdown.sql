SELECT
  HomeTeam,
  CASE
    WHEN HomeTeam IN ('Man City', 'Liverpool', 'Arsenal', 'Chelsea', 'Man United', 'Tottenham')
    THEN 'Big Six'
    ELSE 'Other Clubs'
  END AS ClubGroup,
  COUNT(*) AS home_matches,
  ROUND(SUM(CASE WHEN FTR = 'H' THEN 1 ELSE 0 END) / COUNT(*) * 100, 1) AS home_win_pct
FROM `analyse-data-mod5.premier_league.matches_combined`
GROUP BY HomeTeam, ClubGroup
ORDER BY home_win_pct DESC;
