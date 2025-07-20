/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 296 - 2022-11-25 01:34:00 [234.35ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 11 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 297 - 2022-11-25 01:34:00 [143.18ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 2;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 298 - 2022-11-25 01:34:00 [126.09ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 140 - 2022-11-25 01:35:00 [256.01ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 8 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 141 - 2022-11-25 01:35:00 [257.86ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 143 - 2022-11-25 01:35:00 [114.91ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 12;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 209 - 2022-11-25 01:36:45 [117.6ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign?order_by=genre_name&order_type=1
   Query 407 - 2022-11-25 01:58:00 [326.84ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign?order_by=genre_name&order_type=1
   Query 408 - 2022-11-25 01:58:00 [228.56ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 10 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/9
   Query 1 - 2022-11-25 02:01:00 [399.54ms] */
select * from `oauth_access_tokens` where `id` = 'aaa4f7b7c45da77f3f4f532c70d93f45cd0b6dd14c2dcd6e1ca3ddf094429ae74c334e00f2a08582' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 332 - 2022-11-25 02:04:15 [110.35ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 7 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign?order_by=campaign_details_count&order_type=1
   Query 221 - 2022-11-25 02:06:00 [298.08ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 6;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign?order_by=total_reach&order_type=1
   Query 187 - 2022-11-25 02:06:30 [110.2ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 394 - 2022-11-25 02:07:30 [146.13ms] */
select * from `kols` where `kols`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 284 - 2022-11-25 02:12:00 [360ms] */
select * from `kols` where `kols`.`id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 284 - 2022-11-25 02:21:00 [206.36ms] */
select * from `kols` where `kols`.`id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 285 - 2022-11-25 02:21:00 [183.2ms] */
select * from `kols` where `kols`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 1 - 2022-11-25 02:21:00 [188.68ms] */
select * from `oauth_access_tokens` where `id` = 'aaa4f7b7c45da77f3f4f532c70d93f45cd0b6dd14c2dcd6e1ca3ddf094429ae74c334e00f2a08582' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 118 - 2022-11-25 02:22:15 [105.97ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 11 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 339 - 2022-11-25 02:25:00 [268.77ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 10 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 340 - 2022-11-25 02:25:00 [263.91ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 342 - 2022-11-25 02:25:00 [139.16ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-11-25 02:32:00 [547.39ms] */
select * from `oauth_access_tokens` where `id` = 'aaa4f7b7c45da77f3f4f532c70d93f45cd0b6dd14c2dcd6e1ca3ddf094429ae74c334e00f2a08582' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 8 - 2022-11-25 02:45:30 [124.83ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/24
   Query 8 - 2022-11-25 02:45:30 [116.98ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (7) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 129 - 2022-11-25 02:46:00 [429.73ms] */
select * from `kols` where `kols`.`id` = 13 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?social_type=1&username=fcbarcelona
   Query 6 - 2022-11-25 02:46:30 [100.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign?genre_id=1&social_type=1
   Query 5 - 2022-11-25 02:47:00 [276.83ms] */
select * from `oauth_access_tokens` where `id` = 'aaa4f7b7c45da77f3f4f532c70d93f45cd0b6dd14c2dcd6e1ca3ddf094429ae74c334e00f2a08582' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign?genre_id=1&social_type=1
   Query 6 - 2022-11-25 02:47:00 [122.19ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 190 - 2022-11-25 02:59:30 [105.02ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 6 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 88 - 2022-11-25 03:05:00 [487.77ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 290 - 2022-11-25 03:13:00 [181.14ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 12;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 195 - 2022-11-25 03:13:00 [283.34ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 291 - 2022-11-25 03:13:00 [147.01ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 12 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 328 - 2022-11-25 03:16:30 [133.02ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 7;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 313 - 2022-11-25 03:17:00 [538.38ms] */
select * from `kols` where `kols`.`id` = 4 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/1/2
   Query 372 - 2022-11-25 03:19:00 [278.36ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/1/2
   Query 373 - 2022-11-25 03:19:00 [247.42ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 13 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 354 - 2022-11-25 03:31:30 [139.09ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 47 - 2022-11-25 03:38:00 [221.35ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign
   Query 182 - 2022-11-25 03:38:00 [333.29ms] */
select * from `genres` where `genres`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 188 - 2022-11-25 03:38:00 [375.75ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 7 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 48 - 2022-11-25 03:38:00 [167.12ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-11-25 03:40:30 [110.77ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1669347630, 1669347630, '{"uuid":"5c84affa-b61f-45d1-b2a8-c796d45e507d","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:13:{i:0;a:3:{s:5:\"basic\";a:3:{s:8:\"username\";s:4:\"nasa\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:197:\"https:\/\/scontent-arn2-1.cdninstagram.com\/vp\/fa66adc26aefbb03ca111c7688732f6a\/5E5FEDED\/t51.2885-19\/s150x150\/29090066_159271188110124_1152068159029641216_n.jpg?_nc_ht=scontent-arn2-1.cdninstagram.com\";}s:7:\"metrics\";a:5:{s:16:\"engagement_count\";d:794423.5884;s:2:\"er\";d:1.56;s:17:\"subscribers_count\";i:50924589;s:22:\"real_subscribers_count\";i:43917365;s:22:\"subscribers_growth_prc\";i:0;}s:8:\"features\";a:5:{s:15:\"social_networks\";a:0:{}s:14:\"blogger_topics\";a:2:{i:0;i:228;i:1;i:286;}s:17:\"blogger_thematics\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}s:3:\"aqs\";O:8:\"stdClass\":1:{s:4:\"mark\";s:4:\"good\";}}}i:1;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"taylorswift\";s:5:\"title\";s:12:\"Taylor Swift\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/11830955.jpg?w=320&till=1674097390&sign=137754e01b6fc9edb9e2d0f55f1429db\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}i:2;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"vancityreynolds\";s:5:\"title\";s:13:\"Ryan Reynolds\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1942463581.jpg?w=320&till=1674098165&sign=08e3f95d387c94b52126b825223f87ac\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"45857334\";s:2:\"er\";s:4:\"1.18\";s:16:\"engagement_count\";d:541116.5412;}}i:3;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:14:\"kevinhart4real\";s:5:\"title\";s:10:\"Kevin Hart\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6590609.jpg?w=320&till=1674098245&sign=428fb2be77bad0c8877398d37bad82f2\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"155039259\";s:2:\"er\";s:4:\"0.09\";s:16:\"engagement_count\";d:139535.3331;}}i:4;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"supersaf\";s:5:\"title\";s:8:\"SuperSaf\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/41428916.jpg?w=320&till=1674098340&sign=f440bcef026a9f129e335890f2377568\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"529231\";s:2:\"er\";s:4:\"1.83\";s:16:\"engagement_count\";d:9684.9273;}}i:5;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"selenagomez\";s:5:\"title\";s:12:\"Selena Gomez\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/460563723.jpg?w=320&till=1674098404&sign=6d026056d3295fff26a3ce2f51b6882a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"351492414\";s:2:\"er\";s:3:\"0.7\";s:16:\"engagement_count\";d:2460446.8979999996;}}i:6;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"pepamack\";s:5:\"title\";s:5:\"Petra\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/316719376.jpg?w=320&till=1674098485&sign=4e212d5d81a82b91a3236c928b0a6bd0\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:7:\"1051585\";s:2:\"er\";s:8:\"0.749461\";s:16:\"engagement_count\";d:7881.219456850001;}}i:7;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"kendalljenner\";s:5:\"title\";s:7:\"Kendall\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6380930.jpg?w=320&till=1674098702&sign=9866747cb6e12bd123b2c35133f6b619\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"260554636\";s:2:\"er\";s:4:\"0.89\";s:16:\"engagement_count\";d:2318936.2604;}}i:8;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"fcbarcelona\";s:5:\"title\";s:12:\"FC Barcelona\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/260375673.jpg?w=320&till=1674098749&sign=ef7d691b7d2d6d17045fa5cceb7fc471\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"112673770\";s:2:\"er\";s:4:\"0.34\";s:16:\"engagement_count\";d:383090.818;}}i:9;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"theshilpashetty\";s:5:\"title\";s:20:\"Shilpa Shetty Kundra\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1904097264.jpg?w=320&till=1674098825&sign=89b6ea598b251337fe1b310bb3cbd845\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"26807344\";s:2:\"er\";s:4:\"0.56\";s:16:\"engagement_count\";d:150121.1264;}}i:10;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"tarynwilliams\";s:5:\"title\";s:14:\"Taryn Williams\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/40507182.jpg?w=320&till=1674098881&sign=0fe2726db44d64e4248add6d6645e24a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:5:\"22017\";s:2:\"er\";s:4:\"0.83\";s:16:\"engagement_count\";d:182.7411;}}i:11;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:10:\"kobebryant\";s:5:\"title\";s:11:\"Kobe Bryant\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/351564405.jpg?w=320&till=1674100243&sign=cdbbac85a243afd7f765504d660fabae\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"21107168\";s:2:\"er\";s:4:\"7.31\";s:16:\"engagement_count\";d:1542933.9808;}}i:12;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"nathanwpyle\";s:5:\"title\";s:13:\"Nathan W Pyle\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/213194044.jpg?w=320&till=1674100064&sign=b69916f1d77dded42cacf303d332bb0d\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"626007\";s:2:\"er\";s:4:\"5.31\";s:16:\"engagement_count\";d:33240.971699999995;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:1;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 16 - 2022-11-25 03:45:30 [106.98ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 29 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?social_type=1&username=kevinhart4real
   Query 8 - 2022-11-25 03:46:11 [15656.16ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1669347955, 1669347955, '{"uuid":"56a456f6-d103-4196-8884-298710c4f64b","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:13:{i:0;a:3:{s:5:\"basic\";a:3:{s:8:\"username\";s:4:\"nasa\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:197:\"https:\/\/scontent-arn2-1.cdninstagram.com\/vp\/fa66adc26aefbb03ca111c7688732f6a\/5E5FEDED\/t51.2885-19\/s150x150\/29090066_159271188110124_1152068159029641216_n.jpg?_nc_ht=scontent-arn2-1.cdninstagram.com\";}s:7:\"metrics\";a:5:{s:16:\"engagement_count\";d:794423.5884;s:2:\"er\";d:1.56;s:17:\"subscribers_count\";i:50924589;s:22:\"real_subscribers_count\";i:43917365;s:22:\"subscribers_growth_prc\";i:0;}s:8:\"features\";a:5:{s:15:\"social_networks\";a:0:{}s:14:\"blogger_topics\";a:2:{i:0;i:228;i:1;i:286;}s:17:\"blogger_thematics\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}s:3:\"aqs\";O:8:\"stdClass\":1:{s:4:\"mark\";s:4:\"good\";}}}i:1;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"taylorswift\";s:5:\"title\";s:12:\"Taylor Swift\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/11830955.jpg?w=320&till=1674097390&sign=137754e01b6fc9edb9e2d0f55f1429db\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}i:2;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"vancityreynolds\";s:5:\"title\";s:13:\"Ryan Reynolds\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1942463581.jpg?w=320&till=1674098165&sign=08e3f95d387c94b52126b825223f87ac\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"45857334\";s:2:\"er\";s:4:\"1.18\";s:16:\"engagement_count\";d:541116.5412;}}i:3;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:14:\"kevinhart4real\";s:5:\"title\";s:10:\"Kevin Hart\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6590609.jpg?w=320&till=1674098245&sign=428fb2be77bad0c8877398d37bad82f2\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"155039259\";s:2:\"er\";s:4:\"0.09\";s:16:\"engagement_count\";d:139535.3331;}}i:4;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"supersaf\";s:5:\"title\";s:8:\"SuperSaf\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/41428916.jpg?w=320&till=1674098340&sign=f440bcef026a9f129e335890f2377568\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"529231\";s:2:\"er\";s:4:\"1.83\";s:16:\"engagement_count\";d:9684.9273;}}i:5;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"selenagomez\";s:5:\"title\";s:12:\"Selena Gomez\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/460563723.jpg?w=320&till=1674098404&sign=6d026056d3295fff26a3ce2f51b6882a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"351492414\";s:2:\"er\";s:3:\"0.7\";s:16:\"engagement_count\";d:2460446.8979999996;}}i:6;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"pepamack\";s:5:\"title\";s:5:\"Petra\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/316719376.jpg?w=320&till=1674098485&sign=4e212d5d81a82b91a3236c928b0a6bd0\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:7:\"1051585\";s:2:\"er\";s:8:\"0.749461\";s:16:\"engagement_count\";d:7881.219456850001;}}i:7;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"kendalljenner\";s:5:\"title\";s:7:\"Kendall\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6380930.jpg?w=320&till=1674098702&sign=9866747cb6e12bd123b2c35133f6b619\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"260554636\";s:2:\"er\";s:4:\"0.89\";s:16:\"engagement_count\";d:2318936.2604;}}i:8;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"fcbarcelona\";s:5:\"title\";s:12:\"FC Barcelona\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/260375673.jpg?w=320&till=1674098749&sign=ef7d691b7d2d6d17045fa5cceb7fc471\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"112673770\";s:2:\"er\";s:4:\"0.34\";s:16:\"engagement_count\";d:383090.818;}}i:9;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"theshilpashetty\";s:5:\"title\";s:20:\"Shilpa Shetty Kundra\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1904097264.jpg?w=320&till=1674098825&sign=89b6ea598b251337fe1b310bb3cbd845\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"26807344\";s:2:\"er\";s:4:\"0.56\";s:16:\"engagement_count\";d:150121.1264;}}i:10;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"tarynwilliams\";s:5:\"title\";s:14:\"Taryn Williams\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/40507182.jpg?w=320&till=1674098881&sign=0fe2726db44d64e4248add6d6645e24a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:5:\"22017\";s:2:\"er\";s:4:\"0.83\";s:16:\"engagement_count\";d:182.7411;}}i:11;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:10:\"kobebryant\";s:5:\"title\";s:11:\"Kobe Bryant\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/351564405.jpg?w=320&till=1674100243&sign=cdbbac85a243afd7f765504d660fabae\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"21107168\";s:2:\"er\";s:4:\"7.31\";s:16:\"engagement_count\";d:1542933.9808;}}i:12;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"nathanwpyle\";s:5:\"title\";s:13:\"Nathan W Pyle\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/213194044.jpg?w=320&till=1674100064&sign=b69916f1d77dded42cacf303d332bb0d\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"626007\";s:2:\"er\";s:4:\"5.31\";s:16:\"engagement_count\";d:33240.971699999995;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:1;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/1/2
   Query 689 - 2022-11-25 03:51:00 [272ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 347 - 2022-11-25 03:52:30 [127.44ms] */
select * from `kols` where `kols`.`id` = 12 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 330 - 2022-11-25 03:53:30 [129.59ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 6;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/export-kol-csv
   Query 1 - 2022-11-25 03:54:30 [156.99ms] */
select * from `oauth_access_tokens` where `id` = 'da334ae5a97e5c831bb9450a799ffb82189e50b68aad1b4387f5ee2e12d9a4567582d5a7a55eec25' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 402 - 2022-11-25 04:06:15 [105.08ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 12 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 81 - 2022-11-25 04:13:00 [133.85ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign
   Query 77 - 2022-11-25 04:13:00 [376.07ms] */
select `kols`.*, `kol_tags`.`tag_id` as `pivot_tag_id`, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`created_at` as `pivot_created_at`, `kol_tags`.`updated_at` as `pivot_updated_at` from `kols` inner join `kol_tags` on `kols`.`id` = `kol_tags`.`kol_id` where `kol_tags`.`tag_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 82 - 2022-11-25 04:13:00 [355.06ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 3 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 304 - 2022-11-25 04:14:40 [115.52ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 180 - 2022-11-25 04:20:00 [251.82ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 181 - 2022-11-25 04:20:00 [272.12ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 8;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 183 - 2022-11-25 04:20:00 [102.94ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 351 - 2022-11-25 04:27:30 [126.05ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 263 - 2022-11-25 04:51:00 [365.19ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 5;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail/registered-campaign?social_type=1&username=vancityreynolds
   Query 3 - 2022-11-25 06:31:00 [251.6ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 20 - 2022-11-25 09:08:03 [103.76ms] */
truncate table `menus`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 1 - 2022-11-25 09:46:00 [379.61ms] */
select * from `oauth_access_tokens` where `id` = 'e50c3d7c382f792d36ae7a1794138b785fb97c4948df24b4a4644d5649feeca8ebfe90e11e6691b1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-11-25 09:46:00 [377.92ms] */
select * from `oauth_access_tokens` where `id` = 'e50c3d7c382f792d36ae7a1794138b785fb97c4948df24b4a4644d5649feeca8ebfe90e11e6691b1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign
   Query 1 - 2022-11-25 09:46:00 [378.12ms] */
select * from `oauth_access_tokens` where `id` = 'e50c3d7c382f792d36ae7a1794138b785fb97c4948df24b4a4644d5649feeca8ebfe90e11e6691b1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-11-25 11:01:45 [123.16ms] */
select * from `oauth_access_tokens` where `id` = '5e60699749675510cc4771552e1e271330a306a89a01f32510ec7aab9f5373ad43afea2a9ba92721' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign
   Query 1 - 2022-11-25 11:02:00 [121.24ms] */
select * from `oauth_access_tokens` where `id` = '5e60699749675510cc4771552e1e271330a306a89a01f32510ec7aab9f5373ad43afea2a9ba92721' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 1 - 2022-11-25 11:02:00 [154.4ms] */
select * from `oauth_access_tokens` where `id` = '5e60699749675510cc4771552e1e271330a306a89a01f32510ec7aab9f5373ad43afea2a9ba92721' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-11-25 11:16:00 [213.82ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-11-25 11:16:00 [220.16ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-11-25 11:16:00 [120.55ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
