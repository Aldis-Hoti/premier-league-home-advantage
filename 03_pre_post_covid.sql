SELECT
  CASE
    WHEN Season IN ('2016/17', '2017/18', '2018/19', '2019/20') THEN 'Pre-COVID'
    WHEN Season = '2020/21' THEN 'COVID (no crowds)'
    ELSE 'Post-COVID'
  END AS Period,
  COUNT(*) AS total_matches,
  ROUND(SUM(CASE WHEN FTR = 'H' THEN 1 ELSE 0 END) / COUNT(*) * 100, 1) AS avg_home_win_pct
FROM `analyse-data-mod5.premier_league.matches_combined`
GROUP BY Period
ORDER BY Period;
