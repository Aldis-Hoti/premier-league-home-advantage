CREATE OR REPLACE TABLE `analyse-data-mod5.premier_league.matches_combined` AS

SELECT Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR, HS, `AS`, HST, AST, '2016/17' AS Season
FROM `analyse-data-mod5.premier_league.pl_16_17`
UNION ALL
SELECT Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR, HS, `AS`, HST, AST, '2017/18' AS Season
FROM `analyse-data-mod5.premier_league.pl_17_18`
UNION ALL
SELECT Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR, HS, `AS`, HST, AST, '2018/19' AS Season
FROM `analyse-data-mod5.premier_league.pl_18_19`
UNION ALL
SELECT Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR, HS, `AS`, HST, AST, '2019/20' AS Season
FROM `analyse-data-mod5.premier_league.pl_19_20`
UNION ALL
SELECT Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR, HS, `AS`, HST, AST, '2020/21' AS Season
FROM `analyse-data-mod5.premier_league.pl_20_21`
UNION ALL
SELECT Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR, HS, `AS`, HST, AST, '2021/22' AS Season
FROM `analyse-data-mod5.premier_league.pl_21_22`
UNION ALL
SELECT Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR, HS, `AS`, HST, AST, '2022/23' AS Season
FROM `analyse-data-mod5.premier_league.pl_22_23`
UNION ALL
SELECT Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR, HS, `AS`, HST, AST, '2023/24' AS Season
FROM `analyse-data-mod5.premier_league.pl_23_24`
UNION ALL
SELECT Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR, HS, `AS`, HST, AST, '2024/25' AS Season
FROM `analyse-data-mod5.premier_league.pl_24_25`
UNION ALL
SELECT Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR, HS, `AS`, HST, AST, '2025/26' AS Season
FROM `analyse-data-mod5.premier_league.pl_25_26`;
