/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 04:51:45 [155.04ms] */
select * from `oauth_access_tokens` where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 04:51:45 [4.05ms] */
select * from `oauth_access_tokens` where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 04:51:45 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 04:51:45 [3.9ms] */
select * from `users` where `id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 04:51:45 [3.86ms] */
select * from `oauth_access_tokens` where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 04:51:45 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 04:51:45 [9.29ms] */
select * from `menus` where `title` in ('module.kol', 'module.insight-list', 'module.campaign') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 04:51:45 [7.88ms] */
select * from `menus` where `menus`.`parent_id` in (1, 2, 3) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-16 04:51:45 [20.25ms] */
select * from `oauth_access_tokens` where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-16 04:51:45 [3.95ms] */
select * from `oauth_access_tokens` where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-16 04:51:45 [4.03ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-16 04:51:45 [3.95ms] */
select * from `users` where `id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-16 04:51:45 [3.89ms] */
select * from `oauth_access_tokens` where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-16 04:51:45 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-16 04:51:46 [11.13ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1671166306, 1671166306, '{"uuid":"676ffa1e-fa20-445b-81b5-e0440c8515d6","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:13:{i:0;a:3:{s:5:\"basic\";a:3:{s:8:\"username\";s:4:\"nasa\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:197:\"https:\/\/scontent-arn2-1.cdninstagram.com\/vp\/fa66adc26aefbb03ca111c7688732f6a\/5E5FEDED\/t51.2885-19\/s150x150\/29090066_159271188110124_1152068159029641216_n.jpg?_nc_ht=scontent-arn2-1.cdninstagram.com\";}s:7:\"metrics\";a:5:{s:16:\"engagement_count\";d:794423.5884;s:2:\"er\";d:1.56;s:17:\"subscribers_count\";i:50924589;s:22:\"real_subscribers_count\";i:43917365;s:22:\"subscribers_growth_prc\";i:0;}s:8:\"features\";a:5:{s:15:\"social_networks\";a:0:{}s:14:\"blogger_topics\";a:2:{i:0;i:228;i:1;i:286;}s:17:\"blogger_thematics\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}s:3:\"aqs\";O:8:\"stdClass\":1:{s:4:\"mark\";s:4:\"good\";}}}i:1;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"taylorswift\";s:5:\"title\";s:12:\"Taylor Swift\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/11830955.jpg?w=320&till=1674097390&sign=137754e01b6fc9edb9e2d0f55f1429db\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}i:2;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"vancityreynolds\";s:5:\"title\";s:13:\"Ryan Reynolds\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1942463581.jpg?w=320&till=1674098165&sign=08e3f95d387c94b52126b825223f87ac\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"45857334\";s:2:\"er\";s:4:\"1.18\";s:16:\"engagement_count\";d:541116.5412;}}i:3;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:14:\"kevinhart4real\";s:5:\"title\";s:10:\"Kevin Hart\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6590609.jpg?w=320&till=1674098245&sign=428fb2be77bad0c8877398d37bad82f2\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"155039259\";s:2:\"er\";s:4:\"0.09\";s:16:\"engagement_count\";d:139535.3331;}}i:4;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"supersaf\";s:5:\"title\";s:8:\"SuperSaf\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/41428916.jpg?w=320&till=1674098340&sign=f440bcef026a9f129e335890f2377568\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"529231\";s:2:\"er\";s:4:\"1.83\";s:16:\"engagement_count\";d:9684.9273;}}i:5;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"selenagomez\";s:5:\"title\";s:12:\"Selena Gomez\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/460563723.jpg?w=320&till=1674098404&sign=6d026056d3295fff26a3ce2f51b6882a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"351492414\";s:2:\"er\";s:3:\"0.7\";s:16:\"engagement_count\";d:2460446.8979999996;}}i:6;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"pepamack\";s:5:\"title\";s:5:\"Petra\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/316719376.jpg?w=320&till=1674098485&sign=4e212d5d81a82b91a3236c928b0a6bd0\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:7:\"1051585\";s:2:\"er\";s:8:\"0.749461\";s:16:\"engagement_count\";d:7881.219456850001;}}i:7;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"kendalljenner\";s:5:\"title\";s:7:\"Kendall\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6380930.jpg?w=320&till=1674098702&sign=9866747cb6e12bd123b2c35133f6b619\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"260554636\";s:2:\"er\";s:4:\"0.89\";s:16:\"engagement_count\";d:2318936.2604;}}i:8;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"fcbarcelona\";s:5:\"title\";s:12:\"FC Barcelona\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/260375673.jpg?w=320&till=1674098749&sign=ef7d691b7d2d6d17045fa5cceb7fc471\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"112673770\";s:2:\"er\";s:4:\"0.34\";s:16:\"engagement_count\";d:383090.818;}}i:9;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"theshilpashetty\";s:5:\"title\";s:20:\"Shilpa Shetty Kundra\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1904097264.jpg?w=320&till=1674098825&sign=89b6ea598b251337fe1b310bb3cbd845\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"26807344\";s:2:\"er\";s:4:\"0.56\";s:16:\"engagement_count\";d:150121.1264;}}i:10;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"tarynwilliams\";s:5:\"title\";s:14:\"Taryn Williams\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/40507182.jpg?w=320&till=1674098881&sign=0fe2726db44d64e4248add6d6645e24a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:5:\"22017\";s:2:\"er\";s:4:\"0.83\";s:16:\"engagement_count\";d:182.7411;}}i:11;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:10:\"kobebryant\";s:5:\"title\";s:11:\"Kobe Bryant\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/351564405.jpg?w=320&till=1674100243&sign=cdbbac85a243afd7f765504d660fabae\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"21107168\";s:2:\"er\";s:4:\"7.31\";s:16:\"engagement_count\";d:1542933.9808;}}i:12;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"nathanwpyle\";s:5:\"title\";s:13:\"Nathan W Pyle\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/213194044.jpg?w=320&till=1674100064&sign=b69916f1d77dded42cacf303d332bb0d\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"626007\";s:2:\"er\";s:4:\"5.31\";s:16:\"engagement_count\";d:33240.971699999995;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:1;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-16 04:51:46 [4.31ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 9 and `k`.`username` in ('nasa', 'taylorswift', 'vancityreynolds', 'kevinhart4real', 'supersaf', 'selenagomez', 'pepamack', 'kendalljenner', 'fcbarcelona', 'theshilpashetty', 'tarynwilliams', 'kobebryant', 'nathanwpyle');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-16 04:51:46 [20.39ms] */
select * from `oauth_access_tokens` where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-16 04:51:46 [4.2ms] */
select * from `oauth_access_tokens` where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-16 04:51:46 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-16 04:51:46 [4.04ms] */
select * from `users` where `id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-16 04:51:46 [3.92ms] */
select * from `oauth_access_tokens` where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-16 04:51:46 [4.03ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2022-12-16 04:51:46 [3.97ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 9 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 1 - 2022-12-16 04:51:49 [20.86ms] */
select * from `oauth_access_tokens` where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 2 - 2022-12-16 04:51:49 [4.07ms] */
select * from `oauth_access_tokens` where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 3 - 2022-12-16 04:51:49 [4.05ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 4 - 2022-12-16 04:51:49 [12.13ms] */
select * from `users` where `id` = 9 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 5 - 2022-12-16 04:51:49 [3.95ms] */
select * from `oauth_access_tokens` where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 6 - 2022-12-16 04:51:49 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 7 - 2022-12-16 04:51:49 [6.37ms] */
update `oauth_access_tokens` set `revoked` = 1 where `id` = 'a7bbf21da8b6e993326d18b8ec520513613a991ed2f7905d441735449f737c37bdcaf8710d380fe7';
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 1 - 2022-12-16 04:51:57 [22.02ms] */
select * from `users` where `email` = 'admin@admin.com' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 2 - 2022-12-16 04:51:57 [7.79ms] */
select exists(select * from `oauth_personal_access_clients`) as `exists`;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 3 - 2022-12-16 04:51:57 [3.85ms] */
select * from `oauth_personal_access_clients` order by `id` desc limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 4 - 2022-12-16 04:51:57 [3.97ms] */
select * from `oauth_clients` where `oauth_clients`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 5 - 2022-12-16 04:51:57 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 6 - 2022-12-16 04:51:57 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 7 - 2022-12-16 04:51:57 [6.2ms] */
insert into `oauth_access_tokens` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) values ('69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9', 1, 1, '[]', 0, '2022-12-16 04:51:57', '2022-12-16 04:51:57', '2022-12-31 04:51:57');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 8 - 2022-12-16 04:51:57 [4.3ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 9 - 2022-12-16 04:51:57 [6.14ms] */
update `oauth_access_tokens` set `name` = 'admin@admin.com' where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 04:51:58 [20.52ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 04:51:58 [3.96ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 04:51:58 [4.02ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 04:51:58 [4ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 04:51:58 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 04:51:58 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 04:51:58 [4.12ms] */
select * from `menus` where `title` in ('module.user', 'module.genre') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 04:51:58 [3.95ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 04:51:58 [19.48ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 04:51:58 [19.17ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 04:51:58 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 04:51:58 [3.73ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 04:51:58 [3.74ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 04:51:58 [3.75ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 04:51:58 [3.99ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 04:51:58 [3.91ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 04:51:58 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 04:51:58 [4ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 04:51:58 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 04:51:58 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 04:51:58 [5.01ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 04:51:58 [49.49ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 04:51:58 [4.06ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 04:51:58 [4.03ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 04:51:58 [3.96ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 12:31:46 [22.93ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 12:31:46 [4.01ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 12:31:46 [3.99ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 12:31:46 [4.05ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 12:31:46 [3.88ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 12:31:46 [6.06ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 12:31:46 [4.04ms] */
select * from `menus` where `title` in ('module.user', 'module.genre') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 12:31:46 [5.79ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:31:46 [26.05ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:31:46 [5.01ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:31:46 [5.08ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:31:46 [4.09ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:31:46 [3.84ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:31:46 [22.31ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:31:46 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:31:46 [4.43ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:31:46 [5.42ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:31:46 [17.78ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:31:46 [27.43ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:31:46 [5.48ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:31:46 [3.93ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:31:46 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:31:46 [4.1ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:31:46 [4ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:31:46 [4.01ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2022-12-16 12:31:48 [20.41ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2022-12-16 12:31:48 [3.91ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2022-12-16 12:31:48 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2022-12-16 12:31:48 [4.03ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2022-12-16 12:31:48 [3.86ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2022-12-16 12:31:48 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2022-12-16 12:31:48 [5.26ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:31:49 [21.28ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:31:49 [21.08ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:31:49 [4.73ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:31:49 [4.35ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:31:49 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:31:49 [4.2ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:31:49 [4.44ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:31:49 [4.81ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:31:49 [3.86ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:31:49 [3.78ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:31:49 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:31:49 [4.45ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:31:49 [4.18ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:31:49 [19.22ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:31:49 [5.35ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:31:49 [4.07ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:31:49 [4.09ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 12:39:42 [23.58ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 12:39:42 [3.97ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 12:39:42 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 12:39:42 [4.15ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 12:39:42 [3.81ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 12:39:42 [3.77ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 12:39:42 [4.12ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 12:39:42 [3.97ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 12:39:42 [4.79ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:39:43 [22.85ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:39:43 [3.92ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:39:43 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:39:43 [3.99ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:39:43 [21.87ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:39:43 [3.83ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:39:43 [3.9ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:39:43 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:39:43 [4.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:39:43 [4ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:39:43 [3.74ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:39:43 [3.74ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:39:43 [4.18ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:39:43 [18.45ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:39:43 [6.81ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:39:43 [4.06ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:39:43 [4.11ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:39:43 [3.91ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 9, 10);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 12:39:47 [20.84ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 12:39:47 [4.02ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 12:39:47 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 12:39:48 [8.11ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 12:39:48 [3.96ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 12:39:48 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 12:39:48 [3.93ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 12:39:48 [3.86ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 12:39:48 [4.1ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:39:48 [26.34ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:39:48 [3.98ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:39:48 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:39:48 [4.11ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:39:48 [3.82ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:39:48 [20.07ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:39:48 [21.46ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:39:48 [22.32ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:39:48 [3.78ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:39:48 [9.87ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:39:48 [6.9ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:39:48 [20.76ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:39:48 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:39:48 [5.98ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:39:48 [4.98ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:39:48 [4.18ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:39:48 [6.53ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:39:48 [3.91ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 9, 10);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:39:52 [21.66ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:39:52 [3.86ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:39:52 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:39:52 [4.02ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:39:52 [3.94ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:39:52 [3.8ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:39:52 [4.17ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 12:39:53 [21.06ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 12:39:53 [4.03ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 12:39:53 [3.99ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 12:39:53 [3.88ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 12:39:53 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 12:39:53 [5.28ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 12:39:53 [4.01ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 12:39:53 [3.76ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 12:39:53 [4.02ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:39:53 [22.45ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:39:53 [21.01ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:39:54 [6.48ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:39:54 [6.2ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:39:54 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:39:54 [4.12ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:39:54 [3.89ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:39:54 [3.83ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:39:54 [3.78ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:39:54 [3.75ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:39:54 [3.71ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:39:54 [4.63ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:39:54 [4.02ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:39:54 [21.5ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:39:54 [4.22ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:39:54 [3.95ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:39:54 [3.91ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:39:54 [3.85ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 9, 10);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:40:01 [22.06ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:40:01 [22.47ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:40:01 [4.01ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:40:01 [3.91ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:40:01 [4.55ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:40:01 [6.35ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:40:01 [4.02ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:40:01 [4ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:40:01 [3.89ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:40:01 [3.92ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:40:01 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:40:02 [5.25ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:40:02 [8.79ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:40:02 [21.16ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:40:02 [5.56ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:40:02 [22.42ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:40:02 [4ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:40:02 [3.96ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 9, 10);
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 1 - 2022-12-16 12:40:06 [23.15ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 2 - 2022-12-16 12:40:06 [3.91ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 3 - 2022-12-16 12:40:06 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 4 - 2022-12-16 12:40:06 [4.78ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 5 - 2022-12-16 12:40:06 [3.97ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 6 - 2022-12-16 12:40:06 [4.27ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 7 - 2022-12-16 12:40:06 [4.26ms] */
select * from `users` where `id` = 9 limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 8 - 2022-12-16 12:40:06 [4.09ms] */
select * from `users` where `role_type` = 1 limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 9 - 2022-12-16 12:40:06 [8.46ms] */
select * from `campaigns` where `campaigns`.`user_id` = 9 and `campaigns`.`user_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 10 - 2022-12-16 12:40:06 [4.63ms] */
delete from `kol_ratings` where `kol_ratings`.`user_id` = 9 and `kol_ratings`.`user_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 11 - 2022-12-16 12:40:06 [7.48ms] */
delete from `tags` where `tags`.`user_id` = 9 and `tags`.`user_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 12 - 2022-12-16 12:40:06 [6.1ms] */
delete from `statistics` where `statistics`.`user_id` = 9 and `statistics`.`user_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 13 - 2022-12-16 12:40:06 [3.92ms] */
delete from `payment_details` where `payment_details`.`user_id` = 9 and `payment_details`.`user_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 14 - 2022-12-16 12:40:06 [3.99ms] */
delete from `model_has_roles` where `model_has_roles`.`model_id` = 9 and `model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 15 - 2022-12-16 12:40:06 [6.34ms] */
delete from `model_has_permissions` where `model_has_permissions`.`model_id` = 9 and `model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/9
   Query 16 - 2022-12-16 12:40:06 [6.14ms] */
delete from `users` where `id` = 9;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:40:07 [21.89ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:40:07 [3.91ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:40:07 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:40:07 [5.96ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:40:07 [4.84ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:40:07 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:40:07 [17.32ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:40:07 [4.35ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:40:07 [4.23ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:40:07 [4.91ms] */
select * from `plans` where `plans`.`id` in (0, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:40:07 [4.02ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 10);
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 1 - 2022-12-16 12:40:09 [20.8ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 2 - 2022-12-16 12:40:09 [3.81ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 3 - 2022-12-16 12:40:09 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 4 - 2022-12-16 12:40:09 [5.29ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 5 - 2022-12-16 12:40:09 [3.78ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 6 - 2022-12-16 12:40:09 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 7 - 2022-12-16 12:40:09 [4.47ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 8 - 2022-12-16 12:40:09 [3.9ms] */
select * from `users` where `role_type` = 1 limit 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 9 - 2022-12-16 12:40:09 [4.1ms] */
select * from `campaigns` where `campaigns`.`user_id` = 10 and `campaigns`.`user_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 10 - 2022-12-16 12:40:09 [4.89ms] */
delete from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 11 - 2022-12-16 12:40:09 [4.48ms] */
delete from `campaign_detail_posts` where `campaign_detail_posts`.`campaign_id` = 1 and `campaign_detail_posts`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 12 - 2022-12-16 12:40:09 [3.94ms] */
delete from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 13 - 2022-12-16 12:40:09 [3.82ms] */
delete from `campaigns` where `id` = 1;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 14 - 2022-12-16 12:40:09 [5.6ms] */
delete from `kol_ratings` where `kol_ratings`.`user_id` = 10 and `kol_ratings`.`user_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 15 - 2022-12-16 12:40:09 [4.3ms] */
delete from `tags` where `tags`.`user_id` = 10 and `tags`.`user_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 16 - 2022-12-16 12:40:09 [4.25ms] */
delete from `statistics` where `statistics`.`user_id` = 10 and `statistics`.`user_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 17 - 2022-12-16 12:40:09 [4.77ms] */
delete from `payment_details` where `payment_details`.`user_id` = 10 and `payment_details`.`user_id` is not null;
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 18 - 2022-12-16 12:40:09 [3.98ms] */
delete from `model_has_roles` where `model_has_roles`.`model_id` = 10 and `model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 19 - 2022-12-16 12:40:09 [3.72ms] */
delete from `model_has_permissions` where `model_has_permissions`.`model_id` = 10 and `model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): DELETE https://api-stg.lc-analysis.com/api/user/10
   Query 20 - 2022-12-16 12:40:09 [3.8ms] */
delete from `users` where `id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:40:09 [22.15ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:40:09 [4.01ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:40:09 [5.05ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:40:09 [4.1ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:40:09 [3.87ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:40:09 [4.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:40:09 [18.49ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:40:09 [5.69ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:40:09 [5.27ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:40:09 [3.76ms] */
select * from `plans` where `plans`.`id` in (0);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:40:09 [3.9ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 12:40:13 [22ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 12:40:13 [3.97ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 12:40:13 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 12:40:13 [4.06ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 12:40:13 [4.04ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 12:40:13 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 12:40:13 [4.01ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 12:40:13 [3.8ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 12:40:13 [3.94ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:40:13 [23.02ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:40:13 [20.71ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:40:13 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:40:13 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:40:13 [3.77ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:40:13 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:40:13 [3.86ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:40:13 [3.79ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:40:13 [3.75ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:40:13 [3.71ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:40:13 [3.79ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:40:13 [4.4ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:40:13 [3.99ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:40:13 [20.36ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:40:13 [5.15ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:40:13 [3.94ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:40:13 [3.84ms] */
select * from `plans` where `plans`.`id` in (0);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:40:13 [3.85ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1);
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 1 - 2022-12-16 12:40:53 [22.52ms] */
select * from `roles` where (`name` = 'admin') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 2 - 2022-12-16 12:40:53 [3.8ms] */
select * from `roles` where (`name` = 'user') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 3 - 2022-12-16 12:40:53 [3.73ms] */
select * from `permissions` where (`name` = 'role.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 4 - 2022-12-16 12:40:53 [3.82ms] */
select * from `permissions` where (`name` = 'role.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 5 - 2022-12-16 12:40:53 [3.82ms] */
select * from `permissions` where (`name` = 'role.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 6 - 2022-12-16 12:40:53 [3.84ms] */
select * from `permissions` where (`name` = 'role.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 7 - 2022-12-16 12:40:53 [3.88ms] */
select * from `permissions` where (`name` = 'role.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 8 - 2022-12-16 12:40:53 [3.8ms] */
select * from `permissions` where (`name` = 'user.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 9 - 2022-12-16 12:40:53 [3.82ms] */
select * from `permissions` where (`name` = 'user.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 10 - 2022-12-16 12:40:53 [3.94ms] */
select * from `permissions` where (`name` = 'user.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 11 - 2022-12-16 12:40:53 [3.88ms] */
select * from `permissions` where (`name` = 'user.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 12 - 2022-12-16 12:40:53 [3.91ms] */
select * from `permissions` where (`name` = 'user.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 13 - 2022-12-16 12:40:53 [4.1ms] */
select * from `users` where (`email` = 'admin@admin.com') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 14 - 2022-12-16 12:40:53 [6.65ms] */
update `users` set `password` = 'y$Z1w3z26rOGTSrTBITWVYOeYNdvcbfMSeq6R/20sH7T5ev.viSb1ny', `date_join` = '2022-12-16 12:40:53', `email_verified_at` = '2022-12-16 12:40:53', `users`.`updated_at` = '2022-12-16 12:40:53' where `id` = 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 15 - 2022-12-16 12:40:53 [6.19ms] */
delete from `model_has_roles` where `model_has_roles`.`model_id` = 1 and `model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 16 - 2022-12-16 12:40:53 [3.82ms] */
select * from `roles` where `name` = 'admin' and `guard_name` = 'web' limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 17 - 2022-12-16 12:40:53 [3.94ms] */
select * from `model_has_roles` where `model_has_roles`.`model_id` = 1 and `model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 18 - 2022-12-16 12:40:53 [6.28ms] */
insert into `model_has_roles` (`model_id`, `model_type`, `role_id`) values (1, 'Modules\User\Models\User', 1);
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 19 - 2022-12-16 12:40:53 [3.94ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 20 - 2022-12-16 12:40:53 [87.13ms] */
truncate table `menus`;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 21 - 2022-12-16 12:40:53 [10.61ms] */
select * from `menus` where (`title` = 'module.kol') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 22 - 2022-12-16 12:40:53 [4.55ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.kol', '/kol/search', 1, 'search', 0, '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 23 - 2022-12-16 12:40:53 [4.11ms] */
select * from `menus` where (`title` = 'module.insight-list') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 24 - 2022-12-16 12:40:53 [6.48ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.insight-list', '/insight/list', 2, 'book', 0, '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 25 - 2022-12-16 12:40:53 [3.78ms] */
select * from `menus` where (`title` = 'module.campaign') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 26 - 2022-12-16 12:40:53 [5.94ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.campaign', '/campaign', 3, 'credit-card', 0, '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 27 - 2022-12-16 12:40:53 [3.95ms] */
select * from `menus` where (`title` = 'module.user') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 28 - 2022-12-16 12:40:53 [6.56ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.user', '/user', 4, 'team', 0, '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 29 - 2022-12-16 12:40:53 [3.71ms] */
select * from `menus` where (`title` = 'module.role') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 30 - 2022-12-16 12:40:53 [5.87ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.role', '/role', 5, 'balance-scale', 0, '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 31 - 2022-12-16 12:40:53 [3.75ms] */
select * from `menus` where (`title` = 'module.genre') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 32 - 2022-12-16 12:40:53 [6.21ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.genre', '/genre', 6, 'container', 0, '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 33 - 2022-12-16 12:40:53 [3.94ms] */
select * from `menus` where (`title` = 'module.payment') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 34 - 2022-12-16 12:40:53 [9.4ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.payment', '/payment', 7, 'balance-scale', 0, '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 35 - 2022-12-16 12:40:53 [3.76ms] */
select * from `menus` where (`title` = 'module.plan') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 36 - 2022-12-16 12:40:53 [6.1ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.plan', '/plan', 8, 'inbox', 0, '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 37 - 2022-12-16 12:40:53 [3.9ms] */
select * from `menus` where (`title` = 'module.setting') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 38 - 2022-12-16 12:40:53 [6.06ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.setting', '/setting', 9, 'setting', 0, '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 39 - 2022-12-16 12:40:53 [3.9ms] */
select * from `permissions` where (`name` = 'campaign.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 40 - 2022-12-16 12:40:53 [4.01ms] */
select * from `permissions` where (`name` = 'campaign.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 41 - 2022-12-16 12:40:53 [3.87ms] */
select * from `permissions` where (`name` = 'campaign.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 42 - 2022-12-16 12:40:53 [3.87ms] */
select * from `permissions` where (`name` = 'campaign.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 43 - 2022-12-16 12:40:53 [3.85ms] */
select * from `permissions` where (`name` = 'campaign.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 44 - 2022-12-16 12:40:53 [3.95ms] */
select * from `permissions` where (`name` = 'campaign.showCampaign' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 45 - 2022-12-16 12:40:53 [3.83ms] */
select * from `permissions` where (`name` = 'campaign.campaignActive' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 46 - 2022-12-16 12:40:53 [3.84ms] */
select * from `permissions` where (`name` = 'campaign.listCampaign' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 47 - 2022-12-16 12:40:53 [3.82ms] */
select * from `permissions` where (`name` = 'campaign.updateActive' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 48 - 2022-12-16 12:40:53 [3.8ms] */
select * from `permissions` where (`name` = 'campaign.updateEndDate' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 49 - 2022-12-16 12:40:53 [7.14ms] */
select * from `permissions` where (`name` = 'campaign.updateStartDate' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 50 - 2022-12-16 12:40:53 [3.83ms] */
select * from `permissions` where (`name` = 'campaignDetail.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 51 - 2022-12-16 12:40:53 [3.89ms] */
select * from `permissions` where (`name` = 'campaignDetail.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 52 - 2022-12-16 12:40:53 [3.86ms] */
select * from `permissions` where (`name` = 'campaignDetail.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 53 - 2022-12-16 12:40:53 [3.81ms] */
select * from `permissions` where (`name` = 'campaignDetail.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 54 - 2022-12-16 12:40:53 [3.79ms] */
select * from `permissions` where (`name` = 'campaignDetail.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 55 - 2022-12-16 12:40:53 [3.93ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.updateCost' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 56 - 2022-12-16 12:40:53 [3.93ms] */
select * from `permissions` where (`name` = 'campaign.getKol' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 57 - 2022-12-16 12:40:53 [3.9ms] */
select * from `permissions` where (`name` = 'campaign.getKolOk' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 58 - 2022-12-16 12:40:53 [3.82ms] */
select * from `permissions` where (`name` = 'campaignDetail.registerKol' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 59 - 2022-12-16 12:40:53 [3.96ms] */
select * from `permissions` where (`name` = 'campaignDetail.removeKol' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 60 - 2022-12-16 12:40:53 [3.86ms] */
select * from `permissions` where (`name` = 'campaign.exportKolCsv' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 61 - 2022-12-16 12:40:53 [3.88ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 62 - 2022-12-16 12:40:53 [3.84ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 63 - 2022-12-16 12:40:53 [3.8ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 64 - 2022-12-16 12:40:53 [3.81ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 65 - 2022-12-16 12:40:53 [3.82ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 66 - 2022-12-16 12:40:53 [3.84ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.createPostYoutube' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 67 - 2022-12-16 12:40:53 [5.85ms] */
insert into `permissions` (`name`, `guard_name`, `updated_at`, `created_at`) values ('campaign-detail-post.createPostYoutube', 'web', '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 68 - 2022-12-16 12:40:53 [3.89ms] */
select * from `permissions` where (`name` = 'campaign.getCampaignDetailPost' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 69 - 2022-12-16 12:40:53 [3.91ms] */
select * from `permissions` where (`name` = 'campaignReport.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 70 - 2022-12-16 12:40:53 [3.79ms] */
select * from `permissions` where (`name` = 'campaignReport.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 71 - 2022-12-16 12:40:53 [3.97ms] */
select * from `permissions` where (`name` = 'campaignReport.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 72 - 2022-12-16 12:40:53 [3.82ms] */
select * from `permissions` where (`name` = 'campaignReport.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 73 - 2022-12-16 12:40:53 [3.82ms] */
select * from `permissions` where (`name` = 'campaignReport.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 74 - 2022-12-16 12:40:53 [3.86ms] */
select * from `permissions` where (`name` = 'campaign.campaignReportShow' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 75 - 2022-12-16 12:40:53 [4.02ms] */
select * from `permissions` where (`name` = 'campaign.showCampaignAuto' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 76 - 2022-12-16 12:40:53 [3.89ms] */
select * from `permissions` where (`name` = 'campaign.showCampaignTiktokAuto' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 77 - 2022-12-16 12:40:53 [5.86ms] */
insert into `permissions` (`name`, `guard_name`, `updated_at`, `created_at`) values ('campaign.showCampaignTiktokAuto', 'web', '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 78 - 2022-12-16 12:40:53 [3.83ms] */
select * from `permissions` where (`name` = 'campaign.showCampaignYoutubeAuto' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 79 - 2022-12-16 12:40:53 [6.4ms] */
insert into `permissions` (`name`, `guard_name`, `updated_at`, `created_at`) values ('campaign.showCampaignYoutubeAuto', 'web', '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 80 - 2022-12-16 12:40:53 [3.82ms] */
select * from `permissions` where (`name` = 'campaign.campaignReportUpdate' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 81 - 2022-12-16 12:40:53 [3.97ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.kol-list' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 82 - 2022-12-16 12:40:53 [3.94ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.multi-update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 83 - 2022-12-16 12:40:53 [3.99ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.report-list' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 84 - 2022-12-16 12:40:53 [4.05ms] */
select * from `permissions` where (`name` = 'campaignDetail.getRegisteredCampaign' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 85 - 2022-12-16 12:40:53 [4.07ms] */
select * from `permissions` where (`name` = 'campaign.listGenre' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 86 - 2022-12-16 12:40:53 [3.92ms] */
select * from `permissions` where (`name` = 'campaign.importKol' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 87 - 2022-12-16 12:40:53 [3.87ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.get-record' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 88 - 2022-12-16 12:40:53 [5.95ms] */
insert into `permissions` (`name`, `guard_name`, `updated_at`, `created_at`) values ('campaign-detail-post.get-record', 'web', '2022-12-16 12:40:53', '2022-12-16 12:40:53');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 89 - 2022-12-16 12:40:53 [3.8ms] */
select * from `permissions` where (`name` = 'genre.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 90 - 2022-12-16 12:40:53 [3.85ms] */
select * from `permissions` where (`name` = 'genre.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 91 - 2022-12-16 12:40:53 [3.91ms] */
select * from `permissions` where (`name` = 'genre.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 92 - 2022-12-16 12:40:53 [3.9ms] */
select * from `permissions` where (`name` = 'genre.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 93 - 2022-12-16 12:40:53 [3.95ms] */
select * from `permissions` where (`name` = 'genre.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 94 - 2022-12-16 12:40:53 [3.87ms] */
select * from `permissions` where (`name` = 'kol.search' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 95 - 2022-12-16 12:40:53 [4.15ms] */
select * from `permissions` where (`name` = 'kol.report' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 96 - 2022-12-16 12:40:53 [3.81ms] */
select * from `permissions` where (`name` = 'insight-list.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 97 - 2022-12-16 12:40:53 [3.98ms] */
select * from `permissions` where (`name` = 'kol.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 98 - 2022-12-16 12:40:53 [3.99ms] */
select * from `permissions` where (`name` = 'kol.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 99 - 2022-12-16 12:40:53 [3.97ms] */
select * from `permissions` where (`name` = 'kol.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 100 - 2022-12-16 12:40:53 [3.86ms] */
select * from `permissions` where (`name` = 'kol.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 101 - 2022-12-16 12:40:53 [3.99ms] */
select * from `permissions` where (`name` = 'kol.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 102 - 2022-12-16 12:40:53 [3.85ms] */
select * from `permissions` where (`name` = 'kol-rating.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 103 - 2022-12-16 12:40:53 [3.91ms] */
select * from `permissions` where (`name` = 'kol-rating.list' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 104 - 2022-12-16 12:40:53 [3.94ms] */
select * from `permissions` where (`name` = 'kol-rating.update-rate' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 105 - 2022-12-16 12:40:54 [7.42ms] */
select * from `permissions` where (`name` = 'kol.ListKolInCampaign' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 106 - 2022-12-16 12:40:54 [3.95ms] */
select * from `permissions` where (`name` = 'kol.suggestUsername' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 107 - 2022-12-16 12:40:54 [3.96ms] */
select * from `permissions` where (`name` = 'payment-detail.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 108 - 2022-12-16 12:40:54 [3.89ms] */
select * from `permissions` where (`name` = 'payment-detail.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 109 - 2022-12-16 12:40:54 [3.93ms] */
select * from `permissions` where (`name` = 'payment-detail.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 110 - 2022-12-16 12:40:54 [3.8ms] */
select * from `permissions` where (`name` = 'payment-detail.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 111 - 2022-12-16 12:40:54 [3.89ms] */
select * from `permissions` where (`name` = 'payment-detail.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 112 - 2022-12-16 12:40:54 [3.92ms] */
select * from `permissions` where (`name` = 'setting.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 113 - 2022-12-16 12:40:54 [6.08ms] */
insert into `permissions` (`name`, `guard_name`, `updated_at`, `created_at`) values ('setting.index', 'web', '2022-12-16 12:40:54', '2022-12-16 12:40:54');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 114 - 2022-12-16 12:40:54 [3.82ms] */
select * from `permissions` where (`name` = 'setting.upgrade' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 115 - 2022-12-16 12:40:54 [6.3ms] */
insert into `permissions` (`name`, `guard_name`, `updated_at`, `created_at`) values ('setting.upgrade', 'web', '2022-12-16 12:40:54', '2022-12-16 12:40:54');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 116 - 2022-12-16 12:40:54 [3.85ms] */
select * from `permissions` where (`name` = 'setting.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 117 - 2022-12-16 12:40:54 [6.55ms] */
insert into `permissions` (`name`, `guard_name`, `updated_at`, `created_at`) values ('setting.update', 'web', '2022-12-16 12:40:54', '2022-12-16 12:40:54');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 118 - 2022-12-16 12:40:54 [4.11ms] */
select * from `permissions` where (`name` = 'setting.resetPassword' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 119 - 2022-12-16 12:40:54 [6.21ms] */
insert into `permissions` (`name`, `guard_name`, `updated_at`, `created_at`) values ('setting.resetPassword', 'web', '2022-12-16 12:40:54', '2022-12-16 12:40:54');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 120 - 2022-12-16 12:40:54 [4.03ms] */
select * from `permissions` where (`name` = 'plan.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 121 - 2022-12-16 12:40:54 [3.93ms] */
select * from `permissions` where (`name` = 'plan.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 122 - 2022-12-16 12:40:54 [3.81ms] */
select * from `permissions` where (`name` = 'plan.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 123 - 2022-12-16 12:40:54 [3.85ms] */
select * from `permissions` where (`name` = 'plan.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 124 - 2022-12-16 12:40:54 [4.02ms] */
select * from `permissions` where (`name` = 'plan.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 125 - 2022-12-16 12:40:54 [3.9ms] */
select * from `permissions` where (`name` = 'role.getPermissions' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 126 - 2022-12-16 12:40:54 [3.89ms] */
select * from `permissions` where (`name` = 'role.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 127 - 2022-12-16 12:40:54 [3.88ms] */
select * from `permissions` where (`name` = 'role.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 128 - 2022-12-16 12:40:54 [3.89ms] */
select * from `permissions` where (`name` = 'role.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 129 - 2022-12-16 12:40:54 [3.99ms] */
select * from `permissions` where (`name` = 'role.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 130 - 2022-12-16 12:40:54 [3.96ms] */
select * from `permissions` where (`name` = 'role.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 131 - 2022-12-16 12:40:54 [4ms] */
select * from `permissions` where (`name` = 'statistic.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 132 - 2022-12-16 12:40:54 [3.84ms] */
select * from `permissions` where (`name` = 'statistic.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 133 - 2022-12-16 12:40:54 [4.15ms] */
select * from `permissions` where (`name` = 'statistic.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 134 - 2022-12-16 12:40:54 [3.86ms] */
select * from `permissions` where (`name` = 'statistic.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 135 - 2022-12-16 12:40:54 [3.97ms] */
select * from `permissions` where (`name` = 'statistic.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 136 - 2022-12-16 12:40:54 [3.89ms] */
select * from `permissions` where (`name` = 'statistic-detail.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 137 - 2022-12-16 12:40:54 [3.77ms] */
select * from `permissions` where (`name` = 'statistic-detail.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 138 - 2022-12-16 12:40:54 [4.14ms] */
select * from `permissions` where (`name` = 'statistic-detail.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 139 - 2022-12-16 12:40:54 [3.9ms] */
select * from `permissions` where (`name` = 'statistic-detail.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 140 - 2022-12-16 12:40:54 [3.89ms] */
select * from `permissions` where (`name` = 'statistic-detail.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 141 - 2022-12-16 12:40:54 [3.93ms] */
select * from `permissions` where (`name` = 'tag.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 142 - 2022-12-16 12:40:54 [3.8ms] */
select * from `permissions` where (`name` = 'tag.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 143 - 2022-12-16 12:40:54 [3.98ms] */
select * from `permissions` where (`name` = 'tag.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 144 - 2022-12-16 12:40:54 [3.89ms] */
select * from `permissions` where (`name` = 'tag.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 145 - 2022-12-16 12:40:54 [3.85ms] */
select * from `permissions` where (`name` = 'tag.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 146 - 2022-12-16 12:40:54 [3.82ms] */
select * from `permissions` where (`name` = 'user.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 147 - 2022-12-16 12:40:54 [3.9ms] */
select * from `permissions` where (`name` = 'user.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 148 - 2022-12-16 12:40:54 [3.85ms] */
select * from `permissions` where (`name` = 'user.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 149 - 2022-12-16 12:40:54 [3.75ms] */
select * from `permissions` where (`name` = 'user.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 150 - 2022-12-16 12:40:54 [3.96ms] */
select * from `permissions` where (`name` = 'user.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 151 - 2022-12-16 12:40:54 [5.58ms] */
select * from `genres` where (`name` = 'ファッション') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 152 - 2022-12-16 12:40:54 [3.93ms] */
select * from `genres` where (`name` = 'ビューティー') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 153 - 2022-12-16 12:40:54 [3.96ms] */
select * from `genres` where (`name` = 'グルメ') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 154 - 2022-12-16 12:40:54 [3.84ms] */
select * from `genres` where (`name` = 'インテリア') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 155 - 2022-12-16 12:40:54 [3.82ms] */
select * from `genres` where (`name` = '電化製品') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 156 - 2022-12-16 12:40:54 [3.72ms] */
select * from `genres` where (`name` = '不動産') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 157 - 2022-12-16 12:40:54 [3.84ms] */
select * from `genres` where (`name` = '動物') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 158 - 2022-12-16 12:40:54 [3.86ms] */
select * from `genres` where (`name` = '旅行') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 159 - 2022-12-16 12:40:54 [3.91ms] */
select * from `genres` where (`name` = '日用品') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 160 - 2022-12-16 12:40:54 [3.82ms] */
select * from `genres` where (`name` = 'エンタメ') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 161 - 2022-12-16 12:40:54 [3.81ms] */
select * from `genres` where (`name` = '旅行・ホテル') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 162 - 2022-12-16 12:40:54 [3.85ms] */
select * from `genres` where (`name` = 'ゲーム') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 163 - 2022-12-16 12:40:54 [3.83ms] */
select * from `genres` where (`name` = 'キッズ') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 164 - 2022-12-16 12:40:54 [3.89ms] */
select * from `genres` where (`name` = '乗り物') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 165 - 2022-12-16 12:40:54 [3.96ms] */
select * from `genres` where (`name` = 'アート(音楽・映画)') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 166 - 2022-12-16 12:40:54 [3.74ms] */
select * from `genres` where (`name` = 'ビジネス') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 167 - 2022-12-16 12:40:54 [3.78ms] */
select * from `genres` where (`name` = 'スポーツ・アクティブ') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 168 - 2022-12-16 12:40:54 [3.8ms] */
select * from `genres` where (`name` = 'その他') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 169 - 2022-12-16 12:40:54 [6.09ms] */
select * from `plans` where (`name` = 'FREE TRIAL' and `plan_type` = 0 and `status` = 1) limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 170 - 2022-12-16 12:40:54 [6.03ms] */
update `plans` set `start_date` = '2022-12-16', `end_date` = '2032-12-16', `plans`.`updated_at` = '2022-12-16 12:40:54' where `id` = 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 171 - 2022-12-16 12:40:54 [3.92ms] */
select * from `plans` where (`name` = 'basic plan' and `plan_type` = 1 and `status` = 1) limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 172 - 2022-12-16 12:40:54 [6.31ms] */
insert into `plans` (`name`, `plan_type`, `status`, `short_term_money_amount`, `long_term_money_amount`, `account_search_number`, `page_search_number`, `profile_view_number`, `full_report_number`, `export_csv_number`, `campaign_register_number`, `insight_list_number`, `campaign_list_number`, `start_date`, `end_date`, `updated_at`, `created_at`) values ('基本プラン', 1, 1, 10000, 185000, 200, 200, -1, 500, 0, 0, -1, -1, '2022-12-16', '2032-12-16', '2022-12-16 12:40:54', '2022-12-16 12:40:54');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 173 - 2022-12-16 12:40:54 [3.96ms] */
select * from `plans` where (`name` = 'silver plan' and `plan_type` = 2 and `status` = 1) limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 174 - 2022-12-16 12:40:54 [6.09ms] */
insert into `plans` (`name`, `plan_type`, `status`, `short_term_money_amount`, `long_term_money_amount`, `account_search_number`, `page_search_number`, `profile_view_number`, `full_report_number`, `export_csv_number`, `campaign_register_number`, `insight_list_number`, `campaign_list_number`, `start_date`, `end_date`, `updated_at`, `created_at`) values ('シルバープラン', 2, 1, 50000, 385000, 500, 500, -1, 1000, -1, -1, -1, -1, '2022-12-16', '2032-12-16', '2022-12-16 12:40:54', '2022-12-16 12:40:54');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 175 - 2022-12-16 12:40:54 [3.93ms] */
select * from `plans` where (`name` = 'gold plan' and `plan_type` = 3 and `status` = 1) limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 176 - 2022-12-16 12:40:54 [6.01ms] */
insert into `plans` (`name`, `plan_type`, `status`, `short_term_money_amount`, `long_term_money_amount`, `account_search_number`, `page_search_number`, `profile_view_number`, `full_report_number`, `export_csv_number`, `campaign_register_number`, `insight_list_number`, `campaign_list_number`, `start_date`, `end_date`, `updated_at`, `created_at`) values ('ゴールドプラン', 3, 1, 100000, 780000, 1000, 1000, -1, 2000, -1, -1, -1, -1, '2022-12-16', '2032-12-16', '2022-12-16 12:40:54', '2022-12-16 12:40:54');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 177 - 2022-12-16 12:40:54 [3.93ms] */
select * from `plans` where (`name` = 'order made plan' and `plan_type` = 4 and `status` = 1) limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 178 - 2022-12-16 12:40:54 [6.1ms] */
insert into `plans` (`name`, `plan_type`, `status`, `short_term_money_amount`, `long_term_money_amount`, `account_search_number`, `page_search_number`, `profile_view_number`, `full_report_number`, `export_csv_number`, `campaign_register_number`, `insight_list_number`, `campaign_list_number`, `start_date`, `end_date`, `updated_at`, `created_at`) values ('オーダーメイド販売', 4, 1, 1000000, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2022-12-16', '2032-12-16', '2022-12-16 12:40:54', '2022-12-16 12:40:54');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 12:40:56 [20.38ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 12:40:56 [3.94ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 12:40:56 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 12:40:56 [3.96ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 12:40:56 [3.81ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 12:40:56 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 12:40:56 [4.03ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 12:40:56 [3.83ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 12:40:56 [3.98ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:40:56 [25.02ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:40:56 [3.79ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:40:56 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:40:56 [3.97ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:40:56 [19.09ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:40:56 [3.73ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:40:56 [3.75ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:40:56 [3.79ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:40:56 [5.59ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:40:56 [5.25ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:40:56 [7.48ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:40:56 [18.77ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:40:56 [5.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:40:56 [4.92ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:40:56 [5.43ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:40:56 [4.14ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:40:56 [4.02ms] */
select * from `plans` where `plans`.`id` in (0);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:40:56 [3.94ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:40:57 [19.4ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:40:57 [4.03ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:40:57 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:40:57 [3.94ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:40:57 [4.1ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:40:57 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:40:57 [4.02ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 12:40:58 [23.02ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 12:40:58 [3.83ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 12:40:58 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 12:40:58 [3.9ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 12:40:58 [3.89ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 12:40:58 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 12:40:58 [4.07ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 12:40:58 [3.82ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 12:40:58 [3.92ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:40:59 [21.73ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:40:59 [3.9ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:40:59 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:40:59 [3.92ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:40:59 [3.87ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:40:59 [3.76ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:40:59 [4.05ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 12:41:00 [352.42ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 12:41:00 [13.37ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 12:41:00 [13.21ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 12:41:00 [3.92ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 12:41:00 [3.8ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 12:41:00 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 12:41:00 [4.1ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 12:41:00 [3.83ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 12:41:00 [4.07ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:41:00 [20.17ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:41:00 [4.03ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:41:00 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:41:00 [4.01ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:41:00 [3.85ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:41:00 [4.1ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:41:00 [4.03ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 12:41:05 [22.14ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 12:41:05 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 12:41:05 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 12:41:05 [4.22ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 12:41:05 [4.02ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 12:41:05 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 12:41:05 [4.02ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 12:41:05 [3.93ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 12:41:05 [4ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:41:05 [29.48ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:41:05 [4ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:41:05 [3.99ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:41:05 [4.17ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:41:05 [21.91ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:41:05 [4ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:41:05 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:41:05 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:41:05 [4.72ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:41:05 [4.07ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:41:05 [7.01ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:41:05 [7.65ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:41:05 [19.57ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:41:05 [4.03ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:41:05 [4.13ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:41:05 [4.1ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:41:05 [3.87ms] */
select * from `plans` where `plans`.`id` in (0);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:41:05 [3.89ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1);
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 1 - 2022-12-16 12:42:22 [22.79ms] */
select * from `roles` where (`name` = 'admin') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 2 - 2022-12-16 12:42:22 [3.93ms] */
select * from `roles` where (`name` = 'user') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 3 - 2022-12-16 12:42:22 [4.06ms] */
select * from `permissions` where (`name` = 'role.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 4 - 2022-12-16 12:42:22 [3.86ms] */
select * from `permissions` where (`name` = 'role.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 5 - 2022-12-16 12:42:22 [3.89ms] */
select * from `permissions` where (`name` = 'role.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 6 - 2022-12-16 12:42:22 [3.89ms] */
select * from `permissions` where (`name` = 'role.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 7 - 2022-12-16 12:42:22 [3.85ms] */
select * from `permissions` where (`name` = 'role.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 8 - 2022-12-16 12:42:22 [3.92ms] */
select * from `permissions` where (`name` = 'user.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 9 - 2022-12-16 12:42:22 [3.8ms] */
select * from `permissions` where (`name` = 'user.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 10 - 2022-12-16 12:42:22 [3.99ms] */
select * from `permissions` where (`name` = 'user.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 11 - 2022-12-16 12:42:22 [3.83ms] */
select * from `permissions` where (`name` = 'user.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 12 - 2022-12-16 12:42:22 [3.81ms] */
select * from `permissions` where (`name` = 'user.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 13 - 2022-12-16 12:42:22 [4.23ms] */
select * from `users` where (`email` = 'admin@admin.com') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 14 - 2022-12-16 12:42:22 [6.39ms] */
update `users` set `password` = 'yRiY5uEbFoJL3e.fdiVdueQiZLIYPmDPzu4nUvvJWXkuEbjAPbEiS', `date_join` = '2022-12-16 12:42:22', `email_verified_at` = '2022-12-16 12:42:22', `users`.`updated_at` = '2022-12-16 12:42:22' where `id` = 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 15 - 2022-12-16 12:42:22 [6.69ms] */
delete from `model_has_roles` where `model_has_roles`.`model_id` = 1 and `model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 16 - 2022-12-16 12:42:22 [3.82ms] */
select * from `roles` where `name` = 'admin' and `guard_name` = 'web' limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 17 - 2022-12-16 12:42:22 [3.82ms] */
select * from `model_has_roles` where `model_has_roles`.`model_id` = 1 and `model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 18 - 2022-12-16 12:42:22 [5.94ms] */
insert into `model_has_roles` (`model_id`, `model_type`, `role_id`) values (1, 'Modules\User\Models\User', 1);
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 19 - 2022-12-16 12:42:22 [4.12ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 20 - 2022-12-16 12:42:22 [68.91ms] */
truncate table `menus`;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 21 - 2022-12-16 12:42:22 [7.08ms] */
select * from `menus` where (`title` = 'module.kol') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 22 - 2022-12-16 12:42:22 [5.91ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.kol', '/kol/search', 1, 'search', 0, '2022-12-16 12:42:22', '2022-12-16 12:42:22');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 23 - 2022-12-16 12:42:22 [4.02ms] */
select * from `menus` where (`title` = 'module.insight-list') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 24 - 2022-12-16 12:42:22 [6.31ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.insight-list', '/insight/list', 2, 'book', 0, '2022-12-16 12:42:22', '2022-12-16 12:42:22');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 25 - 2022-12-16 12:42:22 [3.85ms] */
select * from `menus` where (`title` = 'module.campaign') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 26 - 2022-12-16 12:42:22 [6.01ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.campaign', '/campaign', 3, 'credit-card', 0, '2022-12-16 12:42:22', '2022-12-16 12:42:22');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 27 - 2022-12-16 12:42:22 [3.86ms] */
select * from `menus` where (`title` = 'module.user') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 28 - 2022-12-16 12:42:22 [5.9ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.user', '/user', 4, 'team', 0, '2022-12-16 12:42:22', '2022-12-16 12:42:22');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 29 - 2022-12-16 12:42:22 [3.72ms] */
select * from `menus` where (`title` = 'module.role') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 30 - 2022-12-16 12:42:22 [6ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.role', '/role', 5, 'balance-scale', 0, '2022-12-16 12:42:22', '2022-12-16 12:42:22');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 31 - 2022-12-16 12:42:22 [3.87ms] */
select * from `menus` where (`title` = 'module.genre') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 32 - 2022-12-16 12:42:22 [6.31ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.genre', '/genre', 6, 'container', 0, '2022-12-16 12:42:22', '2022-12-16 12:42:22');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 33 - 2022-12-16 12:42:22 [3.9ms] */
select * from `menus` where (`title` = 'module.payment') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 34 - 2022-12-16 12:42:22 [6.14ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.payment', '/payment', 7, 'balance-scale', 0, '2022-12-16 12:42:22', '2022-12-16 12:42:22');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 35 - 2022-12-16 12:42:22 [3.85ms] */
select * from `menus` where (`title` = 'module.plan') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 36 - 2022-12-16 12:42:22 [6.18ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.plan', '/plan', 8, 'inbox', 0, '2022-12-16 12:42:22', '2022-12-16 12:42:22');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 37 - 2022-12-16 12:42:22 [3.88ms] */
select * from `menus` where (`title` = 'module.setting') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 38 - 2022-12-16 12:42:22 [6.13ms] */
insert into `menus` (`title`, `link`, `position`, `icon`, `parent_id`, `updated_at`, `created_at`) values ('module.setting', '/setting', 9, 'setting', 0, '2022-12-16 12:42:22', '2022-12-16 12:42:22');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 39 - 2022-12-16 12:42:22 [3.86ms] */
select * from `permissions` where (`name` = 'campaign.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 40 - 2022-12-16 12:42:22 [3.88ms] */
select * from `permissions` where (`name` = 'campaign.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 41 - 2022-12-16 12:42:22 [3.84ms] */
select * from `permissions` where (`name` = 'campaign.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 42 - 2022-12-16 12:42:22 [3.84ms] */
select * from `permissions` where (`name` = 'campaign.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 43 - 2022-12-16 12:42:22 [3.88ms] */
select * from `permissions` where (`name` = 'campaign.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 44 - 2022-12-16 12:42:22 [3.82ms] */
select * from `permissions` where (`name` = 'campaign.showCampaign' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 45 - 2022-12-16 12:42:22 [3.8ms] */
select * from `permissions` where (`name` = 'campaign.campaignActive' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 46 - 2022-12-16 12:42:22 [4.02ms] */
select * from `permissions` where (`name` = 'campaign.listCampaign' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 47 - 2022-12-16 12:42:22 [3.92ms] */
select * from `permissions` where (`name` = 'campaign.updateActive' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 48 - 2022-12-16 12:42:22 [3.9ms] */
select * from `permissions` where (`name` = 'campaign.updateEndDate' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 49 - 2022-12-16 12:42:22 [3.79ms] */
select * from `permissions` where (`name` = 'campaign.updateStartDate' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 50 - 2022-12-16 12:42:22 [3.87ms] */
select * from `permissions` where (`name` = 'campaignDetail.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 51 - 2022-12-16 12:42:22 [3.83ms] */
select * from `permissions` where (`name` = 'campaignDetail.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 52 - 2022-12-16 12:42:22 [3.86ms] */
select * from `permissions` where (`name` = 'campaignDetail.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 53 - 2022-12-16 12:42:22 [3.94ms] */
select * from `permissions` where (`name` = 'campaignDetail.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 54 - 2022-12-16 12:42:22 [3.83ms] */
select * from `permissions` where (`name` = 'campaignDetail.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 55 - 2022-12-16 12:42:22 [3.86ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.updateCost' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 56 - 2022-12-16 12:42:22 [3.88ms] */
select * from `permissions` where (`name` = 'campaign.getKol' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 57 - 2022-12-16 12:42:22 [3.86ms] */
select * from `permissions` where (`name` = 'campaign.getKolOk' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 58 - 2022-12-16 12:42:22 [3.81ms] */
select * from `permissions` where (`name` = 'campaignDetail.registerKol' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 59 - 2022-12-16 12:42:22 [3.8ms] */
select * from `permissions` where (`name` = 'campaignDetail.removeKol' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 60 - 2022-12-16 12:42:22 [3.86ms] */
select * from `permissions` where (`name` = 'campaign.exportKolCsv' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 61 - 2022-12-16 12:42:22 [3.8ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 62 - 2022-12-16 12:42:22 [3.88ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 63 - 2022-12-16 12:42:22 [3.83ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 64 - 2022-12-16 12:42:22 [3.79ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 65 - 2022-12-16 12:42:22 [3.78ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 66 - 2022-12-16 12:42:22 [3.95ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.createPostYoutube' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 67 - 2022-12-16 12:42:22 [3.83ms] */
select * from `permissions` where (`name` = 'campaign.getCampaignDetailPost' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 68 - 2022-12-16 12:42:22 [4.04ms] */
select * from `permissions` where (`name` = 'campaignReport.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 69 - 2022-12-16 12:42:22 [3.94ms] */
select * from `permissions` where (`name` = 'campaignReport.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 70 - 2022-12-16 12:42:22 [3.8ms] */
select * from `permissions` where (`name` = 'campaignReport.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 71 - 2022-12-16 12:42:22 [3.92ms] */
select * from `permissions` where (`name` = 'campaignReport.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 72 - 2022-12-16 12:42:22 [3.9ms] */
select * from `permissions` where (`name` = 'campaignReport.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 73 - 2022-12-16 12:42:22 [3.97ms] */
select * from `permissions` where (`name` = 'campaign.campaignReportShow' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 74 - 2022-12-16 12:42:22 [3.83ms] */
select * from `permissions` where (`name` = 'campaign.showCampaignAuto' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 75 - 2022-12-16 12:42:22 [4.12ms] */
select * from `permissions` where (`name` = 'campaign.showCampaignTiktokAuto' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 76 - 2022-12-16 12:42:22 [3.88ms] */
select * from `permissions` where (`name` = 'campaign.showCampaignYoutubeAuto' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 77 - 2022-12-16 12:42:22 [3.92ms] */
select * from `permissions` where (`name` = 'campaign.campaignReportUpdate' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 78 - 2022-12-16 12:42:22 [3.97ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.kol-list' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 79 - 2022-12-16 12:42:22 [3.86ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.multi-update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 80 - 2022-12-16 12:42:22 [3.84ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.report-list' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 81 - 2022-12-16 12:42:22 [3.92ms] */
select * from `permissions` where (`name` = 'campaignDetail.getRegisteredCampaign' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 82 - 2022-12-16 12:42:22 [3.81ms] */
select * from `permissions` where (`name` = 'campaign.listGenre' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 83 - 2022-12-16 12:42:22 [3.93ms] */
select * from `permissions` where (`name` = 'campaign.importKol' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 84 - 2022-12-16 12:42:22 [3.94ms] */
select * from `permissions` where (`name` = 'campaign-detail-post.get-record' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 85 - 2022-12-16 12:42:22 [3.75ms] */
select * from `permissions` where (`name` = 'genre.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 86 - 2022-12-16 12:42:22 [4.04ms] */
select * from `permissions` where (`name` = 'genre.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 87 - 2022-12-16 12:42:22 [3.87ms] */
select * from `permissions` where (`name` = 'genre.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 88 - 2022-12-16 12:42:22 [3.88ms] */
select * from `permissions` where (`name` = 'genre.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 89 - 2022-12-16 12:42:22 [3.89ms] */
select * from `permissions` where (`name` = 'genre.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 90 - 2022-12-16 12:42:22 [3.91ms] */
select * from `permissions` where (`name` = 'kol.search' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 91 - 2022-12-16 12:42:22 [3.86ms] */
select * from `permissions` where (`name` = 'kol.report' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 92 - 2022-12-16 12:42:22 [3.84ms] */
select * from `permissions` where (`name` = 'insight-list.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 93 - 2022-12-16 12:42:22 [3.95ms] */
select * from `permissions` where (`name` = 'kol.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 94 - 2022-12-16 12:42:22 [3.81ms] */
select * from `permissions` where (`name` = 'kol.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 95 - 2022-12-16 12:42:22 [3.87ms] */
select * from `permissions` where (`name` = 'kol.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 96 - 2022-12-16 12:42:22 [3.94ms] */
select * from `permissions` where (`name` = 'kol.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 97 - 2022-12-16 12:42:22 [3.78ms] */
select * from `permissions` where (`name` = 'kol.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 98 - 2022-12-16 12:42:22 [3.85ms] */
select * from `permissions` where (`name` = 'kol-rating.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 99 - 2022-12-16 12:42:22 [3.83ms] */
select * from `permissions` where (`name` = 'kol-rating.list' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 100 - 2022-12-16 12:42:22 [3.89ms] */
select * from `permissions` where (`name` = 'kol-rating.update-rate' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 101 - 2022-12-16 12:42:22 [3.86ms] */
select * from `permissions` where (`name` = 'kol.ListKolInCampaign' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 102 - 2022-12-16 12:42:22 [3.79ms] */
select * from `permissions` where (`name` = 'kol.suggestUsername' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 103 - 2022-12-16 12:42:22 [3.82ms] */
select * from `permissions` where (`name` = 'payment-detail.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 104 - 2022-12-16 12:42:22 [3.94ms] */
select * from `permissions` where (`name` = 'payment-detail.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 105 - 2022-12-16 12:42:22 [3.88ms] */
select * from `permissions` where (`name` = 'payment-detail.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 106 - 2022-12-16 12:42:22 [3.78ms] */
select * from `permissions` where (`name` = 'payment-detail.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 107 - 2022-12-16 12:42:22 [3.81ms] */
select * from `permissions` where (`name` = 'payment-detail.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 108 - 2022-12-16 12:42:22 [3.9ms] */
select * from `permissions` where (`name` = 'setting.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 109 - 2022-12-16 12:42:22 [3.84ms] */
select * from `permissions` where (`name` = 'setting.upgrade' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 110 - 2022-12-16 12:42:22 [3.87ms] */
select * from `permissions` where (`name` = 'setting.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 111 - 2022-12-16 12:42:22 [3.92ms] */
select * from `permissions` where (`name` = 'setting.resetPassword' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 112 - 2022-12-16 12:42:22 [3.79ms] */
select * from `permissions` where (`name` = 'plan.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 113 - 2022-12-16 12:42:22 [3.81ms] */
select * from `permissions` where (`name` = 'plan.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 114 - 2022-12-16 12:42:22 [3.79ms] */
select * from `permissions` where (`name` = 'plan.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 115 - 2022-12-16 12:42:22 [3.83ms] */
select * from `permissions` where (`name` = 'plan.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 116 - 2022-12-16 12:42:22 [4.17ms] */
select * from `permissions` where (`name` = 'plan.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 117 - 2022-12-16 12:42:22 [4.06ms] */
select * from `permissions` where (`name` = 'role.getPermissions' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 118 - 2022-12-16 12:42:22 [3.95ms] */
select * from `permissions` where (`name` = 'role.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 119 - 2022-12-16 12:42:22 [3.9ms] */
select * from `permissions` where (`name` = 'role.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 120 - 2022-12-16 12:42:22 [3.79ms] */
select * from `permissions` where (`name` = 'role.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 121 - 2022-12-16 12:42:22 [3.91ms] */
select * from `permissions` where (`name` = 'role.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 122 - 2022-12-16 12:42:22 [3.8ms] */
select * from `permissions` where (`name` = 'role.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 123 - 2022-12-16 12:42:22 [3.87ms] */
select * from `permissions` where (`name` = 'statistic.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 124 - 2022-12-16 12:42:22 [3.88ms] */
select * from `permissions` where (`name` = 'statistic.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 125 - 2022-12-16 12:42:22 [3.87ms] */
select * from `permissions` where (`name` = 'statistic.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 126 - 2022-12-16 12:42:22 [3.75ms] */
select * from `permissions` where (`name` = 'statistic.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 127 - 2022-12-16 12:42:22 [3.89ms] */
select * from `permissions` where (`name` = 'statistic.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 128 - 2022-12-16 12:42:22 [3.98ms] */
select * from `permissions` where (`name` = 'statistic-detail.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 129 - 2022-12-16 12:42:22 [3.87ms] */
select * from `permissions` where (`name` = 'statistic-detail.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 130 - 2022-12-16 12:42:22 [3.8ms] */
select * from `permissions` where (`name` = 'statistic-detail.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 131 - 2022-12-16 12:42:22 [3.84ms] */
select * from `permissions` where (`name` = 'statistic-detail.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 132 - 2022-12-16 12:42:22 [3.76ms] */
select * from `permissions` where (`name` = 'statistic-detail.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 133 - 2022-12-16 12:42:22 [3.84ms] */
select * from `permissions` where (`name` = 'tag.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 134 - 2022-12-16 12:42:22 [3.85ms] */
select * from `permissions` where (`name` = 'tag.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 135 - 2022-12-16 12:42:22 [3.86ms] */
select * from `permissions` where (`name` = 'tag.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 136 - 2022-12-16 12:42:22 [3.82ms] */
select * from `permissions` where (`name` = 'tag.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 137 - 2022-12-16 12:42:22 [3.84ms] */
select * from `permissions` where (`name` = 'tag.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 138 - 2022-12-16 12:42:22 [3.9ms] */
select * from `permissions` where (`name` = 'user.index' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 139 - 2022-12-16 12:42:22 [3.87ms] */
select * from `permissions` where (`name` = 'user.store' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 140 - 2022-12-16 12:42:22 [3.85ms] */
select * from `permissions` where (`name` = 'user.show' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 141 - 2022-12-16 12:42:22 [3.83ms] */
select * from `permissions` where (`name` = 'user.update' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 142 - 2022-12-16 12:42:22 [3.89ms] */
select * from `permissions` where (`name` = 'user.destroy' and `guard_name` = 'web') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 143 - 2022-12-16 12:42:22 [3.75ms] */
select * from `genres` where (`name` = 'ファッション') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 144 - 2022-12-16 12:42:22 [3.77ms] */
select * from `genres` where (`name` = 'ビューティー') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 145 - 2022-12-16 12:42:22 [3.8ms] */
select * from `genres` where (`name` = 'グルメ') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 146 - 2022-12-16 12:42:22 [3.86ms] */
select * from `genres` where (`name` = 'インテリア') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 147 - 2022-12-16 12:42:23 [3.88ms] */
select * from `genres` where (`name` = '電化製品') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 148 - 2022-12-16 12:42:23 [5.13ms] */
select * from `genres` where (`name` = '不動産') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 149 - 2022-12-16 12:42:23 [3.94ms] */
select * from `genres` where (`name` = '動物') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 150 - 2022-12-16 12:42:23 [3.96ms] */
select * from `genres` where (`name` = '旅行') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 151 - 2022-12-16 12:42:23 [3.82ms] */
select * from `genres` where (`name` = '日用品') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 152 - 2022-12-16 12:42:23 [3.87ms] */
select * from `genres` where (`name` = 'エンタメ') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 153 - 2022-12-16 12:42:23 [3.84ms] */
select * from `genres` where (`name` = '旅行・ホテル') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 154 - 2022-12-16 12:42:23 [3.9ms] */
select * from `genres` where (`name` = 'ゲーム') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 155 - 2022-12-16 12:42:23 [3.82ms] */
select * from `genres` where (`name` = 'キッズ') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 156 - 2022-12-16 12:42:23 [3.84ms] */
select * from `genres` where (`name` = '乗り物') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 157 - 2022-12-16 12:42:23 [5.82ms] */
select * from `genres` where (`name` = 'アート(音楽・映画)') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 158 - 2022-12-16 12:42:23 [3.83ms] */
select * from `genres` where (`name` = 'ビジネス') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 159 - 2022-12-16 12:42:23 [4.07ms] */
select * from `genres` where (`name` = 'スポーツ・アクティブ') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 160 - 2022-12-16 12:42:23 [3.87ms] */
select * from `genres` where (`name` = 'その他') limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 161 - 2022-12-16 12:42:23 [4.08ms] */
select * from `plans` where (`name` = 'FREE TRIAL' and `plan_type` = 0 and `status` = 1) limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 162 - 2022-12-16 12:42:23 [7.66ms] */
insert into `plans` (`name`, `plan_type`, `status`, `short_term_money_amount`, `long_term_money_amount`, `account_search_number`, `page_search_number`, `profile_view_number`, `full_report_number`, `export_csv_number`, `campaign_register_number`, `insight_list_number`, `campaign_list_number`, `start_date`, `end_date`, `updated_at`, `created_at`) values ('FREE TRIAL', 0, 1, 0, 0, 5, 5, 5, 5, 0, 0, -1, -1, '2022-12-16', '2032-12-16', '2022-12-16 12:42:23', '2022-12-16 12:42:23');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 163 - 2022-12-16 12:42:23 [4.02ms] */
select * from `plans` where (`name` = 'basic plan' and `plan_type` = 1 and `status` = 1) limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 164 - 2022-12-16 12:42:23 [6.23ms] */
insert into `plans` (`name`, `plan_type`, `status`, `short_term_money_amount`, `long_term_money_amount`, `account_search_number`, `page_search_number`, `profile_view_number`, `full_report_number`, `export_csv_number`, `campaign_register_number`, `insight_list_number`, `campaign_list_number`, `start_date`, `end_date`, `updated_at`, `created_at`) values ('基本プラン', 1, 1, 10000, 185000, 200, 200, -1, 500, 0, 0, -1, -1, '2022-12-16', '2032-12-16', '2022-12-16 12:42:23', '2022-12-16 12:42:23');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 165 - 2022-12-16 12:42:23 [3.99ms] */
select * from `plans` where (`name` = 'silver plan' and `plan_type` = 2 and `status` = 1) limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 166 - 2022-12-16 12:42:23 [6.16ms] */
insert into `plans` (`name`, `plan_type`, `status`, `short_term_money_amount`, `long_term_money_amount`, `account_search_number`, `page_search_number`, `profile_view_number`, `full_report_number`, `export_csv_number`, `campaign_register_number`, `insight_list_number`, `campaign_list_number`, `start_date`, `end_date`, `updated_at`, `created_at`) values ('シルバープラン', 2, 1, 50000, 385000, 500, 500, -1, 1000, -1, -1, -1, -1, '2022-12-16', '2032-12-16', '2022-12-16 12:42:23', '2022-12-16 12:42:23');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 167 - 2022-12-16 12:42:23 [3.97ms] */
select * from `plans` where (`name` = 'gold plan' and `plan_type` = 3 and `status` = 1) limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 168 - 2022-12-16 12:42:23 [6.1ms] */
insert into `plans` (`name`, `plan_type`, `status`, `short_term_money_amount`, `long_term_money_amount`, `account_search_number`, `page_search_number`, `profile_view_number`, `full_report_number`, `export_csv_number`, `campaign_register_number`, `insight_list_number`, `campaign_list_number`, `start_date`, `end_date`, `updated_at`, `created_at`) values ('ゴールドプラン', 3, 1, 100000, 780000, 1000, 1000, -1, 2000, -1, -1, -1, -1, '2022-12-16', '2032-12-16', '2022-12-16 12:42:23', '2022-12-16 12:42:23');
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 169 - 2022-12-16 12:42:23 [3.94ms] */
select * from `plans` where (`name` = 'order made plan' and `plan_type` = 4 and `status` = 1) limit 1;
/*==================================================*/
/* Origin (console): artisan db:seed
   Query 170 - 2022-12-16 12:42:23 [6.51ms] */
insert into `plans` (`name`, `plan_type`, `status`, `short_term_money_amount`, `long_term_money_amount`, `account_search_number`, `page_search_number`, `profile_view_number`, `full_report_number`, `export_csv_number`, `campaign_register_number`, `insight_list_number`, `campaign_list_number`, `start_date`, `end_date`, `updated_at`, `created_at`) values ('オーダーメイド販売', 4, 1, 1000000, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2022-12-16', '2032-12-16', '2022-12-16 12:42:23', '2022-12-16 12:42:23');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 12:42:25 [20.12ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 12:42:25 [3.91ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 12:42:25 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 12:42:25 [3.99ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 12:42:25 [3.89ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 12:42:25 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 12:42:25 [4.13ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 12:42:25 [3.84ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 12:42:25 [3.96ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:42:25 [20.41ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:42:25 [3.87ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:42:25 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:42:25 [4.13ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:42:25 [3.99ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:42:25 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:42:25 [4.29ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:42:27 [24.22ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:42:27 [3.86ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:42:27 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:42:27 [4ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:42:27 [3.88ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:42:27 [3.63ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:42:27 [20.49ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:42:27 [4.7ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:42:27 [7.7ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:42:27 [17.81ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:42:27 [5.26ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:42:27 [4.01ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:42:27 [3.76ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:42:27 [3.97ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:42:27 [3.73ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:42:27 [3.74ms] */
select * from `plans` where `plans`.`id` in (0);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:42:27 [3.92ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:42:27 [3.86ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2022-12-16 12:42:28 [19.96ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2022-12-16 12:42:28 [3.81ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2022-12-16 12:42:28 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2022-12-16 12:42:28 [3.83ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2022-12-16 12:42:28 [3.95ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2022-12-16 12:42:28 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2022-12-16 12:42:28 [4.07ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2022-12-16 12:44:54 [21.7ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2022-12-16 12:44:54 [3.82ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2022-12-16 12:44:54 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2022-12-16 12:44:54 [4.01ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2022-12-16 12:44:54 [3.83ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2022-12-16 12:44:54 [3.79ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2022-12-16 12:44:54 [4.05ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:44:57 [20.14ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:44:57 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:44:57 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:44:57 [3.94ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:44:57 [3.82ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:44:57 [3.75ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:44:57 [3.97ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:45:08 [21.64ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:45:08 [22.69ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:45:08 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:45:08 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:45:08 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:45:08 [4.13ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:45:08 [4.03ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:45:08 [3.91ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:45:08 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:45:08 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:45:08 [4ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:45:08 [5.06ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:45:08 [5.05ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:45:08 [21.17ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:45:08 [4.27ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:45:08 [4.01ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:45:08 [3.94ms] */
select * from `plans` where `plans`.`id` in (0);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:45:08 [3.93ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:45:39 [27.01ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:45:39 [27.86ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:45:39 [3.7ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:45:39 [3.71ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:45:39 [3.71ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:45:39 [3.74ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:45:39 [3.87ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:45:39 [3.8ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:45:39 [3.7ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:45:39 [3.75ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:45:39 [3.74ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:45:39 [4.46ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:45:39 [4.74ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:45:39 [18.93ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:45:39 [4ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:45:39 [3.85ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:45:39 [3.86ms] */
select * from `plans` where `plans`.`id` in (0);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:45:40 [28.85ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2022-12-16 12:45:40 [21.75ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2022-12-16 12:45:40 [3.95ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2022-12-16 12:45:40 [4.27ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2022-12-16 12:45:40 [4.22ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2022-12-16 12:45:40 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2022-12-16 12:45:40 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2022-12-16 12:45:40 [4.01ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre
   Query 1 - 2022-12-16 12:45:42 [19.85ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre
   Query 2 - 2022-12-16 12:45:42 [4.26ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre
   Query 3 - 2022-12-16 12:45:42 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre
   Query 4 - 2022-12-16 12:45:42 [4.07ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre
   Query 5 - 2022-12-16 12:45:42 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre
   Query 6 - 2022-12-16 12:45:42 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre
   Query 7 - 2022-12-16 12:45:42 [3.87ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2022-12-16 12:45:43 [22.89ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2022-12-16 12:45:43 [3.93ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2022-12-16 12:45:43 [4.11ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2022-12-16 12:45:43 [3.96ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2022-12-16 12:45:43 [4.01ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2022-12-16 12:45:43 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2022-12-16 12:45:43 [3.8ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:45:44 [21.8ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:45:44 [4.7ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:45:44 [4.17ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:45:44 [4.19ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:45:45 [6.06ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:45:45 [77.75ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:45:45 [37.83ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2022-12-16 12:45:59 [21.1ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2022-12-16 12:45:59 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2022-12-16 12:45:59 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2022-12-16 12:45:59 [3.88ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2022-12-16 12:45:59 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2022-12-16 12:45:59 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2022-12-16 12:45:59 [3.92ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 12:46:06 [24.1ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:46:06 [27.23ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 12:46:06 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:46:06 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 12:46:06 [4.38ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:46:06 [4.62ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 12:46:06 [4.32ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:46:06 [4.07ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 12:46:06 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:46:06 [3.98ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 12:46:06 [4.06ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:46:06 [5.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:46:06 [4.97ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 12:46:06 [15.08ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 12:46:06 [4.04ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 12:46:06 [3.93ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 12:46:06 [3.81ms] */
select * from `plans` where `plans`.`id` in (0);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 12:46:06 [3.93ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:57:00 [126.39ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:57:00 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:57:00 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:57:00 [3.9ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:57:00 [3.83ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:57:00 [3.74ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:57:00 [4.12ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:57:05 [24.08ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:57:05 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:57:05 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:57:05 [4.07ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:57:05 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:57:05 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 1 - 2022-12-16 12:57:05 [20.36ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:57:05 [4.79ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 2 - 2022-12-16 12:57:05 [5.26ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 3 - 2022-12-16 12:57:05 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 4 - 2022-12-16 12:57:05 [3.98ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 5 - 2022-12-16 12:57:05 [4.04ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 6 - 2022-12-16 12:57:05 [3.8ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 7 - 2022-12-16 12:57:05 [4.02ms] */
select * from `plans` where `id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 8 - 2022-12-16 12:57:05 [4.06ms] */
select * from `permissions`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 9 - 2022-12-16 12:57:05 [6.8ms] */
select `roles`.*, `role_has_permissions`.`permission_id` as `pivot_permission_id`, `role_has_permissions`.`role_id` as `pivot_role_id` from `roles` inner join `role_has_permissions` on `roles`.`id` = `role_has_permissions`.`role_id` where `role_has_permissions`.`permission_id` in (11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 10 - 2022-12-16 12:57:05 [4.05ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 1 - 2022-12-16 12:57:10 [36.14ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 2 - 2022-12-16 12:57:10 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 3 - 2022-12-16 12:57:10 [3.99ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 4 - 2022-12-16 12:57:10 [3.9ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 5 - 2022-12-16 12:57:10 [3.8ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 6 - 2022-12-16 12:57:10 [3.79ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 7 - 2022-12-16 12:57:10 [3.93ms] */
select * from `plans` where `id` = 2 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 8 - 2022-12-16 12:57:10 [4ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:57:10 [22.56ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:57:10 [3.97ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:57:10 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:57:10 [5.65ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:57:10 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:57:10 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:57:10 [3.99ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:57:16 [20.5ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 1 - 2022-12-16 12:57:16 [22.73ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:57:16 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 2 - 2022-12-16 12:57:16 [4.52ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:57:16 [3.73ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 3 - 2022-12-16 12:57:16 [3.7ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:57:16 [3.82ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 4 - 2022-12-16 12:57:16 [3.86ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:57:16 [3.71ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 5 - 2022-12-16 12:57:16 [3.69ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:57:16 [3.78ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 6 - 2022-12-16 12:57:16 [3.72ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 7 - 2022-12-16 12:57:16 [3.97ms] */
select * from `plans` where `id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:57:16 [7.46ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 8 - 2022-12-16 12:57:16 [3.94ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:57:20 [19.96ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:57:20 [4.01ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:57:20 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:57:20 [3.89ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:57:20 [3.82ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:57:20 [3.8ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:57:20 [5.15ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 1 - 2022-12-16 12:57:24 [22.19ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:57:24 [22.36ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 2 - 2022-12-16 12:57:24 [3.82ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:57:24 [3.78ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 3 - 2022-12-16 12:57:24 [3.69ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:57:24 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 4 - 2022-12-16 12:57:24 [4.08ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:57:24 [3.84ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 5 - 2022-12-16 12:57:24 [3.73ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:57:24 [3.7ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 6 - 2022-12-16 12:57:24 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:57:24 [4.54ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:57:24 [4.01ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 7 - 2022-12-16 12:57:24 [5.82ms] */
select * from `plans` where `id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 8 - 2022-12-16 12:57:24 [3.98ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:57:29 [20.65ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:57:29 [3.81ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:57:29 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:57:29 [4.01ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:57:29 [3.81ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:57:29 [3.72ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:57:29 [4.85ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 1 - 2022-12-16 12:58:03 [22.98ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:58:03 [23.28ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 2 - 2022-12-16 12:58:03 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:58:03 [3.8ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 3 - 2022-12-16 12:58:03 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:58:03 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 4 - 2022-12-16 12:58:03 [4.12ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:58:03 [4.16ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 5 - 2022-12-16 12:58:03 [4.24ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:58:03 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 6 - 2022-12-16 12:58:03 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:58:03 [4.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 7 - 2022-12-16 12:58:03 [4.33ms] */
select * from `plans` where `id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:58:03 [4.44ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 8 - 2022-12-16 12:58:03 [4.63ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 1 - 2022-12-16 12:58:04 [20.75ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 2 - 2022-12-16 12:58:04 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 3 - 2022-12-16 12:58:04 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 4 - 2022-12-16 12:58:04 [4.02ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 5 - 2022-12-16 12:58:04 [4.01ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 6 - 2022-12-16 12:58:04 [3.75ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 7 - 2022-12-16 12:58:04 [3.95ms] */
select * from `plans` where `id` = 2 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 8 - 2022-12-16 12:58:04 [3.97ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:58:05 [21.06ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:58:05 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:58:05 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:58:05 [4.05ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:58:05 [4.02ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:58:05 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:58:05 [3.98ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 12:58:07 [22.03ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 1 - 2022-12-16 12:58:07 [24.58ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 12:58:07 [4.19ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 2 - 2022-12-16 12:58:07 [3.83ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 12:58:07 [4.13ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 3 - 2022-12-16 12:58:07 [4.55ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 12:58:07 [3.97ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 4 - 2022-12-16 12:58:07 [3.87ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 12:58:07 [4.26ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 5 - 2022-12-16 12:58:07 [4.05ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 12:58:07 [4.2ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 6 - 2022-12-16 12:58:07 [5.19ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 12:58:07 [5.07ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 7 - 2022-12-16 12:58:07 [4.85ms] */
select * from `plans` where `id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 8 - 2022-12-16 12:58:07 [4.62ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 12:58:45 [21.32ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 12:58:45 [4.75ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 12:58:45 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 12:58:45 [3.89ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 12:58:45 [3.82ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 12:58:45 [3.77ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 12:58:45 [3.93ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 13:01:23 [22.08ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 13:01:23 [4.03ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 13:01:23 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 13:01:23 [4.36ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 13:01:23 [5.37ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 13:01:23 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 13:01:23 [4.11ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 13:01:23 [3.91ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 13:01:23 [4.03ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 13:01:23 [19.82ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 13:01:23 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 13:01:23 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 13:01:23 [4.15ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 13:01:23 [3.97ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 13:01:23 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 13:01:23 [4ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 13:07:02 [23.04ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 13:07:02 [22.71ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 13:07:02 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 13:07:02 [4.36ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 13:07:02 [3.8ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 13:07:02 [3.8ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 13:07:02 [3.95ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 13:07:02 [3.98ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 13:07:02 [3.93ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 13:07:02 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 13:07:02 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 13:07:02 [4.5ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 13:07:02 [5.38ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 13:07:02 [14.68ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 13:07:02 [4.2ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 13:07:02 [3.98ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 13:07:02 [3.89ms] */
select * from `plans` where `plans`.`id` in (0);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 13:07:02 [3.93ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1);
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 13:07:32 [22.61ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 13:07:32 [3.98ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 13:07:32 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 13:07:32 [4.02ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 13:07:32 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 13:07:32 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 13:07:32 [3.91ms] */
select count(*) as aggregate from `users` where `email` = 'nhung.tth@digidinos.com' and `id` <> 0;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 13:07:32 [6.8ms] */
insert into `users` (`company_name`, `code`, `email`, `website`, `representative`, `address`, `mobile_no`, `plan_id`, `plan_start_date`, `role_type`, `password`, `page_search_number`, `profile_view_number`, `export_csv_number`, `campaign_register_number`, `updated_at`, `created_at`) values ('DD', 11, 'nhung.tth@digidinos.com', 'digidinos.com', 'NhungTTH', 'HN', 0867951297, 2, '2022-12-16', 2, 'y$LC6QXA/CAKPfJf9HpISVAev4giHP/wiyEkPxJDJgVgSHyUbNHfYBi', 0, 0, 0, 0, '2022-12-16 13:07:32', '2022-12-16 13:07:32');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 13:07:32 [4.02ms] */
select * from `plans` where `plans`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 13:07:32 [7.23ms] */
insert into `payment_details` (`user_id`, `plan_id`, `money_amount`, `start_date`, `end_date`, `page_search_number`, `profile_view_number`, `export_csv_number`, `campaign_register_number`, `payment_status`, `updated_at`, `created_at`) values (11, 2, 10000, '2022-12-16 00:00:00', '2032-12-16 00:00:00', 200, 0, 0, 0, 1, '2022-12-16 13:07:32', '2022-12-16 13:07:32');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 13:07:32 [4.03ms] */
select * from `payment_details` where `payment_details`.`user_id` = 11 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 13:07:32 [22.47ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 13:07:32 [20.2ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 13:07:32 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 13:07:32 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 13:07:32 [5.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 13:07:32 [6.68ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 13:07:32 [4.05ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 13:07:32 [4.18ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 13:07:32 [3.75ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 13:07:32 [3.73ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 13:07:32 [3.7ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 13:07:32 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 13:07:32 [4.05ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 13:07:32 [19ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 13:07:32 [4.35ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 13:07:32 [4.12ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 13:07:32 [3.97ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 13:07:32 [3.9ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 1 - 2022-12-16 13:07:39 [22.24ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 2 - 2022-12-16 13:07:39 [4.1ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 3 - 2022-12-16 13:07:40 [13.58ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 4 - 2022-12-16 13:07:40 [42.8ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 5 - 2022-12-16 13:07:40 [45.94ms] */
select * from `oauth_access_tokens` where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 6 - 2022-12-16 13:07:40 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 7 - 2022-12-16 13:07:40 [8.19ms] */
update `oauth_access_tokens` set `revoked` = 1 where `id` = '69122d0a155e91c57aace94457fd2055fe877513391a99e08dcba32f9834e0bf993930c0878be1b9';
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 1 - 2022-12-16 13:07:51 [21.21ms] */
select * from `users` where `email` = 'nhung.tth@digidinos.com' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 2 - 2022-12-16 13:07:51 [4.07ms] */
select exists(select * from `oauth_personal_access_clients`) as `exists`;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 3 - 2022-12-16 13:07:51 [3.97ms] */
select * from `oauth_personal_access_clients` order by `id` desc limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 4 - 2022-12-16 13:07:51 [3.96ms] */
select * from `oauth_clients` where `oauth_clients`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 5 - 2022-12-16 13:07:51 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 6 - 2022-12-16 13:07:51 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 7 - 2022-12-16 13:07:51 [6.26ms] */
insert into `oauth_access_tokens` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) values ('0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65', 11, 1, '[]', 0, '2022-12-16 13:07:51', '2022-12-16 13:07:51', '2022-12-31 13:07:51');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 8 - 2022-12-16 13:07:51 [4ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 9 - 2022-12-16 13:07:51 [7.16ms] */
update `oauth_access_tokens` set `name` = 'nhung.tth@digidinos.com' where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 13:07:52 [19.95ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 13:07:52 [4ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 13:07:52 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 13:07:52 [3.9ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 13:07:52 [4.84ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 13:07:52 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 13:07:52 [4.06ms] */
select * from `menus` where `title` in ('module.kol', 'module.insight-list', 'module.campaign', 'module.setting') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 13:07:52 [3.83ms] */
select * from `menus` where `menus`.`parent_id` in (1, 2, 3, 9) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 13:07:52 [4.1ms] */
select * from `payment_details` where `payment_details`.`user_id` = 11 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-16 13:07:52 [22.07ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-16 13:07:53 [4.93ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-16 13:07:53 [4.45ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-16 13:07:53 [4.38ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-16 13:07:53 [6.65ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-16 13:07:53 [4.01ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-16 13:07:53 [4.03ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-16 13:07:53 [10.12ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 9 - 2022-12-16 13:07:53 [4.09ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 10 - 2022-12-16 13:07:53 [5.95ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 11 - 2022-12-16 13:07:53 [6.4ms] */
insert into `statistics` (`user_id`, `month`, `account_search_number`, `page_search_number`, `profile_view_number`, `full_report_number`, `export_csv_number`, `campaign_register_number`, `insight_list_number`, `campaign_list_number`, `updated_at`, `created_at`) values (11, 202212, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 13:07:53', '2022-12-16 13:07:53');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 12 - 2022-12-16 13:07:53 [7.98ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1671196073, 1671196073, '{"uuid":"1009071d-bb81-487a-b12d-be23cf751a6d","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:13:{i:0;a:3:{s:5:\"basic\";a:3:{s:8:\"username\";s:4:\"nasa\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:197:\"https:\/\/scontent-arn2-1.cdninstagram.com\/vp\/fa66adc26aefbb03ca111c7688732f6a\/5E5FEDED\/t51.2885-19\/s150x150\/29090066_159271188110124_1152068159029641216_n.jpg?_nc_ht=scontent-arn2-1.cdninstagram.com\";}s:7:\"metrics\";a:5:{s:16:\"engagement_count\";d:794423.5884;s:2:\"er\";d:1.56;s:17:\"subscribers_count\";i:50924589;s:22:\"real_subscribers_count\";i:43917365;s:22:\"subscribers_growth_prc\";i:0;}s:8:\"features\";a:5:{s:15:\"social_networks\";a:0:{}s:14:\"blogger_topics\";a:2:{i:0;i:228;i:1;i:286;}s:17:\"blogger_thematics\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}s:3:\"aqs\";O:8:\"stdClass\":1:{s:4:\"mark\";s:4:\"good\";}}}i:1;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"taylorswift\";s:5:\"title\";s:12:\"Taylor Swift\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/11830955.jpg?w=320&till=1674097390&sign=137754e01b6fc9edb9e2d0f55f1429db\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}i:2;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"vancityreynolds\";s:5:\"title\";s:13:\"Ryan Reynolds\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1942463581.jpg?w=320&till=1674098165&sign=08e3f95d387c94b52126b825223f87ac\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"45857334\";s:2:\"er\";s:4:\"1.18\";s:16:\"engagement_count\";d:541116.5412;}}i:3;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:14:\"kevinhart4real\";s:5:\"title\";s:10:\"Kevin Hart\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6590609.jpg?w=320&till=1674098245&sign=428fb2be77bad0c8877398d37bad82f2\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"155039259\";s:2:\"er\";s:4:\"0.09\";s:16:\"engagement_count\";d:139535.3331;}}i:4;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"supersaf\";s:5:\"title\";s:8:\"SuperSaf\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/41428916.jpg?w=320&till=1674098340&sign=f440bcef026a9f129e335890f2377568\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"529231\";s:2:\"er\";s:4:\"1.83\";s:16:\"engagement_count\";d:9684.9273;}}i:5;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"selenagomez\";s:5:\"title\";s:12:\"Selena Gomez\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/460563723.jpg?w=320&till=1674098404&sign=6d026056d3295fff26a3ce2f51b6882a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"351492414\";s:2:\"er\";s:3:\"0.7\";s:16:\"engagement_count\";d:2460446.8979999996;}}i:6;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"pepamack\";s:5:\"title\";s:5:\"Petra\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/316719376.jpg?w=320&till=1674098485&sign=4e212d5d81a82b91a3236c928b0a6bd0\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:7:\"1051585\";s:2:\"er\";s:8:\"0.749461\";s:16:\"engagement_count\";d:7881.219456850001;}}i:7;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"kendalljenner\";s:5:\"title\";s:7:\"Kendall\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6380930.jpg?w=320&till=1674098702&sign=9866747cb6e12bd123b2c35133f6b619\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"260554636\";s:2:\"er\";s:4:\"0.89\";s:16:\"engagement_count\";d:2318936.2604;}}i:8;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"fcbarcelona\";s:5:\"title\";s:12:\"FC Barcelona\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/260375673.jpg?w=320&till=1674098749&sign=ef7d691b7d2d6d17045fa5cceb7fc471\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"112673770\";s:2:\"er\";s:4:\"0.34\";s:16:\"engagement_count\";d:383090.818;}}i:9;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"theshilpashetty\";s:5:\"title\";s:20:\"Shilpa Shetty Kundra\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1904097264.jpg?w=320&till=1674098825&sign=89b6ea598b251337fe1b310bb3cbd845\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"26807344\";s:2:\"er\";s:4:\"0.56\";s:16:\"engagement_count\";d:150121.1264;}}i:10;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"tarynwilliams\";s:5:\"title\";s:14:\"Taryn Williams\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/40507182.jpg?w=320&till=1674098881&sign=0fe2726db44d64e4248add6d6645e24a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:5:\"22017\";s:2:\"er\";s:4:\"0.83\";s:16:\"engagement_count\";d:182.7411;}}i:11;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:10:\"kobebryant\";s:5:\"title\";s:11:\"Kobe Bryant\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/351564405.jpg?w=320&till=1674100243&sign=cdbbac85a243afd7f765504d660fabae\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"21107168\";s:2:\"er\";s:4:\"7.31\";s:16:\"engagement_count\";d:1542933.9808;}}i:12;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"nathanwpyle\";s:5:\"title\";s:13:\"Nathan W Pyle\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/213194044.jpg?w=320&till=1674100064&sign=b69916f1d77dded42cacf303d332bb0d\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"626007\";s:2:\"er\";s:4:\"5.31\";s:16:\"engagement_count\";d:33240.971699999995;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:1;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 13 - 2022-12-16 13:07:53 [5.05ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 11 and `k`.`username` in ('nasa', 'taylorswift', 'vancityreynolds', 'kevinhart4real', 'supersaf', 'selenagomez', 'pepamack', 'kendalljenner', 'fcbarcelona', 'theshilpashetty', 'tarynwilliams', 'kobebryant', 'nathanwpyle');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-16 13:07:54 [20.03ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-16 13:07:54 [3.95ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-16 13:07:54 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-16 13:07:54 [4.01ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-16 13:07:54 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-16 13:07:54 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2022-12-16 13:07:54 [4.35ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 11 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-16 13:07:58 [21.97ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-16 13:07:58 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-16 13:07:58 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-16 13:07:58 [3.94ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-16 13:07:58 [3.8ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-16 13:07:58 [11.14ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-16 13:07:58 [3.97ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-16 13:07:58 [4.27ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 9 - 2022-12-16 13:07:58 [4.02ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 10 - 2022-12-16 13:07:58 [4.81ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 11 - 2022-12-16 13:07:59 [6.81ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1671196079, 1671196079, '{"uuid":"24286870-fe0f-40bd-9a62-4de72ec998d2","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:1:{i:0;a:3:{s:5:\"basic\";a:5:{s:2:\"id\";s:24:\"UCLA_DiR1FfKNvjuUpBHmylQ\";s:8:\"username\";s:14:\"NASAtelevision\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:96:\"https:\/\/yt3.ggpht.com\/a\/AGF-l7-ftrZQ3lNBQnSCTvbUkAPpjPumepat4S0wGg=s900-c-k-c0xffffffff-no-rj-mo\";s:13:\"category_name\";s:20:\"Science & Technology\";}s:7:\"metrics\";a:1:{s:17:\"subscribers_count\";i:4754873;}s:8:\"features\";a:2:{s:15:\"social_networks\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:2;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 12 - 2022-12-16 13:07:59 [4.47ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 11 and `k`.`username` in ('NASAtelevision');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 1 - 2022-12-16 13:07:59 [20.34ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 2 - 2022-12-16 13:07:59 [4.13ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 3 - 2022-12-16 13:07:59 [4.06ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 4 - 2022-12-16 13:07:59 [4.05ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 5 - 2022-12-16 13:07:59 [3.98ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 6 - 2022-12-16 13:07:59 [4.01ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 7 - 2022-12-16 13:07:59 [4.11ms] */
select * from `campaigns` where `social_type` = 2 and `user_id` = 11 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-16 13:08:03 [22.8ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-16 13:08:03 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-16 13:08:03 [4.06ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-16 13:08:03 [4.04ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-16 13:08:03 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-16 13:08:03 [4.07ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-16 13:08:03 [4.39ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-16 13:08:03 [5.29ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 9 - 2022-12-16 13:08:03 [4.06ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 10 - 2022-12-16 13:08:03 [4.12ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 11 - 2022-12-16 13:08:04 [7.12ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1671196084, 1671196084, '{"uuid":"c9d67eb1-589d-4042-a487-fdd48df9c603","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:2:{i:0;a:3:{s:5:\"basic\";a:5:{s:2:\"id\";s:24:\"UCLA_DiR1FfKNvjuUpBHmylQ\";s:8:\"username\";s:14:\"NASAtelevision\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:96:\"https:\/\/yt3.ggpht.com\/a\/AGF-l7-ftrZQ3lNBQnSCTvbUkAPpjPumepat4S0wGg=s900-c-k-c0xffffffff-no-rj-mo\";s:13:\"category_name\";s:20:\"Science & Technology\";}s:7:\"metrics\";a:4:{s:2:\"er\";i:0;s:17:\"subscribers_count\";i:4754873;s:11:\"likes_count\";i:0;s:9:\"views_avg\";i:0;}s:8:\"features\";a:2:{s:15:\"social_networks\";a:0:{}s:12:\"audience_geo\";a:1:{s:9:\"countries\";s:0:\"\";}}}i:1;a:2:{s:5:\"basic\";a:4:{s:2:\"id\";s:19:\"6557821753438371845\";s:8:\"username\";s:9:\"littlebig\";s:5:\"title\";s:9:\"littlebig\";s:10:\"avatar_url\";s:127:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/user\/6557821753438371845.jpg?w=150&till=1670050800&sign=7d4da05e2c860e1f20ad227d0c50dc8e\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:3;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 12 - 2022-12-16 13:08:04 [4.35ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 11 and `k`.`username` in ('NASAtelevision', 'littlebig');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 1 - 2022-12-16 13:08:04 [21.57ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 2 - 2022-12-16 13:08:04 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 3 - 2022-12-16 13:08:04 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 4 - 2022-12-16 13:08:04 [4.05ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 5 - 2022-12-16 13:08:04 [3.95ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 6 - 2022-12-16 13:08:04 [4.14ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 7 - 2022-12-16 13:08:04 [4.04ms] */
select * from `campaigns` where `social_type` = 3 and `user_id` = 11 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 1 - 2022-12-16 13:08:07 [20.69ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 2 - 2022-12-16 13:08:07 [4.21ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 3 - 2022-12-16 13:08:07 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 4 - 2022-12-16 13:08:07 [3.97ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 5 - 2022-12-16 13:08:07 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 6 - 2022-12-16 13:08:07 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 7 - 2022-12-16 13:08:07 [4.08ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 8 - 2022-12-16 13:08:07 [4.28ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 9 - 2022-12-16 13:08:07 [4.09ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 10 - 2022-12-16 13:08:07 [4.08ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 1 - 2022-12-16 13:08:08 [21.08ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 2 - 2022-12-16 13:08:08 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 3 - 2022-12-16 13:08:08 [4.1ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 4 - 2022-12-16 13:08:08 [3.91ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 5 - 2022-12-16 13:08:08 [3.97ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 6 - 2022-12-16 13:08:08 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 7 - 2022-12-16 13:08:08 [4.91ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 8 - 2022-12-16 13:08:08 [4.28ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 9 - 2022-12-16 13:08:08 [4ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 10 - 2022-12-16 13:08:08 [4.73ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 1 - 2022-12-16 13:08:10 [21.54ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 2 - 2022-12-16 13:08:10 [4.01ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 3 - 2022-12-16 13:08:10 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 4 - 2022-12-16 13:08:10 [4.1ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 5 - 2022-12-16 13:08:10 [3.96ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 6 - 2022-12-16 13:08:10 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 7 - 2022-12-16 13:08:10 [4.22ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 8 - 2022-12-16 13:08:10 [4.29ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 9 - 2022-12-16 13:08:10 [3.93ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 10 - 2022-12-16 13:08:10 [4.02ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-16 13:08:13 [21.9ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-16 13:08:13 [5.14ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-16 13:08:13 [4.02ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-16 13:08:13 [4.09ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-16 13:08:13 [4.27ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-16 13:08:13 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-16 13:08:13 [4.09ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-16 13:08:13 [4.6ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 9 - 2022-12-16 13:08:13 [3.99ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 10 - 2022-12-16 13:08:13 [4.21ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 11 - 2022-12-16 13:08:13 [6.65ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1671196093, 1671196093, '{"uuid":"4ff2cb0f-fcd4-455e-9f42-8901210af680","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:1:{i:0;a:3:{s:5:\"basic\";a:5:{s:2:\"id\";s:24:\"UCLA_DiR1FfKNvjuUpBHmylQ\";s:8:\"username\";s:14:\"NASAtelevision\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:96:\"https:\/\/yt3.ggpht.com\/a\/AGF-l7-ftrZQ3lNBQnSCTvbUkAPpjPumepat4S0wGg=s900-c-k-c0xffffffff-no-rj-mo\";s:13:\"category_name\";s:20:\"Science & Technology\";}s:7:\"metrics\";a:1:{s:17:\"subscribers_count\";i:4754873;}s:8:\"features\";a:2:{s:15:\"social_networks\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:2;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 12 - 2022-12-16 13:08:13 [4.34ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 11 and `k`.`username` in ('NASAtelevision');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 1 - 2022-12-16 13:08:14 [21.47ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 2 - 2022-12-16 13:08:14 [3.96ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 3 - 2022-12-16 13:08:14 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 4 - 2022-12-16 13:08:14 [4.25ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 5 - 2022-12-16 13:08:14 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 6 - 2022-12-16 13:08:14 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 7 - 2022-12-16 13:08:14 [4.43ms] */
select * from `campaigns` where `social_type` = 2 and `user_id` = 11 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 1 - 2022-12-16 13:08:17 [22.54ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 2 - 2022-12-16 13:08:17 [4.04ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 3 - 2022-12-16 13:08:17 [4.12ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 4 - 2022-12-16 13:08:17 [4.22ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 5 - 2022-12-16 13:08:17 [4.26ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 6 - 2022-12-16 13:08:17 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 7 - 2022-12-16 13:08:17 [4.07ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 8 - 2022-12-16 13:08:17 [4.12ms] */
select * from `statistics` where `statistics`.`user_id` in (11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 9 - 2022-12-16 13:08:17 [4.11ms] */
select * from `payment_details` where `payment_details`.`user_id` = 11 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-16 13:08:19 [23.02ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-16 13:08:19 [3.95ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-16 13:08:19 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-16 13:08:19 [4.13ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-16 13:08:19 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-16 13:08:19 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-16 13:08:19 [4.09ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-16 13:08:19 [4.33ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 9 - 2022-12-16 13:08:19 [4.01ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 10 - 2022-12-16 13:08:19 [5.01ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 11 - 2022-12-16 13:08:20 [7.37ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1671196100, 1671196100, '{"uuid":"a50d5ea3-4d83-44d0-89b1-4f49460bbb13","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:13:{i:0;a:3:{s:5:\"basic\";a:3:{s:8:\"username\";s:4:\"nasa\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:197:\"https:\/\/scontent-arn2-1.cdninstagram.com\/vp\/fa66adc26aefbb03ca111c7688732f6a\/5E5FEDED\/t51.2885-19\/s150x150\/29090066_159271188110124_1152068159029641216_n.jpg?_nc_ht=scontent-arn2-1.cdninstagram.com\";}s:7:\"metrics\";a:5:{s:16:\"engagement_count\";d:794423.5884;s:2:\"er\";d:1.56;s:17:\"subscribers_count\";i:50924589;s:22:\"real_subscribers_count\";i:43917365;s:22:\"subscribers_growth_prc\";i:0;}s:8:\"features\";a:5:{s:15:\"social_networks\";a:0:{}s:14:\"blogger_topics\";a:2:{i:0;i:228;i:1;i:286;}s:17:\"blogger_thematics\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}s:3:\"aqs\";O:8:\"stdClass\":1:{s:4:\"mark\";s:4:\"good\";}}}i:1;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"taylorswift\";s:5:\"title\";s:12:\"Taylor Swift\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/11830955.jpg?w=320&till=1674097390&sign=137754e01b6fc9edb9e2d0f55f1429db\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}i:2;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"vancityreynolds\";s:5:\"title\";s:13:\"Ryan Reynolds\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1942463581.jpg?w=320&till=1674098165&sign=08e3f95d387c94b52126b825223f87ac\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"45857334\";s:2:\"er\";s:4:\"1.18\";s:16:\"engagement_count\";d:541116.5412;}}i:3;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:14:\"kevinhart4real\";s:5:\"title\";s:10:\"Kevin Hart\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6590609.jpg?w=320&till=1674098245&sign=428fb2be77bad0c8877398d37bad82f2\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"155039259\";s:2:\"er\";s:4:\"0.09\";s:16:\"engagement_count\";d:139535.3331;}}i:4;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"supersaf\";s:5:\"title\";s:8:\"SuperSaf\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/41428916.jpg?w=320&till=1674098340&sign=f440bcef026a9f129e335890f2377568\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"529231\";s:2:\"er\";s:4:\"1.83\";s:16:\"engagement_count\";d:9684.9273;}}i:5;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"selenagomez\";s:5:\"title\";s:12:\"Selena Gomez\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/460563723.jpg?w=320&till=1674098404&sign=6d026056d3295fff26a3ce2f51b6882a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"351492414\";s:2:\"er\";s:3:\"0.7\";s:16:\"engagement_count\";d:2460446.8979999996;}}i:6;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"pepamack\";s:5:\"title\";s:5:\"Petra\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/316719376.jpg?w=320&till=1674098485&sign=4e212d5d81a82b91a3236c928b0a6bd0\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:7:\"1051585\";s:2:\"er\";s:8:\"0.749461\";s:16:\"engagement_count\";d:7881.219456850001;}}i:7;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"kendalljenner\";s:5:\"title\";s:7:\"Kendall\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6380930.jpg?w=320&till=1674098702&sign=9866747cb6e12bd123b2c35133f6b619\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"260554636\";s:2:\"er\";s:4:\"0.89\";s:16:\"engagement_count\";d:2318936.2604;}}i:8;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"fcbarcelona\";s:5:\"title\";s:12:\"FC Barcelona\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/260375673.jpg?w=320&till=1674098749&sign=ef7d691b7d2d6d17045fa5cceb7fc471\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"112673770\";s:2:\"er\";s:4:\"0.34\";s:16:\"engagement_count\";d:383090.818;}}i:9;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"theshilpashetty\";s:5:\"title\";s:20:\"Shilpa Shetty Kundra\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1904097264.jpg?w=320&till=1674098825&sign=89b6ea598b251337fe1b310bb3cbd845\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"26807344\";s:2:\"er\";s:4:\"0.56\";s:16:\"engagement_count\";d:150121.1264;}}i:10;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"tarynwilliams\";s:5:\"title\";s:14:\"Taryn Williams\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/40507182.jpg?w=320&till=1674098881&sign=0fe2726db44d64e4248add6d6645e24a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:5:\"22017\";s:2:\"er\";s:4:\"0.83\";s:16:\"engagement_count\";d:182.7411;}}i:11;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:10:\"kobebryant\";s:5:\"title\";s:11:\"Kobe Bryant\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/351564405.jpg?w=320&till=1674100243&sign=cdbbac85a243afd7f765504d660fabae\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"21107168\";s:2:\"er\";s:4:\"7.31\";s:16:\"engagement_count\";d:1542933.9808;}}i:12;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"nathanwpyle\";s:5:\"title\";s:13:\"Nathan W Pyle\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/213194044.jpg?w=320&till=1674100064&sign=b69916f1d77dded42cacf303d332bb0d\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"626007\";s:2:\"er\";s:4:\"5.31\";s:16:\"engagement_count\";d:33240.971699999995;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:1;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 12 - 2022-12-16 13:08:20 [4.34ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 11 and `k`.`username` in ('nasa', 'taylorswift', 'vancityreynolds', 'kevinhart4real', 'supersaf', 'selenagomez', 'pepamack', 'kendalljenner', 'fcbarcelona', 'theshilpashetty', 'tarynwilliams', 'kobebryant', 'nathanwpyle');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-16 13:08:20 [20.65ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-16 13:08:20 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-16 13:08:20 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-16 13:08:20 [4.24ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-16 13:08:20 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-16 13:08:20 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2022-12-16 13:08:20 [4.14ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 11 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-16 13:08:21 [20.1ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-16 13:08:21 [3.93ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-16 13:08:21 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-16 13:08:21 [4.03ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-16 13:08:21 [3.97ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-16 13:08:21 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-16 13:08:21 [4.03ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-16 13:08:21 [4.32ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 9 - 2022-12-16 13:08:21 [4.01ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 10 - 2022-12-16 13:08:21 [4.03ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 11 - 2022-12-16 13:08:21 [7.13ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1671196101, 1671196101, '{"uuid":"a6d63f7f-e5fe-457e-81ff-1ffc4e01fa5c","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:2:{i:0;a:3:{s:5:\"basic\";a:5:{s:2:\"id\";s:24:\"UCLA_DiR1FfKNvjuUpBHmylQ\";s:8:\"username\";s:14:\"NASAtelevision\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:96:\"https:\/\/yt3.ggpht.com\/a\/AGF-l7-ftrZQ3lNBQnSCTvbUkAPpjPumepat4S0wGg=s900-c-k-c0xffffffff-no-rj-mo\";s:13:\"category_name\";s:20:\"Science & Technology\";}s:7:\"metrics\";a:4:{s:2:\"er\";i:0;s:17:\"subscribers_count\";i:4754873;s:11:\"likes_count\";i:0;s:9:\"views_avg\";i:0;}s:8:\"features\";a:2:{s:15:\"social_networks\";a:0:{}s:12:\"audience_geo\";a:1:{s:9:\"countries\";s:0:\"\";}}}i:1;a:2:{s:5:\"basic\";a:4:{s:2:\"id\";s:19:\"6557821753438371845\";s:8:\"username\";s:9:\"littlebig\";s:5:\"title\";s:9:\"littlebig\";s:10:\"avatar_url\";s:127:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/user\/6557821753438371845.jpg?w=150&till=1670050800&sign=7d4da05e2c860e1f20ad227d0c50dc8e\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:3;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 12 - 2022-12-16 13:08:22 [4.39ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 11 and `k`.`username` in ('NASAtelevision', 'littlebig');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 1 - 2022-12-16 13:08:22 [23.18ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 2 - 2022-12-16 13:08:22 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 3 - 2022-12-16 13:08:22 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 4 - 2022-12-16 13:08:22 [3.96ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 5 - 2022-12-16 13:08:22 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 6 - 2022-12-16 13:08:22 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 7 - 2022-12-16 13:08:22 [4.45ms] */
select * from `campaigns` where `social_type` = 3 and `user_id` = 11 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 1 - 2022-12-16 13:08:23 [21.9ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 2 - 2022-12-16 13:08:23 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 3 - 2022-12-16 13:08:23 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 4 - 2022-12-16 13:08:23 [4.15ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 5 - 2022-12-16 13:08:23 [5.92ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 6 - 2022-12-16 13:08:23 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 7 - 2022-12-16 13:08:23 [3.92ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 8 - 2022-12-16 13:08:23 [5.08ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 9 - 2022-12-16 13:08:23 [4.07ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 10 - 2022-12-16 13:08:23 [3.89ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 1 - 2022-12-16 13:08:24 [20.9ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 2 - 2022-12-16 13:08:24 [3.96ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 3 - 2022-12-16 13:08:24 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 4 - 2022-12-16 13:08:24 [4.17ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 5 - 2022-12-16 13:08:24 [3.95ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 6 - 2022-12-16 13:08:24 [3.99ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 7 - 2022-12-16 13:08:24 [5.44ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 8 - 2022-12-16 13:08:24 [4.45ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 9 - 2022-12-16 13:08:24 [4.08ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 10 - 2022-12-16 13:08:24 [4.12ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 1 - 2022-12-16 13:09:03 [22.43ms] */
select * from `users` where `email` = 'admin@admin.com' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 2 - 2022-12-16 13:09:03 [4.15ms] */
select exists(select * from `oauth_personal_access_clients`) as `exists`;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 3 - 2022-12-16 13:09:03 [3.82ms] */
select * from `oauth_personal_access_clients` order by `id` desc limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 4 - 2022-12-16 13:09:03 [3.89ms] */
select * from `oauth_clients` where `oauth_clients`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 5 - 2022-12-16 13:09:03 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 6 - 2022-12-16 13:09:03 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 7 - 2022-12-16 13:09:03 [7.86ms] */
insert into `oauth_access_tokens` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) values ('e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b', 1, 1, '[]', 0, '2022-12-16 13:09:03', '2022-12-16 13:09:03', '2022-12-31 13:09:03');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 8 - 2022-12-16 13:09:03 [5.15ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 9 - 2022-12-16 13:09:03 [6.07ms] */
update `oauth_access_tokens` set `name` = 'admin@admin.com' where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 13:09:03 [20.97ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 13:09:03 [4.05ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 13:09:03 [4.02ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 13:09:03 [4.13ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 13:09:03 [3.89ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 13:09:03 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 13:09:03 [4.51ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 13:09:03 [3.95ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 13:09:03 [4.96ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 13:09:04 [23.44ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 13:09:04 [4.06ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 13:09:04 [4.01ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 13:09:04 [20.35ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 13:09:04 [4.02ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 13:09:04 [4.21ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 13:09:04 [4.23ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 13:09:04 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 13:09:04 [5.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 13:09:04 [4.91ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 13:09:04 [7.7ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 13:09:04 [18.31ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 13:09:04 [5.5ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 13:09:04 [5.26ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 13:09:04 [6.12ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 13:09:04 [4.32ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 13:09:04 [4.03ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 13:09:04 [4.55ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 13:09:04 [20.64ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 13:09:04 [4.02ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 13:09:04 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 13:09:04 [4.18ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 13:09:04 [4.01ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 13:09:04 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 13:09:04 [4.27ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 13:09:06 [20.91ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 1 - 2022-12-16 13:09:06 [21.61ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 13:09:06 [4.16ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 2 - 2022-12-16 13:09:06 [4.13ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 13:09:06 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 3 - 2022-12-16 13:09:06 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 13:09:06 [5.05ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 4 - 2022-12-16 13:09:06 [4.81ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 13:09:06 [3.88ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 5 - 2022-12-16 13:09:06 [3.92ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 13:09:06 [4.11ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 6 - 2022-12-16 13:09:06 [4.33ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 13:09:06 [3.97ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 7 - 2022-12-16 13:09:06 [4.26ms] */
select * from `plans` where `id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan/2
   Query 8 - 2022-12-16 13:09:06 [4.1ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 1 - 2022-12-16 13:09:13 [21.45ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 2 - 2022-12-16 13:09:13 [4.05ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 3 - 2022-12-16 13:09:13 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 4 - 2022-12-16 13:09:13 [4.09ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 5 - 2022-12-16 13:09:13 [3.94ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 6 - 2022-12-16 13:09:13 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 7 - 2022-12-16 13:09:13 [3.95ms] */
select * from `plans` where `id` = 2 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 8 - 2022-12-16 13:09:13 [4.26ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/plan/2
   Query 9 - 2022-12-16 13:09:13 [7.07ms] */
update `plans` set `profile_view_number` = 100, `export_csv_number` = 100, `campaign_register_number` = 100, `plans`.`updated_at` = '2022-12-16 13:09:13' where `id` = 2;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2022-12-16 13:09:13 [22.19ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2022-12-16 13:09:13 [3.99ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2022-12-16 13:09:13 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2022-12-16 13:09:13 [4.13ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2022-12-16 13:09:13 [3.95ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2022-12-16 13:09:13 [4.08ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2022-12-16 13:09:13 [3.96ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 13:09:15 [19.79ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 13:09:15 [23.91ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 13:09:15 [3.9ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 13:09:15 [3.76ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 13:09:15 [3.76ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 13:09:15 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 13:09:15 [3.91ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 13:09:15 [3.88ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 13:09:15 [3.91ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 13:09:15 [3.72ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 13:09:15 [3.72ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 13:09:15 [4.2ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 13:09:15 [3.94ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 13:09:15 [21.29ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 13:09:15 [4.21ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 13:09:15 [4.08ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 13:09:15 [3.85ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 13:09:15 [3.86ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 1 - 2022-12-16 13:09:18 [22.11ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 2 - 2022-12-16 13:09:18 [4.04ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 3 - 2022-12-16 13:09:18 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 4 - 2022-12-16 13:09:18 [4.18ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 5 - 2022-12-16 13:09:18 [3.96ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 6 - 2022-12-16 13:09:18 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 7 - 2022-12-16 13:09:18 [3.98ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 8 - 2022-12-16 13:09:18 [4.09ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 9 - 2022-12-16 13:09:18 [4.3ms] */
select * from `payment_details` where `payment_details`.`user_id` = 11 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 1 - 2022-12-16 13:09:19 [20.48ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 2 - 2022-12-16 13:09:19 [4ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 3 - 2022-12-16 13:09:19 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 4 - 2022-12-16 13:09:19 [4.02ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 5 - 2022-12-16 13:09:19 [6.93ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 6 - 2022-12-16 13:09:19 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 7 - 2022-12-16 13:09:19 [4.04ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 8 - 2022-12-16 13:09:19 [3.92ms] */
select count(*) as aggregate from `users` where `email` = 'nhung.tth@digidinos.com' and `id` <> 11;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 9 - 2022-12-16 13:09:19 [6.5ms] */
update `users` set `code` = 39, `plan_start_date` = '2022-12-16', `users`.`updated_at` = '2022-12-16 13:09:19' where `id` = 11;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 10 - 2022-12-16 13:09:19 [4.02ms] */
select * from `plans` where `plans`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 11 - 2022-12-16 13:09:19 [3.97ms] */
select * from `plans` where `plans`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 12 - 2022-12-16 13:09:19 [6.29ms] */
update `payment_details` set `plan_id` = 2, `money_amount` = 10000, `start_date` = '2022-12-16 00:00:00', `end_date` = '2032-12-16 00:00:00', `page_search_number` = 200, `profile_view_number` = 100, `export_csv_number` = 100, `campaign_register_number` = 100, `payment_status` = 1, `payment_details`.`updated_at` = '2022-12-16 13:09:19' where `user_id` = 11;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/user/11
   Query 13 - 2022-12-16 13:09:19 [4.31ms] */
select * from `payment_details` where `payment_details`.`user_id` = 11 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-16 13:09:20 [26.89ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-16 13:09:20 [27.14ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-16 13:09:20 [3.93ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-16 13:09:20 [3.94ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-16 13:09:20 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-16 13:09:20 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-16 13:09:20 [4.04ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-16 13:09:20 [3.94ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-16 13:09:20 [3.91ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-16 13:09:20 [3.87ms] */
select * from `oauth_access_tokens` where `id` = 'e3e526471a471338e5098a71f490efefc35964febafa98dcddadc9f8aad14b85ec9582001919c34b' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-16 13:09:20 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-16 13:09:20 [4.8ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-16 13:09:20 [4.06ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-16 13:09:20 [15.72ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-16 13:09:20 [4.18ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-16 13:09:20 [4.28ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-16 13:09:20 [4.22ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-16 13:09:20 [4ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-16 13:09:26 [22.39ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-16 13:09:26 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-16 13:09:26 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-16 13:09:26 [4.14ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-16 13:09:26 [6.34ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-16 13:09:26 [3.75ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-16 13:09:26 [4.22ms] */
select * from `menus` where `title` in ('module.kol', 'module.insight-list', 'module.campaign', 'module.setting') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-16 13:09:26 [3.74ms] */
select * from `menus` where `menus`.`parent_id` in (1, 2, 3, 9) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-16 13:09:26 [4.01ms] */
select * from `payment_details` where `payment_details`.`user_id` = 11 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-16 13:09:26 [20.93ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-16 13:09:26 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-16 13:09:26 [6.07ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-16 13:09:26 [4.09ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-16 13:09:26 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-16 13:09:26 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-16 13:09:26 [3.99ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-16 13:09:26 [4.28ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 9 - 2022-12-16 13:09:26 [4ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 10 - 2022-12-16 13:09:26 [3.94ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 11 - 2022-12-16 13:09:27 [7.06ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1671196167, 1671196167, '{"uuid":"69b9df2e-a951-413a-88a3-315d61f2975e","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:2:{i:0;a:3:{s:5:\"basic\";a:5:{s:2:\"id\";s:24:\"UCLA_DiR1FfKNvjuUpBHmylQ\";s:8:\"username\";s:14:\"NASAtelevision\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:96:\"https:\/\/yt3.ggpht.com\/a\/AGF-l7-ftrZQ3lNBQnSCTvbUkAPpjPumepat4S0wGg=s900-c-k-c0xffffffff-no-rj-mo\";s:13:\"category_name\";s:20:\"Science & Technology\";}s:7:\"metrics\";a:4:{s:2:\"er\";i:0;s:17:\"subscribers_count\";i:4754873;s:11:\"likes_count\";i:0;s:9:\"views_avg\";i:0;}s:8:\"features\";a:2:{s:15:\"social_networks\";a:0:{}s:12:\"audience_geo\";a:1:{s:9:\"countries\";s:0:\"\";}}}i:1;a:2:{s:5:\"basic\";a:4:{s:2:\"id\";s:19:\"6557821753438371845\";s:8:\"username\";s:9:\"littlebig\";s:5:\"title\";s:9:\"littlebig\";s:10:\"avatar_url\";s:127:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/user\/6557821753438371845.jpg?w=150&till=1670050800&sign=7d4da05e2c860e1f20ad227d0c50dc8e\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:3;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 12 - 2022-12-16 13:09:27 [4.42ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 11 and `k`.`username` in ('NASAtelevision', 'littlebig');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 1 - 2022-12-16 13:09:28 [23.65ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 2 - 2022-12-16 13:09:28 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 3 - 2022-12-16 13:09:28 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 4 - 2022-12-16 13:09:28 [4.02ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 5 - 2022-12-16 13:09:28 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 6 - 2022-12-16 13:09:28 [5.43ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 7 - 2022-12-16 13:09:28 [4.01ms] */
select * from `campaigns` where `social_type` = 3 and `user_id` = 11 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 1 - 2022-12-16 13:09:28 [21.81ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 2 - 2022-12-16 13:09:28 [4.02ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 3 - 2022-12-16 13:09:28 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 4 - 2022-12-16 13:09:28 [3.98ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 5 - 2022-12-16 13:09:28 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 6 - 2022-12-16 13:09:28 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 7 - 2022-12-16 13:09:28 [4.11ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 8 - 2022-12-16 13:09:29 [4.33ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 9 - 2022-12-16 13:09:29 [4.24ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 10 - 2022-12-16 13:09:29 [4.17ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 11 - 2022-12-16 13:09:29 [6.31ms] */
update `statistics` set `profile_view_number` = 1, `statistics`.`updated_at` = '2022-12-16 13:09:29' where `id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=littlebig&social_type=3
   Query 12 - 2022-12-16 13:09:30 [15.87ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1671196170, 1671196170, '{"uuid":"85ac4d3a-9c4e-4835-9a48-194107930015","displayName":"Modules\Kol\Jobs\UpdateKolReportJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolReportJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolReportJob\":12:{s:50:\"\u0000Modules\Kol\Jobs\UpdateKolReportJob\u0000kolReportInfo\";a:4:{s:5:\"basic\";a:5:{s:2:\"id\";s:19:\"6557821753438371845\";s:8:\"username\";s:9:\"littlebig\";s:5:\"title\";s:9:\"littlebig\";s:10:\"avatar_url\";s:127:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/user\/6557821753438371845.jpg?w=150&till=1673874000&sign=18b3600839b11660149c4a6fe8f6325b\";s:11:\"description\";s:29:\"Punk-pop-rave band LITTLE BIG\";}s:7:\"metrics\";a:22:{s:14:\"media_per_week\";O:8:\"stdClass\":4:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":5:{s:5:\"value\";i:0;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";i:3;s:6:\"period\";s:8:\"PER_WEEK\";}s:3:\"30d\";O:8:\"stdClass\":5:{s:5:\"value\";d:1.17;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";d:4.9;s:6:\"period\";s:8:\"PER_WEEK\";}s:3:\"90d\";O:8:\"stdClass\":5:{s:5:\"value\";d:0.86;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";d:4.74;s:6:\"period\";s:8:\"PER_WEEK\";}s:4:\"180d\";O:8:\"stdClass\":5:{s:5:\"value\";d:1.21;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";d:2.68;s:6:\"period\";s:8:\"PER_WEEK\";}s:4:\"365d\";O:8:\"stdClass\":5:{s:5:\"value\";d:0.61;s:4:\"mark\";s:7:\"average\";s:10:\"mark_title\";s:7:\"AVERAGE\";s:7:\"similar\";d:0.71;s:6:\"period\";s:8:\"PER_WEEK\";}s:3:\"all\";O:8:\"stdClass\":5:{s:5:\"value\";d:1.12;s:4:\"mark\";s:4:\"good\";s:10:\"mark_title\";s:4:\"GOOD\";s:7:\"similar\";d:0.67;s:6:\"period\";s:8:\"PER_WEEK\";}}s:5:\"value\";i:1;s:4:\"mark\";s:3:\"low\";s:7:\"similar\";i:0;}s:17:\"subscribers_count\";O:8:\"stdClass\":2:{s:5:\"value\";i:5000000;s:11:\"performance\";O:8:\"stdClass\":3:{s:3:\"30d\";O:8:\"stdClass\":1:{s:5:\"value\";i:0;}s:3:\"90d\";O:8:\"stdClass\":1:{s:5:\"value\";i:100000;}s:4:\"180d\";O:8:\"stdClass\":1:{s:5:\"value\";i:500000;}}}s:9:\"views_avg\";O:8:\"stdClass\":2:{s:5:\"value\";i:606950;s:11:\"performance\";O:8:\"stdClass\":1:{s:3:\"30d\";O:8:\"stdClass\":1:{s:5:\"value\";i:172500;}}}s:22:\"subscribers_growth_prc\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":4:{s:3:\"30d\";O:8:\"stdClass\":3:{s:5:\"value\";N;s:4:\"mark\";s:4:\"none\";s:7:\"similar\";N;}s:3:\"90d\";O:8:\"stdClass\":3:{s:5:\"value\";d:2.04;s:4:\"mark\";s:4:\"good\";s:7:\"similar\";i:0;}s:4:\"180d\";O:8:\"stdClass\":3:{s:5:\"value\";d:11.11;s:4:\"mark\";s:4:\"good\";s:7:\"similar\";d:4.805401;}s:4:\"365d\";O:8:\"stdClass\":3:{s:5:\"value\";d:8.89;s:4:\"mark\";s:4:\"fair\";s:7:\"similar\";d:15.95203;}}}s:2:\"er\";O:8:\"stdClass\":3:{s:5:\"value\";d:4.68;s:10:\"mark_title\";s:3:\"LOW\";s:11:\"performance\";O:8:\"stdClass\":3:{s:3:\"30d\";O:8:\"stdClass\":3:{s:5:\"value\";d:7.05;s:4:\"mark\";s:4:\"fair\";s:7:\"similar\";d:8.470408;}s:3:\"90d\";O:8:\"stdClass\":3:{s:5:\"value\";d:4.98;s:4:\"mark\";s:4:\"poor\";s:7:\"similar\";d:7.90294;}s:4:\"180d\";O:8:\"stdClass\":3:{s:5:\"value\";d:4.98;s:4:\"mark\";s:4:\"poor\";s:7:\"similar\";d:7.890878;}}}s:10:\"alikes_avg\";O:8:\"stdClass\":2:{s:5:\"value\";i:26050;s:11:\"performance\";O:8:\"stdClass\":4:{s:3:\"30d\";O:8:\"stdClass\":3:{s:5:\"value\";i:12900;s:3:\"min\";N;s:3:\"max\";N;}s:3:\"90d\";O:8:\"stdClass\":3:{s:5:\"value\";i:20900;s:3:\"min\";N;s:3:\"max\";N;}s:4:\"180d\";O:8:\"stdClass\":3:{s:5:\"value\";i:24200;s:3:\"min\";N;s:3:\"max\";N;}s:4:\"365d\";O:8:\"stdClass\":3:{s:5:\"value\";i:26050;s:3:\"min\";N;s:3:\"max\";N;}}}s:11:\"likes_count\";O:8:\"stdClass\":2:{s:5:\"value\";i:38200000;s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":2:{s:5:\"value\";i:0;s:10:\"value_prev\";i:6653;}s:3:\"30d\";O:8:\"stdClass\":2:{s:5:\"value\";i:148353;s:10:\"value_prev\";i:51300;}s:3:\"90d\";O:8:\"stdClass\":2:{s:5:\"value\";i:266469;s:10:\"value_prev\";i:1527822;}s:4:\"180d\";O:8:\"stdClass\":2:{s:5:\"value\";i:1794291;s:10:\"value_prev\";i:125600;}s:4:\"365d\";O:8:\"stdClass\":2:{s:5:\"value\";i:1919891;s:10:\"value_prev\";i:12498875;}s:3:\"all\";O:8:\"stdClass\":2:{s:5:\"value\";i:39612638;s:10:\"value_prev\";N;}}}s:11:\"media_count\";O:8:\"stdClass\":2:{s:5:\"value\";i:108;s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":7:{s:5:\"value\";i:0;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";i:3;s:11:\"similar_min\";i:2;s:11:\"similar_max\";i:3;s:10:\"value_prev\";i:1;}s:3:\"30d\";O:8:\"stdClass\":7:{s:5:\"value\";i:5;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";i:21;s:11:\"similar_min\";i:16;s:11:\"similar_max\";i:27;s:10:\"value_prev\";i:2;}s:3:\"90d\";O:8:\"stdClass\":7:{s:5:\"value\";i:11;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";i:61;s:11:\"similar_min\";i:48;s:11:\"similar_max\";i:77;s:10:\"value_prev\";i:20;}s:4:\"180d\";O:8:\"stdClass\":7:{s:5:\"value\";i:31;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";i:69;s:11:\"similar_min\";i:59;s:11:\"similar_max\";i:83;s:10:\"value_prev\";i:1;}s:4:\"365d\";O:8:\"stdClass\":7:{s:5:\"value\";i:32;s:4:\"mark\";s:7:\"average\";s:10:\"mark_title\";s:7:\"AVERAGE\";s:7:\"similar\";i:37;s:11:\"similar_min\";i:29;s:11:\"similar_max\";i:46;s:10:\"value_prev\";i:39;}s:3:\"all\";O:8:\"stdClass\":7:{s:5:\"value\";i:117;s:4:\"mark\";s:4:\"good\";s:10:\"mark_title\";s:4:\"GOOD\";s:7:\"similar\";i:70;s:11:\"similar_min\";i:60;s:11:\"similar_max\";i:85;s:10:\"value_prev\";N;}}}s:17:\"likes_views_ratio\";O:8:\"stdClass\":2:{s:5:\"value\";N;s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":7:{s:5:\"value\";i:0;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";d:16.815248;s:11:\"similar_min\";d:15.302255;s:11:\"similar_max\";d:18.683242;s:10:\"value_prev\";d:0.13;}s:3:\"30d\";O:8:\"stdClass\":7:{s:5:\"value\";d:0.26;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";d:13.754108;s:11:\"similar_min\";d:12.345611;s:11:\"similar_max\";d:15.325047;s:10:\"value_prev\";d:0.52;}s:3:\"90d\";O:8:\"stdClass\":7:{s:5:\"value\";d:0.43;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";d:12.458707;s:11:\"similar_min\";d:11.270689;s:11:\"similar_max\";d:13.935077;s:10:\"value_prev\";d:0.64;}s:4:\"180d\";O:8:\"stdClass\":7:{s:5:\"value\";d:0.53;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";d:12.165897;s:11:\"similar_min\";d:11.034529;s:11:\"similar_max\";d:13.610325;s:10:\"value_prev\";d:2.53;}s:4:\"365d\";O:8:\"stdClass\":7:{s:5:\"value\";d:0.55;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";d:12.05341;s:11:\"similar_min\";d:10.94369;s:11:\"similar_max\";d:13.405118;s:10:\"value_prev\";d:2.22;}s:3:\"all\";O:8:\"stdClass\":7:{s:5:\"value\";d:2.94;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";d:12.015841;s:11:\"similar_min\";d:10.903666;s:11:\"similar_max\";d:13.37647;s:10:\"value_prev\";N;}}}s:14:\"comments_count\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":2:{s:5:\"value\";i:0;s:10:\"value_prev\";i:42;}s:3:\"30d\";O:8:\"stdClass\":2:{s:5:\"value\";i:661;s:10:\"value_prev\";i:235;}s:3:\"90d\";O:8:\"stdClass\":2:{s:5:\"value\";i:1393;s:10:\"value_prev\";i:4947;}s:4:\"180d\";O:8:\"stdClass\":2:{s:5:\"value\";i:6340;s:10:\"value_prev\";i:745;}s:4:\"365d\";O:8:\"stdClass\":2:{s:5:\"value\";i:7085;s:10:\"value_prev\";i:58248;}s:3:\"all\";O:8:\"stdClass\":2:{s:5:\"value\";i:173733;s:10:\"value_prev\";N;}}}s:21:\"views_followers_ratio\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":7:{s:5:\"value\";i:0;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";d:4.98;s:11:\"similar_min\";d:3.63;s:11:\"similar_max\";d:6.55;s:10:\"value_prev\";d:1.9;}s:3:\"30d\";O:8:\"stdClass\":7:{s:5:\"value\";d:3.45;s:4:\"mark\";s:4:\"poor\";s:10:\"mark_title\";s:3:\"LOW\";s:7:\"similar\";d:7.86;s:11:\"similar_min\";d:6.19;s:11:\"similar_max\";d:10.1;s:10:\"value_prev\";d:10.85;}s:3:\"90d\";O:8:\"stdClass\":7:{s:5:\"value\";d:7.59;s:4:\"mark\";s:7:\"average\";s:10:\"mark_title\";s:7:\"AVERAGE\";s:7:\"similar\";d:8.73;s:11:\"similar_min\";d:6.81;s:11:\"similar_max\";d:11.3;s:10:\"value_prev\";d:12.14;}s:4:\"180d\";O:8:\"stdClass\":7:{s:5:\"value\";d:11.92;s:4:\"mark\";s:7:\"average\";s:10:\"mark_title\";s:7:\"AVERAGE\";s:7:\"similar\";d:9.56;s:11:\"similar_min\";d:7.57;s:11:\"similar_max\";d:12.18;s:10:\"value_prev\";i:46;}s:4:\"365d\";O:8:\"stdClass\":7:{s:5:\"value\";d:12.14;s:4:\"mark\";s:7:\"average\";s:10:\"mark_title\";s:7:\"AVERAGE\";s:7:\"similar\";d:9.92;s:11:\"similar_min\";d:7.95;s:11:\"similar_max\";d:12.67;s:10:\"value_prev\";i:28;}s:3:\"all\";O:8:\"stdClass\":7:{s:5:\"value\";i:36;s:4:\"mark\";s:9:\"excellent\";s:10:\"mark_title\";s:9:\"EXCELLENT\";s:7:\"similar\";d:9.72;s:11:\"similar_min\";d:7.73;s:11:\"similar_max\";d:12.35;s:10:\"value_prev\";N;}}}s:12:\"shares_count\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":2:{s:5:\"value\";i:0;s:10:\"value_prev\";i:10;}s:3:\"30d\";O:8:\"stdClass\":2:{s:5:\"value\";i:437;s:10:\"value_prev\";i:195;}s:3:\"90d\";O:8:\"stdClass\":2:{s:5:\"value\";i:1044;s:10:\"value_prev\";i:8928;}s:4:\"180d\";O:8:\"stdClass\":2:{s:5:\"value\";i:9972;s:10:\"value_prev\";i:327;}s:4:\"365d\";O:8:\"stdClass\":2:{s:5:\"value\";i:10299;s:10:\"value_prev\";i:90578;}s:3:\"all\";O:8:\"stdClass\":2:{s:5:\"value\";i:427414;s:10:\"value_prev\";N;}}}s:15:\"following_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:3;}s:12:\"comments_avg\";O:8:\"stdClass\":2:{s:5:\"value\";i:128;s:11:\"performance\";O:8:\"stdClass\":3:{s:3:\"30d\";O:8:\"stdClass\":3:{s:5:\"value\";i:91;s:3:\"min\";N;s:3:\"max\";N;}s:3:\"90d\";O:8:\"stdClass\":3:{s:5:\"value\";i:98;s:3:\"min\";N;s:3:\"max\";N;}s:4:\"180d\";O:8:\"stdClass\":3:{s:5:\"value\";i:153;s:3:\"min\";N;s:3:\"max\";N;}}}s:10:\"shares_avg\";O:8:\"stdClass\":2:{s:5:\"value\";d:121.5;s:11:\"performance\";O:8:\"stdClass\":3:{s:3:\"30d\";O:8:\"stdClass\":3:{s:5:\"value\";i:40;s:3:\"min\";N;s:3:\"max\";N;}s:3:\"90d\";O:8:\"stdClass\":3:{s:5:\"value\";i:59;s:3:\"min\";N;s:3:\"max\";N;}s:4:\"180d\";O:8:\"stdClass\":3:{s:5:\"value\";i:124;s:3:\"min\";N;s:3:\"max\";N;}}}s:20:\"comments_likes_ratio\";O:8:\"stdClass\":3:{s:5:\"value\";d:0.4;s:10:\"mark_title\";s:3:\"LOW\";s:11:\"performance\";O:8:\"stdClass\":3:{s:3:\"30d\";O:8:\"stdClass\":3:{s:5:\"value\";d:0.59;s:4:\"mark\";s:7:\"average\";s:7:\"similar\";d:0.614782;}s:3:\"90d\";O:8:\"stdClass\":3:{s:5:\"value\";d:0.56;s:4:\"mark\";s:7:\"average\";s:7:\"similar\";d:0.598854;}s:4:\"180d\";O:8:\"stdClass\":3:{s:5:\"value\";d:0.41;s:4:\"mark\";s:7:\"average\";s:7:\"similar\";d:0.573963;}}}s:14:\"post_frequency\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":1:{s:3:\"30d\";O:8:\"stdClass\":3:{s:5:\"value\";d:1.17;s:4:\"mark\";s:4:\"poor\";s:7:\"similar\";d:4.9;}}}s:19:\"subscribers_quality\";O:8:\"stdClass\":3:{s:5:\"value\";d:53.84;s:4:\"mark\";s:4:\"good\";s:7:\"similar\";d:48.3136;}s:21:\"audience_reachability\";O:8:\"stdClass\":3:{s:5:\"value\";d:94.4;s:4:\"mark\";s:4:\"poor\";s:7:\"similar\";d:98.15956;}s:14:\"er_last_posted\";a:4:{s:5:\"likes\";a:1:{s:4:\"data\";a:6:{i:0;i:20900;i:1;i:12500;i:2;i:12900;i:3;i:37200;i:4;i:79100;i:5;i:6653;}}s:8:\"comments\";a:2:{s:4:\"data\";a:6:{i:0;i:73;i:1;i:91;i:2;i:76;i:3;i:153;i:4;i:299;i:5;i:42;}s:4:\"date\";a:6:{i:0;s:10:\"19.10.2022\";i:1;s:10:\"19.11.2022\";i:2;s:10:\"21.11.2022\";i:3;s:10:\"24.11.2022\";i:4;s:10:\"26.11.2022\";i:5;s:10:\"03.12.2022\";}}s:7:\"er_post\";a:2:{s:4:\"data\";a:6:{i:0;d:5.560853530031612;i:1;d:7.311304347826086;i:2;d:11.01766190075694;i:3;d:4.9771063489950755;i:4;d:4.9775624999999994;i:5;d:7.0504731861198735;}s:4:\"date\";a:6:{i:0;s:10:\"19.10.2022\";i:1;s:10:\"19.11.2022\";i:2;s:10:\"21.11.2022\";i:3;s:10:\"24.11.2022\";i:4;s:10:\"26.11.2022\";i:5;s:10:\"03.12.2022\";}}s:7:\"posters\";a:6:{i:0;O:8:\"stdClass\":2:{s:5:\"basic\";O:8:\"stdClass\":8:{s:2:\"id\";s:19:\"6824383575803055365\";s:4:\"text\";s:15:\"Go Hypnodancer!\";s:9:\"thumbnail\";s:127:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/6824383575803055365.jpg?w=200&till=1673874570&sign=a8230c0e6394cf2fb9f6ec3590788c96\";s:13:\"thumbnail_gif\";s:93:\"https:\/\/m-p16.akamaized.net\/obj\/tos-maliva-p-0068\/a049ea4f5f814776b8fb7db89db3aed0_1588925625\";s:17:\"exact_create_time\";i:1588925623;s:3:\"day\";s:2:\"08\";s:5:\"month\";s:2:\"05\";s:4:\"year\";s:4:\"2020\";}s:7:\"metrics\";O:8:\"stdClass\":8:{s:11:\"views_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:889163;}s:11:\"likes_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:135659;}s:14:\"comments_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:1272;}s:12:\"shares_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:2817;}s:10:\"length_sec\";O:8:\"stdClass\":1:{s:5:\"value\";i:14;}s:8:\"virality\";O:8:\"stdClass\":1:{s:5:\"value\";d:0.32;}s:2:\"er\";O:8:\"stdClass\":2:{s:5:\"value\";d:15.716803330772871;s:4:\"mark\";s:9:\"excellent\";}s:16:\"challenges_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:0;}}}i:1;O:8:\"stdClass\":2:{s:5:\"basic\";O:8:\"stdClass\":8:{s:2:\"id\";s:19:\"6969686441978842370\";s:4:\"text\";s:19:\"NEW EP OUT NOW 🎧\";s:9:\"thumbnail\";s:127:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/6969686441978842370.jpg?w=200&till=1673874570&sign=533a56f08fa130f2214f63f248c0771d\";s:13:\"thumbnail_gif\";s:164:\"https:\/\/p16-sign-sg.tiktokcdn.com\/obj\/tos-alisg-p-0037\/8d4ab59d0d69410ab775cf41edd6a6cd_1622756591?x-expires=1622793600&x-signature=x3%2BUpMWjjnhKN7u54sDPbLRitj4%3D\";s:17:\"exact_create_time\";i:1622756589;s:3:\"day\";s:2:\"03\";s:5:\"month\";s:2:\"06\";s:4:\"year\";s:4:\"2021\";}s:7:\"metrics\";O:8:\"stdClass\":8:{s:11:\"views_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:3798;}s:11:\"likes_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:533;}s:14:\"comments_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:33;}s:12:\"shares_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:4;}s:10:\"length_sec\";O:8:\"stdClass\":1:{s:5:\"value\";i:14;}s:8:\"virality\";O:8:\"stdClass\":1:{s:5:\"value\";d:0.11;}s:2:\"er\";O:8:\"stdClass\":2:{s:5:\"value\";d:15.00789889415482;s:4:\"mark\";s:9:\"excellent\";}s:16:\"challenges_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:0;}}}i:2;O:8:\"stdClass\":2:{s:5:\"basic\";O:8:\"stdClass\":8:{s:2:\"id\";s:19:\"6901208693350616321\";s:4:\"text\";s:38:\"Lollipop balloon 🍭 @sonyatayurskaya\";s:9:\"thumbnail\";s:127:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/6901208693350616321.jpg?w=200&till=1673874570&sign=1f6255ddec65836a1bd45a6e7a481bc4\";s:13:\"thumbnail_gif\";s:166:\"https:\/\/p77-sign-sg.tiktokcdn.com\/obj\/tos-alisg-p-0037\/b26aa8780dcc4245929c926e3ab51bb3_1606812866?x-expires=1663642800&x-signature=Xy6RnOb7lJkZd%2FKbf%2BwO4E5Fe2A%3D\";s:17:\"exact_create_time\";i:1606812864;s:3:\"day\";s:2:\"01\";s:5:\"month\";s:2:\"12\";s:4:\"year\";s:4:\"2020\";}s:7:\"metrics\";O:8:\"stdClass\":8:{s:11:\"views_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:2400000;}s:11:\"likes_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:331400;}s:14:\"comments_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:1441;}s:12:\"shares_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:1976;}s:10:\"length_sec\";O:8:\"stdClass\":1:{s:5:\"value\";i:13;}s:8:\"virality\";O:8:\"stdClass\":1:{s:5:\"value\";d:0.08;}s:2:\"er\";O:8:\"stdClass\":2:{s:5:\"value\";d:13.950708333333333;s:4:\"mark\";s:9:\"excellent\";}s:16:\"challenges_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:0;}}}i:3;O:8:\"stdClass\":2:{s:5:\"basic\";O:8:\"stdClass\":8:{s:2:\"id\";s:19:\"6808858131058232582\";s:4:\"text\";s:59:\"LITTLE BIG - I’m ok (quarantine version) #imok #littlebig\";s:9:\"thumbnail\";s:127:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/6808858131058232582.jpg?w=200&till=1673874570&sign=fdc61b6ad52b9e2e7b5ebf32b5a2f316\";s:13:\"thumbnail_gif\";s:163:\"https:\/\/p16-sign-va.tiktokcdn.com\/obj\/tos-maliva-p-0068\/1b99514d10da416f81e5d9b8236eae15_1585310832?x-expires=1646060400&x-signature=IWYE9FphDD7lNuSxrTDN4re8rCc%3D\";s:17:\"exact_create_time\";i:1585310824;s:3:\"day\";s:2:\"27\";s:5:\"month\";s:2:\"03\";s:4:\"year\";s:4:\"2020\";}s:7:\"metrics\";O:8:\"stdClass\":8:{s:11:\"views_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:2000000;}s:11:\"likes_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:270400;}s:14:\"comments_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:815;}s:12:\"shares_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:1457;}s:10:\"length_sec\";O:8:\"stdClass\":1:{s:5:\"value\";i:35;}s:8:\"virality\";O:8:\"stdClass\":1:{s:5:\"value\";d:0.07;}s:2:\"er\";O:8:\"stdClass\":2:{s:5:\"value\";d:13.633600000000001;s:4:\"mark\";s:9:\"excellent\";}s:16:\"challenges_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:0;}}}i:4;O:8:\"stdClass\":2:{s:5:\"basic\";O:8:\"stdClass\":8:{s:2:\"id\";s:19:\"6891955495746145537\";s:4:\"text\";s:17:\"SUCK MY DICK 2020\";s:9:\"thumbnail\";s:127:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/6891955495746145537.jpg?w=200&till=1673874570&sign=0d88640d46b5dee764024910aeff46bd\";s:13:\"thumbnail_gif\";s:166:\"https:\/\/p16-sign-sg.tiktokcdn.com\/obj\/tos-alisg-p-0037\/2fca16b862144e399bee281b0cb11650_1604658440?x-expires=1662274800&x-signature=%2BNVK%2BRYjDbAueblR0njxsPq4EDQ%3D\";s:17:\"exact_create_time\";i:1604658436;s:3:\"day\";s:2:\"06\";s:5:\"month\";s:2:\"11\";s:4:\"year\";s:4:\"2020\";}s:7:\"metrics\";O:8:\"stdClass\":8:{s:11:\"views_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:806500;}s:11:\"likes_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:99500;}s:14:\"comments_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:1527;}s:12:\"shares_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:2825;}s:10:\"length_sec\";O:8:\"stdClass\":1:{s:5:\"value\";i:27;}s:8:\"virality\";O:8:\"stdClass\":1:{s:5:\"value\";d:0.35;}s:2:\"er\";O:8:\"stdClass\":2:{s:5:\"value\";d:12.876875387476753;s:4:\"mark\";s:9:\"very_good\";}s:16:\"challenges_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:0;}}}i:5;O:8:\"stdClass\":2:{s:5:\"basic\";O:8:\"stdClass\":8:{s:2:\"id\";s:19:\"6951786550875131138\";s:4:\"text\";s:21:\"King of the city 🏙\";s:9:\"thumbnail\";s:127:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/6951786550875131138.jpg?w=200&till=1673874570&sign=42da22d000c74ac96a9e96c18f71af97\";s:13:\"thumbnail_gif\";s:162:\"https:\/\/p16-sign-sg.tiktokcdn.com\/obj\/tos-alisg-p-0037\/e5c59bf5fb8f45439ae5c56576d1ce78_1618588942?x-expires=1664607600&x-signature=eO0AOgH2aW8W4wqLN8XiWK7qgjM%3D\";s:17:\"exact_create_time\";i:1618588940;s:3:\"day\";s:2:\"16\";s:5:\"month\";s:2:\"04\";s:4:\"year\";s:4:\"2021\";}s:7:\"metrics\";O:8:\"stdClass\":8:{s:11:\"views_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:4800000;}s:11:\"likes_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:594300;}s:14:\"comments_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:1483;}s:12:\"shares_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:939;}s:10:\"length_sec\";O:8:\"stdClass\":1:{s:5:\"value\";i:11;}s:8:\"virality\";O:8:\"stdClass\":1:{s:5:\"value\";d:0.02;}s:2:\"er\";O:8:\"stdClass\":2:{s:5:\"value\";d:12.431708333333333;s:4:\"mark\";s:9:\"very_good\";}s:16:\"challenges_count\";O:8:\"stdClass\":1:{s:5:\"value\";i:0;}}}}}s:14:\"follower_chart\";a:3:{s:6:\"months\";a:7:{i:0;s:7:\"2022-05\";i:1;s:7:\"2022-06\";i:2;s:7:\"2022-07\";i:3;s:7:\"2022-08\";i:4;s:7:\"2022-09\";i:5;s:7:\"2022-10\";i:6;s:7:\"2022-11\";}s:6:\"values\";a:7:{i:0;i:4500000;i:1;i:4500000;i:2;i:4500000;i:3;i:4800000;i:4;i:4900000;i:5;i:4900000;i:6;i:5000000;}s:7:\"numeral\";d:2.04;}s:10:\"like_chart\";a:3:{s:6:\"months\";a:7:{i:0;s:7:\"2022-05\";i:1;s:7:\"2022-06\";i:2;s:7:\"2022-07\";i:3;s:7:\"2022-08\";i:4;s:7:\"2022-09\";i:5;s:7:\"2022-10\";i:6;s:7:\"2022-11\";}s:6:\"values\";a:7:{i:0;i:31200000;i:1;i:31200000;i:2;i:31300000;i:3;i:33560000;i:4;d:36033333.333333336;i:5;i:36940000;i:6;i:38000000;}s:7:\"numeral\";d:2.87;}}s:8:\"features\";a:23:{s:18:\"likes_distribution\";O:8:\"stdClass\":2:{s:6:\"status\";O:8:\"stdClass\":1:{s:4:\"code\";s:2:\"OK\";}s:4:\"data\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":2:{s:5:\"value\";O:8:\"stdClass\":8:{s:4:\"< 10\";i:0;s:3:\"10+\";i:0;s:4:\"100+\";i:0;s:3:\"1K+\";i:0;s:4:\"10K+\";i:0;s:5:\"100K+\";i:0;s:3:\"1M+\";i:0;s:4:\"10M+\";i:0;}s:10:\"value_prev\";O:8:\"stdClass\":8:{s:4:\"< 10\";i:0;s:3:\"10+\";i:0;s:4:\"100+\";i:0;s:3:\"1K+\";i:1;s:4:\"10K+\";i:0;s:5:\"100K+\";i:0;s:3:\"1M+\";i:0;s:4:\"10M+\";i:0;}}s:3:\"30d\";O:8:\"stdClass\":2:{s:5:\"value\";O:8:\"stdClass\":8:{s:4:\"< 10\";i:0;s:3:\"10+\";i:0;s:4:\"100+\";i:0;s:3:\"1K+\";i:1;s:4:\"10K+\";i:4;s:5:\"100K+\";i:0;s:3:\"1M+\";i:0;s:4:\"10M+\";i:0;}s:10:\"value_prev\";O:8:\"stdClass\":8:{s:4:\"< 10\";i:0;s:3:\"10+\";i:0;s:4:\"100+\";i:0;s:3:\"1K+\";i:0;s:4:\"10K+\";i:2;s:5:\"100K+\";i:0;s:3:\"1M+\";i:0;s:4:\"10M+\";i:0;}}s:3:\"90d\";O:8:\"stdClass\":2:{s:5:\"value\";O:8:\"stdClass\":8:{s:4:\"< 10\";i:0;s:3:\"10+\";i:0;s:4:\"100+\";i:0;s:3:\"1K+\";i:3;s:4:\"10K+\";i:8;s:5:\"100K+\";i:0;s:3:\"1M+\";i:0;s:4:\"10M+\";i:0;}s:10:\"value_prev\";O:8:\"stdClass\":8:{s:4:\"< 10\";i:0;s:3:\"10+\";i:0;s:4:\"100+\";i:0;s:3:\"1K+\";i:2;s:4:\"10K+\";i:14;s:5:\"100K+\";i:4;s:3:\"1M+\";i:0;s:4:\"10M+\";i:0;}}s:4:\"180d\";O:8:\"stdClass\":2:{s:5:\"value\";O:8:\"stdClass\":8:{s:4:\"< 10\";i:0;s:3:\"10+\";i:0;s:4:\"100+\";i:0;s:3:\"1K+\";i:5;s:4:\"10K+\";i:22;s:5:\"100K+\";i:4;s:3:\"1M+\";i:0;s:4:\"10M+\";i:0;}s:10:\"value_prev\";O:8:\"stdClass\":8:{s:4:\"< 10\";i:0;s:3:\"10+\";i:0;s:4:\"100+\";i:0;s:3:\"1K+\";i:0;s:4:\"10K+\";i:0;s:5:\"100K+\";i:1;s:3:\"1M+\";i:0;s:4:\"10M+\";i:0;}}s:4:\"365d\";O:8:\"stdClass\":2:{s:5:\"value\";O:8:\"stdClass\":8:{s:4:\"< 10\";i:0;s:3:\"10+\";i:0;s:4:\"100+\";i:0;s:3:\"1K+\";i:5;s:4:\"10K+\";i:22;s:5:\"100K+\";i:5;s:3:\"1M+\";i:0;s:4:\"10M+\";i:0;}s:10:\"value_prev\";O:8:\"stdClass\":8:{s:4:\"< 10\";i:0;s:3:\"10+\";i:0;s:4:\"100+\";i:1;s:3:\"1K+\";i:1;s:4:\"10K+\";i:16;s:5:\"100K+\";i:19;s:3:\"1M+\";i:2;s:4:\"10M+\";i:0;}}s:3:\"all\";O:8:\"stdClass\":2:{s:5:\"value\";O:8:\"stdClass\":8:{s:4:\"< 10\";i:0;s:3:\"10+\";i:0;s:4:\"100+\";i:1;s:3:\"1K+\";i:6;s:4:\"10K+\";i:44;s:5:\"100K+\";i:57;s:3:\"1M+\";i:9;s:4:\"10M+\";i:0;}s:10:\"value_prev\";N;}}}s:11:\"blogger_geo\";O:8:\"stdClass\":1:{s:4:\"data\";O:8:\"stdClass\":1:{s:7:\"country\";s:2:\"ru\";}}s:17:\"blogger_languages\";O:8:\"stdClass\":1:{s:4:\"data\";a:1:{i:0;s:2:\"ru\";}}s:10:\"most_media\";O:8:\"stdClass\":1:{s:4:\"data\";O:8:\"stdClass\":12:{s:16:\"time_posted_desc\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:1:{i:0;s:19:\"7172802083442183425\";}}s:3:\"30d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:5:{i:0;s:19:\"7172802083442183425\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7169622225878781185\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7167773904839167234\";}}s:3:\"90d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7172802083442183425\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7169622225878781185\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7167773904839167234\";i:5;s:19:\"7156252921078779138\";i:6;s:19:\"7155512394934947073\";i:7;s:19:\"7151083714578042114\";}}s:4:\"180d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7172802083442183425\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7169622225878781185\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7167773904839167234\";i:5;s:19:\"7156252921078779138\";i:6;s:19:\"7155512394934947073\";i:7;s:19:\"7151083714578042114\";}}s:4:\"365d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7172802083442183425\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7169622225878781185\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7167773904839167234\";i:5;s:19:\"7156252921078779138\";i:6;s:19:\"7155512394934947073\";i:7;s:19:\"7151083714578042114\";}}s:3:\"all\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7172802083442183425\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7169622225878781185\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7167773904839167234\";i:5;s:19:\"7156252921078779138\";i:6;s:19:\"7155512394934947073\";i:7;s:19:\"7151083714578042114\";}}}}s:17:\"most_recent_media\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:1:{i:0;s:19:\"7172802083442183425\";}}s:3:\"30d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:5:{i:0;s:19:\"7172802083442183425\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7169622225878781185\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7167773904839167234\";}}s:3:\"90d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7172802083442183425\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7169622225878781185\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7167773904839167234\";i:5;s:19:\"7156252921078779138\";i:6;s:19:\"7155512394934947073\";i:7;s:19:\"7151083714578042114\";}}s:4:\"180d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7172802083442183425\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7169622225878781185\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7167773904839167234\";i:5;s:19:\"7156252921078779138\";i:6;s:19:\"7155512394934947073\";i:7;s:19:\"7151083714578042114\";}}s:4:\"365d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7172802083442183425\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7169622225878781185\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7167773904839167234\";i:5;s:19:\"7156252921078779138\";i:6;s:19:\"7155512394934947073\";i:7;s:19:\"7151083714578042114\";}}s:3:\"all\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7172802083442183425\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7169622225878781185\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7167773904839167234\";i:5;s:19:\"7156252921078779138\";i:6;s:19:\"7155512394934947073\";i:7;s:19:\"7151083714578042114\";}}}}s:7:\"er_desc\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:1:{i:0;s:19:\"7172802083442183425\";}}s:3:\"30d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:5:{i:0;s:19:\"7168515790956891393\";i:1;s:19:\"7167773904839167234\";i:2;s:19:\"7172802083442183425\";i:3;s:19:\"7170373753749130498\";i:4;s:19:\"7169622225878781185\";}}s:3:\"90d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7168515790956891393\";i:1;s:19:\"7167773904839167234\";i:2;s:19:\"7172802083442183425\";i:3;s:19:\"7145530877001354498\";i:4;s:19:\"7156252921078779138\";i:5;s:19:\"7170373753749130498\";i:6;s:19:\"7169622225878781185\";i:7;s:19:\"7155512394934947073\";}}s:4:\"180d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7168515790956891393\";i:1;s:19:\"7114323545643109634\";i:2;s:19:\"7167773904839167234\";i:3;s:19:\"7172802083442183425\";i:4;s:19:\"7137351419178355970\";i:5;s:19:\"7145530877001354498\";i:6;s:19:\"7113230744998219009\";i:7;s:19:\"7115853415875497218\";}}s:4:\"365d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7168515790956891393\";i:1;s:19:\"7114323545643109634\";i:2;s:19:\"7167773904839167234\";i:3;s:19:\"7172802083442183425\";i:4;s:19:\"7137351419178355970\";i:5;s:19:\"7145530877001354498\";i:6;s:19:\"7113230744998219009\";i:7;s:19:\"7115853415875497218\";}}s:3:\"all\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"6824383575803055365\";i:1;s:19:\"6969686441978842370\";i:2;s:19:\"6901208693350616321\";i:3;s:19:\"6808858131058232582\";i:4;s:19:\"6891955495746145537\";i:5;s:19:\"6951786550875131138\";i:6;s:19:\"6966239976744963330\";i:7;s:19:\"6872319182344604929\";}}}}s:19:\"most_engaging_media\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:1:{i:0;s:19:\"7172802083442183425\";}}s:3:\"30d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:5:{i:0;s:19:\"7168515790956891393\";i:1;s:19:\"7167773904839167234\";i:2;s:19:\"7172802083442183425\";i:3;s:19:\"7170373753749130498\";i:4;s:19:\"7169622225878781185\";}}s:3:\"90d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7168515790956891393\";i:1;s:19:\"7167773904839167234\";i:2;s:19:\"7172802083442183425\";i:3;s:19:\"7145530877001354498\";i:4;s:19:\"7156252921078779138\";i:5;s:19:\"7170373753749130498\";i:6;s:19:\"7169622225878781185\";i:7;s:19:\"7155512394934947073\";}}s:4:\"180d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7168515790956891393\";i:1;s:19:\"7114323545643109634\";i:2;s:19:\"7167773904839167234\";i:3;s:19:\"7172802083442183425\";i:4;s:19:\"7137351419178355970\";i:5;s:19:\"7145530877001354498\";i:6;s:19:\"7113230744998219009\";i:7;s:19:\"7115853415875497218\";}}s:4:\"365d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7168515790956891393\";i:1;s:19:\"7114323545643109634\";i:2;s:19:\"7167773904839167234\";i:3;s:19:\"7172802083442183425\";i:4;s:19:\"7137351419178355970\";i:5;s:19:\"7145530877001354498\";i:6;s:19:\"7113230744998219009\";i:7;s:19:\"7115853415875497218\";}}s:3:\"all\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"6824383575803055365\";i:1;s:19:\"6969686441978842370\";i:2;s:19:\"6901208693350616321\";i:3;s:19:\"6808858131058232582\";i:4;s:19:\"6891955495746145537\";i:5;s:19:\"6951786550875131138\";i:6;s:19:\"6966239976744963330\";i:7;s:19:\"6872319182344604929\";}}}}s:10:\"views_desc\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:1:{i:0;s:19:\"7172802083442183425\";}}s:3:\"30d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:5:{i:0;s:19:\"7170373753749130498\";i:1;s:19:\"7169622225878781185\";i:2;s:19:\"7167773904839167234\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7172802083442183425\";}}s:3:\"90d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7145129706604465409\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7151083714578042114\";i:3;s:19:\"7169622225878781185\";i:4;s:19:\"7155512394934947073\";i:5;s:19:\"7156252921078779138\";i:6;s:19:\"7146452221763390721\";i:7;s:19:\"7167773904839167234\";}}s:4:\"180d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7135855210697608449\";i:2;s:19:\"7134004875767155969\";i:3;s:19:\"7141428373238172929\";i:4;s:19:\"7145129706604465409\";i:5;s:19:\"7134748183250472194\";i:6;s:19:\"7140676738182384898\";i:7;s:19:\"7170373753749130498\";}}s:4:\"365d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7135855210697608449\";i:2;s:19:\"7134004875767155969\";i:3;s:19:\"7141428373238172929\";i:4;s:19:\"7062685612402314497\";i:5;s:19:\"7145129706604465409\";i:6;s:19:\"7134748183250472194\";i:7;s:19:\"7140676738182384898\";}}s:3:\"all\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"6970026617703845122\";i:1;s:19:\"6888983063246753025\";i:2;s:19:\"6987261911716973825\";i:3;s:19:\"6787244858076646662\";i:4;s:19:\"6710545548656512262\";i:5;s:19:\"6790566357067910405\";i:6;s:19:\"6792048682159131910\";i:7;s:19:\"6795835290188614918\";}}}}s:17:\"most_viewed_media\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:1:{i:0;s:19:\"7172802083442183425\";}}s:3:\"30d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:5:{i:0;s:19:\"7170373753749130498\";i:1;s:19:\"7169622225878781185\";i:2;s:19:\"7167773904839167234\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7172802083442183425\";}}s:3:\"90d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7145129706604465409\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7151083714578042114\";i:3;s:19:\"7169622225878781185\";i:4;s:19:\"7155512394934947073\";i:5;s:19:\"7156252921078779138\";i:6;s:19:\"7146452221763390721\";i:7;s:19:\"7167773904839167234\";}}s:4:\"180d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7135855210697608449\";i:2;s:19:\"7134004875767155969\";i:3;s:19:\"7141428373238172929\";i:4;s:19:\"7145129706604465409\";i:5;s:19:\"7134748183250472194\";i:6;s:19:\"7140676738182384898\";i:7;s:19:\"7170373753749130498\";}}s:4:\"365d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7135855210697608449\";i:2;s:19:\"7134004875767155969\";i:3;s:19:\"7141428373238172929\";i:4;s:19:\"7062685612402314497\";i:5;s:19:\"7145129706604465409\";i:6;s:19:\"7134748183250472194\";i:7;s:19:\"7140676738182384898\";}}s:3:\"all\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"6970026617703845122\";i:1;s:19:\"6888983063246753025\";i:2;s:19:\"6987261911716973825\";i:3;s:19:\"6787244858076646662\";i:4;s:19:\"6710545548656512262\";i:5;s:19:\"6790566357067910405\";i:6;s:19:\"6792048682159131910\";i:7;s:19:\"6795835290188614918\";}}}}s:13:\"comments_desc\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:1:{i:0;s:19:\"7172802083442183425\";}}s:3:\"30d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:5:{i:0;s:19:\"7170373753749130498\";i:1;s:19:\"7169622225878781185\";i:2;s:19:\"7167773904839167234\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7172802083442183425\";}}s:3:\"90d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7170373753749130498\";i:1;s:19:\"7145129706604465409\";i:2;s:19:\"7155512394934947073\";i:3;s:19:\"7146452221763390721\";i:4;s:19:\"7169622225878781185\";i:5;s:19:\"7151083714578042114\";i:6;s:19:\"7167773904839167234\";i:7;s:19:\"7168515790956891393\";}}s:4:\"180d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7135855210697608449\";i:2;s:19:\"7134004875767155969\";i:3;s:19:\"7129383370848619778\";i:4;s:19:\"7170373753749130498\";i:5;s:19:\"7113230744998219009\";i:6;s:19:\"7145129706604465409\";i:7;s:19:\"7112671209686338817\";}}s:4:\"365d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7135855210697608449\";i:2;s:19:\"7062685612402314497\";i:3;s:19:\"7134004875767155969\";i:4;s:19:\"7129383370848619778\";i:5;s:19:\"7170373753749130498\";i:6;s:19:\"7113230744998219009\";i:7;s:19:\"7145129706604465409\";}}s:3:\"all\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"6888983063246753025\";i:1;s:19:\"6970026617703845122\";i:2;s:19:\"6811116671529405702\";i:3;s:19:\"6987261911716973825\";i:4;s:19:\"6787244858076646662\";i:5;s:19:\"6804804740220783877\";i:6;s:19:\"7018882510901841153\";i:7;s:19:\"6710545548656512262\";}}}}s:20:\"most_commented_media\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:1:{i:0;s:19:\"7172802083442183425\";}}s:3:\"30d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:5:{i:0;s:19:\"7170373753749130498\";i:1;s:19:\"7169622225878781185\";i:2;s:19:\"7167773904839167234\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7172802083442183425\";}}s:3:\"90d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7170373753749130498\";i:1;s:19:\"7145129706604465409\";i:2;s:19:\"7155512394934947073\";i:3;s:19:\"7146452221763390721\";i:4;s:19:\"7169622225878781185\";i:5;s:19:\"7151083714578042114\";i:6;s:19:\"7167773904839167234\";i:7;s:19:\"7168515790956891393\";}}s:4:\"180d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7135855210697608449\";i:2;s:19:\"7134004875767155969\";i:3;s:19:\"7129383370848619778\";i:4;s:19:\"7170373753749130498\";i:5;s:19:\"7113230744998219009\";i:6;s:19:\"7145129706604465409\";i:7;s:19:\"7112671209686338817\";}}s:4:\"365d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7135855210697608449\";i:2;s:19:\"7062685612402314497\";i:3;s:19:\"7134004875767155969\";i:4;s:19:\"7129383370848619778\";i:5;s:19:\"7170373753749130498\";i:6;s:19:\"7113230744998219009\";i:7;s:19:\"7145129706604465409\";}}s:3:\"all\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"6888983063246753025\";i:1;s:19:\"6970026617703845122\";i:2;s:19:\"6811116671529405702\";i:3;s:19:\"6987261911716973825\";i:4;s:19:\"6787244858076646662\";i:5;s:19:\"6804804740220783877\";i:6;s:19:\"7018882510901841153\";i:7;s:19:\"6710545548656512262\";}}}}s:10:\"likes_desc\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:1:{i:0;s:19:\"7172802083442183425\";}}s:3:\"30d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:5:{i:0;s:19:\"7170373753749130498\";i:1;s:19:\"7169622225878781185\";i:2;s:19:\"7168515790956891393\";i:3;s:19:\"7167773904839167234\";i:4;s:19:\"7172802083442183425\";}}s:3:\"90d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7170373753749130498\";i:1;s:19:\"7169622225878781185\";i:2;s:19:\"7145129706604465409\";i:3;s:19:\"7155512394934947073\";i:4;s:19:\"7151083714578042114\";i:5;s:19:\"7156252921078779138\";i:6;s:19:\"7168515790956891393\";i:7;s:19:\"7167773904839167234\";}}s:4:\"180d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7135855210697608449\";i:2;s:19:\"7134004875767155969\";i:3;s:19:\"7134748183250472194\";i:4;s:19:\"7170373753749130498\";i:5;s:19:\"7141428373238172929\";i:6;s:19:\"7140676738182384898\";i:7;s:19:\"7128874126298696962\";}}s:4:\"365d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7135855210697608449\";i:2;s:19:\"7134004875767155969\";i:3;s:19:\"7062685612402314497\";i:4;s:19:\"7134748183250472194\";i:5;s:19:\"7170373753749130498\";i:6;s:19:\"7141428373238172929\";i:7;s:19:\"7140676738182384898\";}}s:3:\"all\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"6888983063246753025\";i:1;s:19:\"6970026617703845122\";i:2;s:19:\"6987261911716973825\";i:3;s:19:\"6787244858076646662\";i:4;s:19:\"6804804740220783877\";i:5;s:19:\"6710545548656512262\";i:6;s:19:\"6795835290188614918\";i:7;s:19:\"6811116671529405702\";}}}}s:16:\"most_liked_media\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:1:{i:0;s:19:\"7172802083442183425\";}}s:3:\"30d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:5:{i:0;s:19:\"7170373753749130498\";i:1;s:19:\"7169622225878781185\";i:2;s:19:\"7168515790956891393\";i:3;s:19:\"7167773904839167234\";i:4;s:19:\"7172802083442183425\";}}s:3:\"90d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7170373753749130498\";i:1;s:19:\"7169622225878781185\";i:2;s:19:\"7145129706604465409\";i:3;s:19:\"7155512394934947073\";i:4;s:19:\"7151083714578042114\";i:5;s:19:\"7156252921078779138\";i:6;s:19:\"7168515790956891393\";i:7;s:19:\"7167773904839167234\";}}s:4:\"180d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7135855210697608449\";i:2;s:19:\"7134004875767155969\";i:3;s:19:\"7134748183250472194\";i:4;s:19:\"7170373753749130498\";i:5;s:19:\"7141428373238172929\";i:6;s:19:\"7140676738182384898\";i:7;s:19:\"7128874126298696962\";}}s:4:\"365d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7135855210697608449\";i:2;s:19:\"7134004875767155969\";i:3;s:19:\"7062685612402314497\";i:4;s:19:\"7134748183250472194\";i:5;s:19:\"7170373753749130498\";i:6;s:19:\"7141428373238172929\";i:7;s:19:\"7140676738182384898\";}}s:3:\"all\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"6888983063246753025\";i:1;s:19:\"6970026617703845122\";i:2;s:19:\"6987261911716973825\";i:3;s:19:\"6787244858076646662\";i:4;s:19:\"6804804740220783877\";i:5;s:19:\"6710545548656512262\";i:6;s:19:\"6795835290188614918\";i:7;s:19:\"6811116671529405702\";}}}}s:11:\"shares_desc\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:1:{i:0;s:19:\"7172802083442183425\";}}s:3:\"30d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:5:{i:0;s:19:\"7170373753749130498\";i:1;s:19:\"7168515790956891393\";i:2;s:19:\"7169622225878781185\";i:3;s:19:\"7167773904839167234\";i:4;s:19:\"7172802083442183425\";}}s:3:\"90d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7145129706604465409\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7156252921078779138\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7146452221763390721\";i:5;s:19:\"7155512394934947073\";i:6;s:19:\"7151083714578042114\";i:7;s:19:\"7169622225878781185\";}}s:4:\"180d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7129383370848619778\";i:2;s:19:\"7129755685977476353\";i:3;s:19:\"7137351419178355970\";i:4;s:19:\"7135855210697608449\";i:5;s:19:\"7134004875767155969\";i:6;s:19:\"7140676738182384898\";i:7;s:19:\"7145129706604465409\";}}s:4:\"365d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7129383370848619778\";i:2;s:19:\"7129755685977476353\";i:3;s:19:\"7137351419178355970\";i:4;s:19:\"7135855210697608449\";i:5;s:19:\"7134004875767155969\";i:6;s:19:\"7062685612402314497\";i:7;s:19:\"7140676738182384898\";}}s:3:\"all\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"6888983063246753025\";i:1;s:19:\"6970026617703845122\";i:2;s:19:\"6787244858076646662\";i:3;s:19:\"6710545548656512262\";i:4;s:19:\"6615528595261492485\";i:5;s:19:\"6761773535431036165\";i:6;s:19:\"6674021627019136261\";i:7;s:19:\"6761352665499782405\";}}}}s:16:\"most_viral_media\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:1:{i:0;s:19:\"7172802083442183425\";}}s:3:\"30d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:5:{i:0;s:19:\"7170373753749130498\";i:1;s:19:\"7168515790956891393\";i:2;s:19:\"7169622225878781185\";i:3;s:19:\"7167773904839167234\";i:4;s:19:\"7172802083442183425\";}}s:3:\"90d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7145129706604465409\";i:1;s:19:\"7170373753749130498\";i:2;s:19:\"7156252921078779138\";i:3;s:19:\"7168515790956891393\";i:4;s:19:\"7146452221763390721\";i:5;s:19:\"7155512394934947073\";i:6;s:19:\"7151083714578042114\";i:7;s:19:\"7169622225878781185\";}}s:4:\"180d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7129383370848619778\";i:2;s:19:\"7129755685977476353\";i:3;s:19:\"7137351419178355970\";i:4;s:19:\"7135855210697608449\";i:5;s:19:\"7134004875767155969\";i:6;s:19:\"7140676738182384898\";i:7;s:19:\"7145129706604465409\";}}s:4:\"365d\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"7139581254663490817\";i:1;s:19:\"7129383370848619778\";i:2;s:19:\"7129755685977476353\";i:3;s:19:\"7137351419178355970\";i:4;s:19:\"7135855210697608449\";i:5;s:19:\"7134004875767155969\";i:6;s:19:\"7062685612402314497\";i:7;s:19:\"7140676738182384898\";}}s:3:\"all\";O:8:\"stdClass\":1:{s:9:\"media_ids\";a:8:{i:0;s:19:\"6888983063246753025\";i:1;s:19:\"6970026617703845122\";i:2;s:19:\"6787244858076646662\";i:3;s:19:\"6710545548656512262\";i:4;s:19:\"6615528595261492485\";i:5;s:19:\"6761773535431036165\";i:6;s:19:\"6674021627019136261\";i:7;s:19:\"6761352665499782405\";}}}}}}s:30:\"blogger_challenges_performance\";O:8:\"stdClass\":1:{s:4:\"data\";O:8:\"stdClass\":4:{s:16:\"challenges_stats\";O:8:\"stdClass\":1:{s:11:\"performance\";O:8:\"stdClass\":6:{s:2:\"7d\";O:8:\"stdClass\":3:{s:16:\"commercial_count\";i:0;s:8:\"post_ids\";a:0:{}s:11:\"basic_stats\";N;}s:3:\"30d\";O:8:\"stdClass\":3:{s:16:\"commercial_count\";i:0;s:8:\"post_ids\";a:0:{}s:11:\"basic_stats\";a:0:{}}s:3:\"90d\";O:8:\"stdClass\":3:{s:16:\"commercial_count\";i:0;s:8:\"post_ids\";a:0:{}s:11:\"basic_stats\";a:0:{}}s:4:\"180d\";O:8:\"stdClass\":3:{s:16:\"commercial_count\";i:0;s:8:\"post_ids\";a:0:{}s:11:\"basic_stats\";a:0:{}}s:4:\"365d\";O:8:\"stdClass\":3:{s:16:\"commercial_count\";i:0;s:8:\"post_ids\";a:0:{}s:11:\"basic_stats\";a:0:{}}s:3:\"all\";O:8:\"stdClass\":3:{s:16:\"commercial_count\";i:0;s:8:\"post_ids\";a:0:{}s:11:\"basic_stats\";a:2:{i:0;O:8:\"stdClass\":3:{s:9:\"challenge\";s:10:\"barbiegirl\";s:11:\"posts_count\";i:1;s:2:\"er\";d:4.68625;}i:1;O:8:\"stdClass\":3:{s:9:\"challenge\";s:9:\"littlebig\";s:11:\"posts_count\";i:1;s:2:\"er\";d:7.858077922077921;}}}}}s:5:\"posts\";a:0:{}s:10:\"challenges\";a:0:{}s:24:\"has_launched_advertising\";b:0;}}s:14:\"blogger_prices\";O:8:\"stdClass\":2:{s:4:\"data\";O:8:\"stdClass\":8:{s:10:\"post_price\";i:907;s:15:\"post_price_from\";i:650;s:13:\"post_price_to\";i:1000;s:3:\"cpm\";d:1.370815;s:8:\"cpm_from\";d:0.982393;s:6:\"cpm_to\";d:1.511373;s:8:\"cpm_mark\";s:4:\"poor\";s:11:\"cpm_similar\";i:37;}s:6:\"status\";O:8:\"stdClass\":1:{s:4:\"code\";s:2:\"OK\";}}s:17:\"blogger_thematics\";O:8:\"stdClass\":2:{s:4:\"data\";a:0:{}s:6:\"status\";O:8:\"stdClass\":1:{s:4:\"code\";s:7:\"NO_DATA\";}}s:11:\"blogger_emv\";O:8:\"stdClass\":2:{s:4:\"data\";O:8:\"stdClass\":6:{s:3:\"emv\";i:4100;s:8:\"emv_from\";i:3200;s:6:\"emv_to\";i:5300;s:14:\"emv_per_dollar\";d:4.52;s:8:\"emv_mark\";s:9:\"excellent\";s:11:\"emv_similar\";d:1.11;}s:6:\"status\";O:8:\"stdClass\":1:{s:4:\"code\";s:2:\"OK\";}}s:14:\"blogger_emails\";O:8:\"stdClass\":2:{s:4:\"data\";a:3:{i:0;s:22:\"booking@littlebig.band\";i:1;s:28:\"thelittlebigrussia@gmail.com\";i:2;s:18:\"press@littlebig.ru\";}s:6:\"status\";O:8:\"stdClass\":1:{s:4:\"code\";s:2:\"OK\";}}s:19:\"audience_sentiments\";O:8:\"stdClass\":1:{s:4:\"data\";O:8:\"stdClass\":4:{s:10:\"sentiments\";O:8:\"stdClass\":3:{s:8:\"POSITIVE\";O:8:\"stdClass\":2:{s:5:\"count\";i:10;s:3:\"prc\";d:16.67;}s:7:\"NEUTRAL\";O:8:\"stdClass\":2:{s:5:\"count\";i:48;s:3:\"prc\";i:80;}s:8:\"NEGATIVE\";O:8:\"stdClass\":2:{s:5:\"count\";i:2;s:3:\"prc\";d:3.33;}}s:5:\"score\";i:96;s:14:\"comments_count\";i:60;s:11:\"posts_count\";i:1;}}s:19:\"audience_age_gender\";O:8:\"stdClass\":2:{s:6:\"status\";O:8:\"stdClass\":1:{s:4:\"code\";s:2:\"OK\";}s:4:\"data\";O:8:\"stdClass\":7:{s:5:\"13-17\";O:8:\"stdClass\":2:{s:4:\"male\";d:7.73;s:6:\"female\";d:18.78;}s:5:\"18-24\";O:8:\"stdClass\":2:{s:4:\"male\";d:14.36;s:6:\"female\";d:24.31;}s:5:\"25-34\";O:8:\"stdClass\":2:{s:4:\"male\";d:12.71;s:6:\"female\";d:12.15;}s:5:\"35-44\";O:8:\"stdClass\":2:{s:4:\"male\";d:4.97;s:6:\"female\";d:1.1;}s:5:\"45-54\";O:8:\"stdClass\":2:{s:4:\"male\";d:2.21;s:6:\"female\";d:0.55;}s:5:\"55-64\";O:8:\"stdClass\":2:{s:4:\"male\";d:0.55;s:6:\"female\";i:0;}s:3:\"65+\";O:8:\"stdClass\":2:{s:4:\"male\";i:0;s:6:\"female\";d:0.55;}}}s:16:\"audience_by_type\";O:8:\"stdClass\":2:{s:6:\"status\";O:8:\"stdClass\":1:{s:4:\"code\";s:2:\"OK\";}s:4:\"data\";O:8:\"stdClass\":4:{s:4:\"real\";d:49.49;s:4:\"bots\";d:5.61;s:4:\"infs\";d:4.35;s:4:\"mass\";d:40.55;}}s:12:\"audience_geo\";O:8:\"stdClass\":2:{s:6:\"status\";O:8:\"stdClass\":1:{s:4:\"code\";s:2:\"OK\";}s:4:\"data\";O:8:\"stdClass\":2:{s:6:\"groups\";O:8:\"stdClass\":14:{s:6:\"africa\";d:0.07999999999999999;s:7:\"america\";d:4.609999999999999;s:4:\"asia\";d:3.0999999999999988;s:17:\"australia_pasific\";d:0.18000000000000002;s:7:\"baltics\";d:0.78;s:7:\"benelux\";d:0.9;s:4:\"dach\";d:2.25;s:4:\"imea\";d:2.0699999999999985;s:4:\"mena\";d:0.8800000000000001;s:7:\"nordics\";d:0.7300000000000001;s:5:\"latam\";d:0.99;s:6:\"latcar\";d:0.99;s:5:\"semea\";d:80.87000000000002;s:6:\"uk_ire\";d:1.1099999999999999;}s:9:\"countries\";a:5:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"ru\";s:4:\"code\";s:2:\"ru\";s:3:\"prc\";d:62.28;}i:1;O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"pl\";s:4:\"code\";s:2:\"pl\";s:3:\"prc\";d:5.88;}i:2;O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"ua\";s:4:\"code\";s:2:\"ua\";s:3:\"prc\";d:4.61;}i:3;O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"us\";s:4:\"code\";s:2:\"us\";s:3:\"prc\";d:3.84;}i:4;O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"kz\";s:4:\"code\";s:2:\"kz\";s:3:\"prc\";i:3;}}}}s:18:\"audience_languages\";O:8:\"stdClass\":2:{s:6:\"status\";O:8:\"stdClass\":1:{s:4:\"code\";s:2:\"OK\";}s:4:\"data\";a:6:{i:0;O:8:\"stdClass\":2:{s:5:\"title\";s:2:\"ru\";s:3:\"prc\";d:72.99;}i:1;O:8:\"stdClass\":2:{s:5:\"title\";s:2:\"en\";s:3:\"prc\";d:9.55;}i:2;O:8:\"stdClass\":2:{s:5:\"title\";s:2:\"pl\";s:3:\"prc\";d:4.93;}i:3;O:8:\"stdClass\":2:{s:5:\"title\";s:2:\"fr\";s:3:\"prc\";d:2.73;}i:4;O:8:\"stdClass\":2:{s:5:\"title\";s:2:\"de\";s:3:\"prc\";d:1.74;}i:5;O:8:\"stdClass\":2:{s:5:\"title\";s:5:\"Other\";s:3:\"prc\";d:8.06;}}}s:14:\"audience_races\";O:8:\"stdClass\":2:{s:6:\"status\";O:8:\"stdClass\":1:{s:4:\"code\";s:2:\"OK\";}s:4:\"data\";O:8:\"stdClass\":6:{s:8:\"hispanic\";d:14.36;s:6:\"indian\";d:8.29;s:9:\"caucasian\";d:53.04;s:5:\"asian\";d:16.57;s:7:\"arabian\";d:5.52;s:7:\"african\";d:2.21;}}s:3:\"aqs\";O:8:\"stdClass\":1:{s:4:\"data\";O:8:\"stdClass\":3:{s:5:\"value\";i:21;s:4:\"mark\";s:4:\"poor\";s:11:\"description\";O:8:\"stdClass\":3:{s:2:\"er\";O:8:\"stdClass\":2:{s:4:\"mark\";s:4:\"poor\";s:11:\"description\";O:8:\"stdClass\":1:{s:5:\"title\";O:8:\"stdClass\":2:{s:3:\"key\";s:6:\"LOW_ER\";s:4:\"text\";s:37:\"Audience engagement could be improved\";}}}s:20:\"comments_likes_ratio\";O:8:\"stdClass\":2:{s:4:\"mark\";s:7:\"average\";s:11:\"description\";O:8:\"stdClass\":1:{s:5:\"title\";O:8:\"stdClass\":2:{s:3:\"key\";s:12:\"AVG_CL_RATIO\";s:4:\"text\";s:31:\"Average comments to likes ratio\";}}}s:14:\"account_growth\";N;}}}s:13:\"media_by_type\";O:8:\"stdClass\":1:{s:4:\"data\";O:8:\"stdClass\":3:{s:11:\"recommended\";i:10;s:10:\"commercial\";i:0;s:22:\"potentially_commercial\";i:0;}}s:25:\"blogger_views_likes_chart\";O:8:\"stdClass\":2:{s:4:\"data\";a:30:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7172802083442183425\";s:1:\"x\";i:95100;s:1:\"y\";i:6653;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7172802083442183425.jpg?till=1673874000&sign=57e95d1a43f91fdfd31e9c2181823e4f\";}i:1;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7170373753749130498\";s:1:\"x\";i:1600000;s:1:\"y\";i:79100;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7170373753749130498.jpg?till=1673874000&sign=f770810f0e1adec082058c1ff235fb4d\";}i:2;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7169622225878781185\";s:1:\"x\";i:751300;s:1:\"y\";i:37200;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7169622225878781185.jpg?till=1673874000&sign=ba8d5beb41c2c44a970fd1aa751bccf3\";}i:3;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7168515790956891393\";s:1:\"x\";i:118900;s:1:\"y\";i:12900;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7168515790956891393.jpg?till=1673874000&sign=50b133785a07c728e4af14b7c926ef24\";}i:4;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7167773904839167234\";s:1:\"x\";i:172500;s:1:\"y\";i:12500;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7167773904839167234.jpg?till=1673874000&sign=c4e5d0a85b42b8735c1a4b3f25425e9f\";}i:5;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7156252921078779138\";s:1:\"x\";i:379600;s:1:\"y\";i:20900;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7156252921078779138.jpg?till=1673874000&sign=ca8e20ba6a132b5082dfcd302c3cf6e8\";}i:6;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7155512394934947073\";s:1:\"x\";i:705300;s:1:\"y\";i:30400;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7155512394934947073.jpg?till=1673874000&sign=f07ec4ed0e7ca53118c549f505313866\";}i:7;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7151083714578042114\";s:1:\"x\";i:980900;s:1:\"y\";i:27900;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7151083714578042114.jpg?till=1673874000&sign=0249f12c8d5f5728e46097c418a76f93\";}i:8;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7146452221763390721\";s:1:\"x\";i:225200;s:1:\"y\";i:4815;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7146452221763390721.jpg?till=1673874000&sign=fef0abf2da51e357e3cb1e0268ee02b6\";}i:9;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7145530877001354498\";s:1:\"x\";i:22300;s:1:\"y\";i:1301;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7145530877001354498.jpg?till=1673874000&sign=490bfff591705a150284a8eea1061ada\";}i:10;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7145129706604465409\";s:1:\"x\";i:2000000;s:1:\"y\";i:32800;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7145129706604465409.jpg?till=1673874000&sign=48af209d7c3d05b2edc4abe4d293999b\";}i:11;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7141428373238172929\";s:1:\"x\";i:2600000;s:1:\"y\";i:68900;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7141428373238172929.jpg?till=1673874000&sign=e9828082f8749f82da4530cb3f8e58c1\";}i:12;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7140676738182384898\";s:1:\"x\";i:1900000;s:1:\"y\";i:55800;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7140676738182384898.jpg?till=1673874000&sign=db481cb8b4436dfbcb137b057bcce035\";}i:13;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7139581254663490817\";s:1:\"x\";i:10700000;s:1:\"y\";i:463200;s:14:\"is_recommended\";b:1;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7139581254663490817.jpg?till=1673874000&sign=043a98555b1d31473ba3c872db70c4f2\";}i:14;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7137351419178355970\";s:1:\"x\";i:618000;s:1:\"y\";i:38400;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7137351419178355970.jpg?till=1673874000&sign=2b93e773835550c9338c09892eabcf9d\";}i:15;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7135855210697608449\";s:1:\"x\";i:7300000;s:1:\"y\";i:279000;s:14:\"is_recommended\";b:1;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7135855210697608449.jpg?till=1673874000&sign=cb5477cb4b774f798b2f69791a503119\";}i:16;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7135136754545298690\";s:1:\"x\";i:380600;s:1:\"y\";i:15200;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7135136754545298690.jpg?till=1673874000&sign=935c250078b993e28ae16019bd55e8a9\";}i:17;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7134748183250472194\";s:1:\"x\";i:2000000;s:1:\"y\";i:110600;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7134748183250472194.jpg?till=1673874000&sign=4b9a93d31cbf912d2c068e548d8d0ce7\";}i:18;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7134004875767155969\";s:1:\"x\";i:4000000;s:1:\"y\";i:215500;s:14:\"is_recommended\";b:1;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7134004875767155969.jpg?till=1673874000&sign=12ae75cffdd6f8ffc234b06349aeef91\";}i:19;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7133270393636359426\";s:1:\"x\";i:1200000;s:1:\"y\";i:43200;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7133270393636359426.jpg?till=1673874000&sign=26fbe28583ca6855458b1962e61c2b00\";}i:20;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7132879897369775362\";s:1:\"x\";i:459800;s:1:\"y\";i:17200;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7132879897369775362.jpg?till=1673874000&sign=01e5a020edec7ac90595ae7cf6da4628\";}i:21;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7130500907690659074\";s:1:\"x\";i:595900;s:1:\"y\";i:24200;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7130500907690659074.jpg?till=1673874000&sign=ee075b818afc3b2f2eb658120f57a5ed\";}i:22;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7130125028477242625\";s:1:\"x\";i:395800;s:1:\"y\";i:14900;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7130125028477242625.jpg?till=1673874000&sign=af9e557be0e544f7cfbca0ba980b7e10\";}i:23;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7129755685977476353\";s:1:\"x\";i:509400;s:1:\"y\";i:19200;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7129755685977476353.jpg?till=1673874000&sign=6cd34274928d901ac474c0733a4eecb4\";}i:24;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7129383370848619778\";s:1:\"x\";i:890900;s:1:\"y\";i:45600;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7129383370848619778.jpg?till=1673874000&sign=78c4f89ad8da0c70959e201afe0d8b94\";}i:25;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7128874126298696962\";s:1:\"x\";i:1300000;s:1:\"y\";i:53900;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7128874126298696962.jpg?till=1673874000&sign=149795082428a178a17607b2dbd30830\";}i:26;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7115853415875497218\";s:1:\"x\";i:18800;s:1:\"y\";i:1046;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7115853415875497218.jpg?till=1673874000&sign=e1020ffe3fca16253f48f8f83bb2259c\";}i:27;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7114323545643109634\";s:1:\"x\";i:76500;s:1:\"y\";i:5676;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7114323545643109634.jpg?till=1673874000&sign=1687e2d6e725fd4bd1ac554c6804d81f\";}i:28;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7114117830957714689\";s:1:\"x\";i:372500;s:1:\"y\";i:19300;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7114117830957714689.jpg?till=1673874000&sign=4ad72f3377830d62d18e664d13b696be\";}i:29;O:8:\"stdClass\":5:{s:2:\"id\";s:19:\"7113230744998219009\";s:1:\"x\";i:374400;s:1:\"y\";i:22000;s:14:\"is_recommended\";b:0;s:9:\"thumbnail\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/post\/7113230744998219009.jpg?till=1673874000&sign=14d39e8a282dc3bf713a88d4a8453596\";}}s:10:\"confidence\";O:8:\"stdClass\":3:{s:5:\"value\";i:100;s:13:\"model_version\";s:10:\"2019-01-01\";s:17:\"is_low_confidence\";b:0;}}s:15:\"social_networks\";a:3:{i:0;O:8:\"stdClass\":8:{s:4:\"type\";i:2;s:5:\"title\";s:10:\"Little Big\";s:9:\"social_id\";s:24:\"UCu7TZ_ATWgjgD9IrNLdnYDA\";s:8:\"username\";s:10:\"Little Big\";s:10:\"avatar_url\";s:124:\"https:\/\/yt3.ggpht.com\/6UMlkPnkrrfXZyzYJOTr53k0piHF9suyb3USe5FHDROUYfRT86IoupVhQ-eSKDukeJdw5O2DQ4c=s900-c-k-c0x00ffffff-no-rj\";s:17:\"subscribers_count\";i:7124081;s:2:\"er\";d:1.76;s:5:\"state\";s:5:\"READY\";}i:1;O:8:\"stdClass\":8:{s:4:\"type\";i:3;s:5:\"title\";s:9:\"littlebig\";s:9:\"social_id\";s:19:\"6557821753438371845\";s:8:\"username\";s:9:\"littlebig\";s:10:\"avatar_url\";s:127:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/user\/6557821753438371845.jpg?w=150&till=1673870400&sign=9f82cd04379fb2f21b267aa87583f008\";s:17:\"subscribers_count\";i:5000000;s:2:\"er\";d:4.68;s:5:\"state\";s:5:\"READY\";}i:2;O:8:\"stdClass\":8:{s:4:\"type\";i:5;s:5:\"title\";s:10:\"LITTLE BIG\";s:9:\"social_id\";s:10:\"1320115807\";s:8:\"username\";s:14:\"littlebig_band\";s:10:\"avatar_url\";s:77:\"https:\/\/pbs.twimg.com\/profile_images\/1235997545312251908\/oBp665oD_400x400.jpg\";s:17:\"subscribers_count\";i:41917;s:2:\"er\";d:0.131212;s:5:\"state\";s:5:\"READY\";}}s:12:\"audience_age\";a:2:{i:0;a:2:{s:4:\"data\";a:5:{i:0;d:7.73;i:1;d:14.36;i:2;d:12.71;i:3;d:4.97;i:4;d:2.76;}s:4:\"name\";s:3:\"男\";}i:1;a:2:{s:4:\"data\";a:5:{i:0;d:18.78;i:1;d:24.31;i:2;d:12.15;i:3;d:1.1;i:4;d:0.55;}s:4:\"name\";s:3:\"女\";}}s:28:\"demography_by_age_and_gender\";a:3:{s:4:\"male\";a:5:{s:5:\"13-17\";a:2:{s:5:\"title\";s:5:\"13-17\";s:5:\"value\";d:7.73;}s:5:\"18-24\";a:2:{s:5:\"title\";s:5:\"18-24\";s:5:\"value\";d:14.36;}s:5:\"25-34\";a:2:{s:5:\"title\";s:5:\"25-34\";s:5:\"value\";d:12.71;}s:5:\"35-44\";a:2:{s:5:\"title\";s:5:\"35-44\";s:5:\"value\";d:4.97;}s:5:\"45-64\";a:2:{s:5:\"title\";s:5:\"45-64\";s:5:\"value\";d:2.76;}}s:6:\"female\";a:5:{s:5:\"13-17\";a:2:{s:5:\"title\";s:5:\"13-17\";s:5:\"value\";d:18.78;}s:5:\"18-24\";a:2:{s:5:\"title\";s:5:\"18-24\";s:5:\"value\";d:24.31;}s:5:\"25-34\";a:2:{s:5:\"title\";s:5:\"25-34\";s:5:\"value\";d:12.15;}s:5:\"35-44\";a:2:{s:5:\"title\";s:5:\"35-44\";s:5:\"value\";d:1.1;}s:5:\"45-64\";a:2:{s:5:\"title\";s:5:\"45-64\";s:5:\"value\";d:0.55;}}s:5:\"group\";a:5:{s:5:\"13-17\";a:2:{s:5:\"title\";s:5:\"13-17\";s:5:\"value\";d:26.51;}s:5:\"18-24\";a:2:{s:5:\"title\";s:5:\"18-24\";s:5:\"value\";d:38.67;}s:5:\"25-34\";a:2:{s:5:\"title\";s:5:\"25-34\";s:5:\"value\";d:24.86;}s:5:\"35-44\";a:2:{s:5:\"title\";s:5:\"35-44\";s:5:\"value\";d:6.07;}s:5:\"45-64\";a:2:{s:5:\"title\";s:5:\"45-64\";s:5:\"value\";d:3.3099999999999996;}}}s:10:\"demography\";a:2:{i:0;a:2:{s:6:\"gender\";s:3:\"男\";s:5:\"value\";d:42.529999999999994;}i:1;a:2:{s:6:\"gender\";s:3:\"女\";s:5:\"value\";d:57.44;}}s:18:\"audience_geo_group\";a:15:{s:6:\"africa\";d:0.07999999999999999;s:7:\"america\";d:4.609999999999999;s:4:\"asia\";d:3.0999999999999988;s:17:\"australia_pasific\";d:0.18000000000000002;s:7:\"baltics\";d:0.78;s:7:\"benelux\";d:0.9;s:4:\"dach\";d:2.25;s:4:\"imea\";d:2.0699999999999985;s:4:\"mena\";d:0.8800000000000001;s:7:\"nordics\";d:0.7300000000000001;s:5:\"latam\";d:0.99;s:6:\"latcar\";d:0.99;s:5:\"semea\";d:80.87000000000002;s:6:\"uk_ire\";d:1.1099999999999999;s:5:\"group\";a:14:{i:0;a:2:{s:5:\"title\";s:6:\"africa\";s:5:\"value\";d:0.07999999999999999;}i:1;a:2:{s:5:\"title\";s:7:\"america\";s:5:\"value\";d:4.609999999999999;}i:2;a:2:{s:5:\"title\";s:4:\"asia\";s:5:\"value\";d:3.0999999999999988;}i:3;a:2:{s:5:\"title\";s:17:\"australia_pasific\";s:5:\"value\";d:0.18000000000000002;}i:4;a:2:{s:5:\"title\";s:7:\"baltics\";s:5:\"value\";d:0.78;}i:5;a:2:{s:5:\"title\";s:7:\"benelux\";s:5:\"value\";d:0.9;}i:6;a:2:{s:5:\"title\";s:4:\"dach\";s:5:\"value\";d:2.25;}i:7;a:2:{s:5:\"title\";s:4:\"imea\";s:5:\"value\";d:2.0699999999999985;}i:8;a:2:{s:5:\"title\";s:4:\"mena\";s:5:\"value\";d:0.8800000000000001;}i:9;a:2:{s:5:\"title\";s:7:\"nordics\";s:5:\"value\";d:0.7300000000000001;}i:10;a:2:{s:5:\"title\";s:5:\"latam\";s:5:\"value\";d:0.99;}i:11;a:2:{s:5:\"title\";s:6:\"latcar\";s:5:\"value\";d:0.99;}i:12;a:2:{s:5:\"title\";s:5:\"semea\";s:5:\"value\";d:80.87000000000002;}i:13;a:2:{s:5:\"title\";s:6:\"uk_ire\";s:5:\"value\";d:1.1099999999999999;}}}}s:10:\"validUntil\";i:57657398400;}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolReportJob\u0000socialType\";i:3;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 1 - 2022-12-16 13:09:34 [21.81ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 2 - 2022-12-16 13:09:34 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 3 - 2022-12-16 13:09:34 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 4 - 2022-12-16 13:09:34 [3.94ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 5 - 2022-12-16 13:09:34 [3.83ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 6 - 2022-12-16 13:09:34 [3.79ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 7 - 2022-12-16 13:09:34 [3.95ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 8 - 2022-12-16 13:09:34 [4.12ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-16' and `payment_details`.`end_date` >= '2022-12-16' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 9 - 2022-12-16 13:09:34 [3.89ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 10 - 2022-12-16 13:09:34 [3.9ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/report?channel=NASAtelevision&social_type=3
   Query 11 - 2022-12-16 13:09:34 [6.17ms] */
update `statistics` set `profile_view_number` = 2, `statistics`.`updated_at` = '2022-12-16 13:09:34' where `id` = 1;
/*==================================================*/
