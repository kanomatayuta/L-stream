/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-01 02:38:55 [105.03ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 1 - 2022-12-01 02:39:15 [129.49ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign
   Query 1 - 2022-12-01 02:39:15 [124.19ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
