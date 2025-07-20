/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-06 01:56:44 [61.59ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-06 01:56:44 [4.02ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-06 01:56:44 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-06 01:56:44 [4.08ms] */
select * from `users` where `id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-06 01:56:44 [3.98ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-06 01:56:44 [4.03ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-06 01:56:44 [8.27ms] */
select * from `menus` where `title` in ('module.kol', 'module.insight-list', 'module.campaign') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-06 01:56:44 [5.19ms] */
select * from `menus` where `menus`.`parent_id` in (1, 2, 3) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-06 01:56:45 [20.24ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-06 01:56:45 [3.97ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-06 01:56:45 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-06 01:56:45 [3.98ms] */
select * from `users` where `id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-06 01:56:45 [3.91ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-06 01:56:45 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-06 01:56:46 [14.01ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1670291806, 1670291806, '{"uuid":"9e3a3f45-ea98-464a-8de8-dc0475b864ef","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:13:{i:0;a:3:{s:5:\"basic\";a:3:{s:8:\"username\";s:4:\"nasa\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:197:\"https:\/\/scontent-arn2-1.cdninstagram.com\/vp\/fa66adc26aefbb03ca111c7688732f6a\/5E5FEDED\/t51.2885-19\/s150x150\/29090066_159271188110124_1152068159029641216_n.jpg?_nc_ht=scontent-arn2-1.cdninstagram.com\";}s:7:\"metrics\";a:5:{s:16:\"engagement_count\";d:794423.5884;s:2:\"er\";d:1.56;s:17:\"subscribers_count\";i:50924589;s:22:\"real_subscribers_count\";i:43917365;s:22:\"subscribers_growth_prc\";i:0;}s:8:\"features\";a:5:{s:15:\"social_networks\";a:0:{}s:14:\"blogger_topics\";a:2:{i:0;i:228;i:1;i:286;}s:17:\"blogger_thematics\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}s:3:\"aqs\";O:8:\"stdClass\":1:{s:4:\"mark\";s:4:\"good\";}}}i:1;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"taylorswift\";s:5:\"title\";s:12:\"Taylor Swift\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/11830955.jpg?w=320&till=1674097390&sign=137754e01b6fc9edb9e2d0f55f1429db\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}i:2;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"vancityreynolds\";s:5:\"title\";s:13:\"Ryan Reynolds\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1942463581.jpg?w=320&till=1674098165&sign=08e3f95d387c94b52126b825223f87ac\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"45857334\";s:2:\"er\";s:4:\"1.18\";s:16:\"engagement_count\";d:541116.5412;}}i:3;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:14:\"kevinhart4real\";s:5:\"title\";s:10:\"Kevin Hart\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6590609.jpg?w=320&till=1674098245&sign=428fb2be77bad0c8877398d37bad82f2\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"155039259\";s:2:\"er\";s:4:\"0.09\";s:16:\"engagement_count\";d:139535.3331;}}i:4;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"supersaf\";s:5:\"title\";s:8:\"SuperSaf\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/41428916.jpg?w=320&till=1674098340&sign=f440bcef026a9f129e335890f2377568\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"529231\";s:2:\"er\";s:4:\"1.83\";s:16:\"engagement_count\";d:9684.9273;}}i:5;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"selenagomez\";s:5:\"title\";s:12:\"Selena Gomez\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/460563723.jpg?w=320&till=1674098404&sign=6d026056d3295fff26a3ce2f51b6882a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"351492414\";s:2:\"er\";s:3:\"0.7\";s:16:\"engagement_count\";d:2460446.8979999996;}}i:6;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"pepamack\";s:5:\"title\";s:5:\"Petra\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/316719376.jpg?w=320&till=1674098485&sign=4e212d5d81a82b91a3236c928b0a6bd0\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:7:\"1051585\";s:2:\"er\";s:8:\"0.749461\";s:16:\"engagement_count\";d:7881.219456850001;}}i:7;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"kendalljenner\";s:5:\"title\";s:7:\"Kendall\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6380930.jpg?w=320&till=1674098702&sign=9866747cb6e12bd123b2c35133f6b619\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"260554636\";s:2:\"er\";s:4:\"0.89\";s:16:\"engagement_count\";d:2318936.2604;}}i:8;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"fcbarcelona\";s:5:\"title\";s:12:\"FC Barcelona\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/260375673.jpg?w=320&till=1674098749&sign=ef7d691b7d2d6d17045fa5cceb7fc471\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"112673770\";s:2:\"er\";s:4:\"0.34\";s:16:\"engagement_count\";d:383090.818;}}i:9;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"theshilpashetty\";s:5:\"title\";s:20:\"Shilpa Shetty Kundra\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1904097264.jpg?w=320&till=1674098825&sign=89b6ea598b251337fe1b310bb3cbd845\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"26807344\";s:2:\"er\";s:4:\"0.56\";s:16:\"engagement_count\";d:150121.1264;}}i:10;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"tarynwilliams\";s:5:\"title\";s:14:\"Taryn Williams\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/40507182.jpg?w=320&till=1674098881&sign=0fe2726db44d64e4248add6d6645e24a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:5:\"22017\";s:2:\"er\";s:4:\"0.83\";s:16:\"engagement_count\";d:182.7411;}}i:11;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:10:\"kobebryant\";s:5:\"title\";s:11:\"Kobe Bryant\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/351564405.jpg?w=320&till=1674100243&sign=cdbbac85a243afd7f765504d660fabae\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"21107168\";s:2:\"er\";s:4:\"7.31\";s:16:\"engagement_count\";d:1542933.9808;}}i:12;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"nathanwpyle\";s:5:\"title\";s:13:\"Nathan W Pyle\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/213194044.jpg?w=320&till=1674100064&sign=b69916f1d77dded42cacf303d332bb0d\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"626007\";s:2:\"er\";s:4:\"5.31\";s:16:\"engagement_count\";d:33240.971699999995;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:1;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-06 01:56:46 [4.37ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 9 and `k`.`username` in ('nasa', 'taylorswift', 'vancityreynolds', 'kevinhart4real', 'supersaf', 'selenagomez', 'pepamack', 'kendalljenner', 'fcbarcelona', 'theshilpashetty', 'tarynwilliams', 'kobebryant', 'nathanwpyle');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-06 01:56:46 [19.77ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-06 01:56:46 [5.26ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-06 01:56:46 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-06 01:56:46 [4.08ms] */
select * from `users` where `id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-06 01:56:46 [3.88ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-06 01:56:46 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2022-12-06 01:56:46 [4.08ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 9 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-06 04:18:09 [26.54ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-06 04:18:09 [4.56ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-06 04:18:09 [4.08ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-06 04:18:09 [4.1ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-06 04:18:09 [4.02ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-06 04:18:09 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-06 04:18:09 [4.22ms] */
select * from `menus` where `title` in ('module.user', 'module.genre') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-06 04:18:09 [3.99ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-06 04:18:09 [24.49ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-06 04:18:09 [4.18ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-06 04:18:09 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-06 04:18:09 [3.87ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-06 04:18:09 [4.01ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-06 04:18:09 [19.77ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-06 04:18:09 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-06 04:18:09 [4.82ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-06 04:18:09 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-06 04:18:09 [3.97ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-06 04:18:09 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-06 04:18:09 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-06 04:18:09 [4.1ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-06 04:18:09 [62.91ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-06 04:18:09 [4.16ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-06 04:18:09 [4.15ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-06 04:18:09 [3.97ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 1 - 2022-12-06 04:18:18 [21.74ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 2 - 2022-12-06 04:18:18 [3.94ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 3 - 2022-12-06 04:18:18 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 4 - 2022-12-06 04:18:18 [3.89ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 5 - 2022-12-06 04:18:18 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 6 - 2022-12-06 04:18:18 [3.72ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 7 - 2022-12-06 04:18:18 [6.4ms] */
update `oauth_access_tokens` set `revoked` = 1 where `id` = '7aed89ec6c07d131632b1d98c65ce9376fc0e22332c26a47bf58302a62e865c287c4a9066f7c7f3e';
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 1 - 2022-12-06 04:18:22 [21.79ms] */
select * from `users` where `email` = 'huyen.ptv@digidinos.com' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 2 - 2022-12-06 04:18:23 [6.43ms] */
select exists(select * from `oauth_personal_access_clients`) as `exists`;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 3 - 2022-12-06 04:18:23 [3.84ms] */
select * from `oauth_personal_access_clients` order by `id` desc limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 4 - 2022-12-06 04:18:23 [4.15ms] */
select * from `oauth_clients` where `oauth_clients`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 5 - 2022-12-06 04:18:23 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 6 - 2022-12-06 04:18:23 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 7 - 2022-12-06 04:18:23 [7.34ms] */
insert into `oauth_access_tokens` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) values ('952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985', 10, 1, '[]', 0, '2022-12-06 04:18:23', '2022-12-06 04:18:23', '2022-12-21 04:18:23');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 8 - 2022-12-06 04:18:23 [4.01ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 9 - 2022-12-06 04:18:23 [12.89ms] */
update `oauth_access_tokens` set `name` = 'huyen.ptv@digidinos.com' where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-06 04:18:23 [22.21ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-06 04:18:23 [4.09ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-06 04:18:23 [4.05ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-06 04:18:23 [4.15ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-06 04:18:23 [3.94ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-06 04:18:23 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-06 04:18:23 [4.36ms] */
select * from `menus` where `title` in ('module.kol', 'module.insight-list', 'module.campaign') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-06 04:18:23 [4.11ms] */
select * from `menus` where `menus`.`parent_id` in (1, 2, 3) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-06 04:18:24 [22.54ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-06 04:18:24 [4.13ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-06 04:18:24 [4.08ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-06 04:18:24 [3.92ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-06 04:18:24 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-06 04:18:24 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-06 04:18:24 [8.45ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1670300304, 1670300304, '{"uuid":"7aad2ae2-0e9d-46aa-b3ae-cc36bea24e0e","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:13:{i:0;a:3:{s:5:\"basic\";a:3:{s:8:\"username\";s:4:\"nasa\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:197:\"https:\/\/scontent-arn2-1.cdninstagram.com\/vp\/fa66adc26aefbb03ca111c7688732f6a\/5E5FEDED\/t51.2885-19\/s150x150\/29090066_159271188110124_1152068159029641216_n.jpg?_nc_ht=scontent-arn2-1.cdninstagram.com\";}s:7:\"metrics\";a:5:{s:16:\"engagement_count\";d:794423.5884;s:2:\"er\";d:1.56;s:17:\"subscribers_count\";i:50924589;s:22:\"real_subscribers_count\";i:43917365;s:22:\"subscribers_growth_prc\";i:0;}s:8:\"features\";a:5:{s:15:\"social_networks\";a:0:{}s:14:\"blogger_topics\";a:2:{i:0;i:228;i:1;i:286;}s:17:\"blogger_thematics\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}s:3:\"aqs\";O:8:\"stdClass\":1:{s:4:\"mark\";s:4:\"good\";}}}i:1;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"taylorswift\";s:5:\"title\";s:12:\"Taylor Swift\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/11830955.jpg?w=320&till=1674097390&sign=137754e01b6fc9edb9e2d0f55f1429db\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}i:2;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"vancityreynolds\";s:5:\"title\";s:13:\"Ryan Reynolds\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1942463581.jpg?w=320&till=1674098165&sign=08e3f95d387c94b52126b825223f87ac\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"45857334\";s:2:\"er\";s:4:\"1.18\";s:16:\"engagement_count\";d:541116.5412;}}i:3;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:14:\"kevinhart4real\";s:5:\"title\";s:10:\"Kevin Hart\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6590609.jpg?w=320&till=1674098245&sign=428fb2be77bad0c8877398d37bad82f2\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"155039259\";s:2:\"er\";s:4:\"0.09\";s:16:\"engagement_count\";d:139535.3331;}}i:4;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"supersaf\";s:5:\"title\";s:8:\"SuperSaf\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/41428916.jpg?w=320&till=1674098340&sign=f440bcef026a9f129e335890f2377568\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"529231\";s:2:\"er\";s:4:\"1.83\";s:16:\"engagement_count\";d:9684.9273;}}i:5;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"selenagomez\";s:5:\"title\";s:12:\"Selena Gomez\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/460563723.jpg?w=320&till=1674098404&sign=6d026056d3295fff26a3ce2f51b6882a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"351492414\";s:2:\"er\";s:3:\"0.7\";s:16:\"engagement_count\";d:2460446.8979999996;}}i:6;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"pepamack\";s:5:\"title\";s:5:\"Petra\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/316719376.jpg?w=320&till=1674098485&sign=4e212d5d81a82b91a3236c928b0a6bd0\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:7:\"1051585\";s:2:\"er\";s:8:\"0.749461\";s:16:\"engagement_count\";d:7881.219456850001;}}i:7;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"kendalljenner\";s:5:\"title\";s:7:\"Kendall\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6380930.jpg?w=320&till=1674098702&sign=9866747cb6e12bd123b2c35133f6b619\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"260554636\";s:2:\"er\";s:4:\"0.89\";s:16:\"engagement_count\";d:2318936.2604;}}i:8;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"fcbarcelona\";s:5:\"title\";s:12:\"FC Barcelona\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/260375673.jpg?w=320&till=1674098749&sign=ef7d691b7d2d6d17045fa5cceb7fc471\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"112673770\";s:2:\"er\";s:4:\"0.34\";s:16:\"engagement_count\";d:383090.818;}}i:9;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"theshilpashetty\";s:5:\"title\";s:20:\"Shilpa Shetty Kundra\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1904097264.jpg?w=320&till=1674098825&sign=89b6ea598b251337fe1b310bb3cbd845\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"26807344\";s:2:\"er\";s:4:\"0.56\";s:16:\"engagement_count\";d:150121.1264;}}i:10;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"tarynwilliams\";s:5:\"title\";s:14:\"Taryn Williams\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/40507182.jpg?w=320&till=1674098881&sign=0fe2726db44d64e4248add6d6645e24a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:5:\"22017\";s:2:\"er\";s:4:\"0.83\";s:16:\"engagement_count\";d:182.7411;}}i:11;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:10:\"kobebryant\";s:5:\"title\";s:11:\"Kobe Bryant\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/351564405.jpg?w=320&till=1674100243&sign=cdbbac85a243afd7f765504d660fabae\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"21107168\";s:2:\"er\";s:4:\"7.31\";s:16:\"engagement_count\";d:1542933.9808;}}i:12;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"nathanwpyle\";s:5:\"title\";s:13:\"Nathan W Pyle\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/213194044.jpg?w=320&till=1674100064&sign=b69916f1d77dded42cacf303d332bb0d\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"626007\";s:2:\"er\";s:4:\"5.31\";s:16:\"engagement_count\";d:33240.971699999995;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:1;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-06 04:18:24 [4.28ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 10 and `k`.`username` in ('nasa', 'taylorswift', 'vancityreynolds', 'kevinhart4real', 'supersaf', 'selenagomez', 'pepamack', 'kendalljenner', 'fcbarcelona', 'theshilpashetty', 'tarynwilliams', 'kobebryant', 'nathanwpyle');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-06 04:18:25 [20.84ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-06 04:18:25 [3.97ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-06 04:18:25 [4ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-06 04:18:25 [4.1ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-06 04:18:25 [4ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-06 04:18:25 [9.65ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2022-12-06 04:18:25 [4.06ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 10 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 8 - 2022-12-06 04:18:25 [4.07ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 9 - 2022-12-06 04:18:25 [3.95ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 10 - 2022-12-06 04:18:25 [3.96ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 1 - 2022-12-06 04:18:25 [20.33ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 2 - 2022-12-06 04:18:25 [4.46ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 3 - 2022-12-06 04:18:25 [4.12ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 4 - 2022-12-06 04:18:25 [3.96ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 5 - 2022-12-06 04:18:25 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 6 - 2022-12-06 04:18:25 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 7 - 2022-12-06 04:18:25 [24.83ms] */
select *, (select SUM(cost) as total_cost from `campaign_details` where `campaigns`.`id` = `campaign_details`.`campaign_id`) as `total_cost`, (select SUM(feed_reach + reed_reach) as total_reach from `tab_reports` where `campaigns`.`id` = `tab_reports`.`campaign_id`) as `total_reach`, (select count(*) from `campaign_details` where `campaigns`.`id` = `campaign_details`.`campaign_id`) as `campaign_details_count`, (select reach_rate from `tab_reports` where `campaigns`.`id` = `tab_reports`.`campaign_id`) as `reach_rate`, (select revenue from `tab_reports` where `campaigns`.`id` = `tab_reports`.`campaign_id`) as `revenue`, (select roas from `tab_reports` where `campaigns`.`id` = `tab_reports`.`campaign_id`) as `roas`, (select name from `genres` where `campaigns`.`genre_id` = `genres`.`id`) as `genre_name` from `campaigns` where `user_id` = 10 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 8 - 2022-12-06 04:18:25 [3.78ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` in (1);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 9 - 2022-12-06 04:18:25 [3.98ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` in (1);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 10 - 2022-12-06 04:18:25 [4ms] */
select * from `genres` where `genres`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 1 - 2022-12-06 04:18:26 [20.28ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 1 - 2022-12-06 04:18:26 [23.74ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 2 - 2022-12-06 04:18:26 [18.23ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 2 - 2022-12-06 04:18:26 [4.12ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 3 - 2022-12-06 04:18:26 [3.97ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 3 - 2022-12-06 04:18:26 [4.19ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 4 - 2022-12-06 04:18:26 [3.98ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 4 - 2022-12-06 04:18:26 [3.95ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 5 - 2022-12-06 04:18:26 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 5 - 2022-12-06 04:18:26 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 6 - 2022-12-06 04:18:26 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 6 - 2022-12-06 04:18:26 [4.46ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 7 - 2022-12-06 04:18:26 [4.04ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 7 - 2022-12-06 04:18:26 [3.93ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 8 - 2022-12-06 04:18:26 [7.44ms] */
select * from `permissions`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 8 - 2022-12-06 04:18:26 [10.66ms] */
select * from `permissions`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 9 - 2022-12-06 04:18:26 [6.21ms] */
select `roles`.*, `role_has_permissions`.`permission_id` as `pivot_permission_id`, `role_has_permissions`.`role_id` as `pivot_role_id` from `roles` inner join `role_has_permissions` on `roles`.`id` = `role_has_permissions`.`role_id` where `role_has_permissions`.`permission_id` in (11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 9 - 2022-12-06 04:18:26 [4.63ms] */
select `roles`.*, `role_has_permissions`.`permission_id` as `pivot_permission_id`, `role_has_permissions`.`role_id` as `pivot_role_id` from `roles` inner join `role_has_permissions` on `roles`.`id` = `role_has_permissions`.`role_id` where `role_has_permissions`.`permission_id` in (11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-06 04:18:26 [30.7ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 1 - 2022-12-06 04:18:26 [31.6ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 1 - 2022-12-06 04:18:26 [35.53ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-06 04:18:26 [4.01ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 2 - 2022-12-06 04:18:26 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 2 - 2022-12-06 04:18:26 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-06 04:18:26 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 3 - 2022-12-06 04:18:26 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 3 - 2022-12-06 04:18:26 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-06 04:18:26 [3.93ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 4 - 2022-12-06 04:18:26 [3.91ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 4 - 2022-12-06 04:18:26 [4.19ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-06 04:18:26 [4.11ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 5 - 2022-12-06 04:18:26 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 10 - 2022-12-06 04:18:26 [4.12ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 5 - 2022-12-06 04:18:26 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 10 - 2022-12-06 04:18:26 [4ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-06 04:18:26 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 6 - 2022-12-06 04:18:26 [4.78ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 6 - 2022-12-06 04:18:26 [4.25ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 11 - 2022-12-06 04:18:26 [7.06ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2022-12-06 04:18:26 [4.84ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 10 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 7 - 2022-12-06 04:18:26 [4.08ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 7 - 2022-12-06 04:18:26 [6.62ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 11 - 2022-12-06 04:18:26 [15.04ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 8 - 2022-12-06 04:18:26 [9.38ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 12 - 2022-12-06 04:18:26 [3.92ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 9 - 2022-12-06 04:18:26 [3.89ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 1 - 2022-12-06 04:18:26 [32.82ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 13 - 2022-12-06 04:18:26 [5.19ms] */
select * from `kols` where 0 = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 10 - 2022-12-06 04:18:26 [4ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 8 - 2022-12-06 04:18:26 [6.23ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 8 - 2022-12-06 04:18:26 [7.15ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 2 - 2022-12-06 04:18:26 [4.11ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 14 - 2022-12-06 04:18:26 [4.17ms] */
select * from `campaign_details` where `campaign_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 9 - 2022-12-06 04:18:26 [4.06ms] */
select * from `campaign_details` where `campaign_id` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 9 - 2022-12-06 04:18:26 [4.32ms] */
select `campaign_detail_id` from `campaign_detail_posts`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 3 - 2022-12-06 04:18:26 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 15 - 2022-12-06 04:18:26 [4.16ms] */
select * from `kols` where 0 = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 10 - 2022-12-06 04:18:26 [4.71ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` = 8 and 1 = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 4 - 2022-12-06 04:18:26 [4.06ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 16 - 2022-12-06 04:18:26 [4.04ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 5 - 2022-12-06 04:18:26 [3.81ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 17 - 2022-12-06 04:18:26 [3.82ms] */
select * from `kols` where 0 = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 6 - 2022-12-06 04:18:26 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 18 - 2022-12-06 04:18:26 [4.34ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 7 - 2022-12-06 04:18:26 [3.98ms] */
select * from `tags` where `user_id` = 10 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 19 - 2022-12-06 04:18:26 [3.99ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-06 04:18:27 [20.59ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-06 04:18:27 [4.03ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-06 04:18:27 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-06 04:18:27 [4.07ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-06 04:18:27 [4.22ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-06 04:18:27 [4.07ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2022-12-06 04:18:27 [4.12ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 10 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 8 - 2022-12-06 04:18:27 [4.1ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 9 - 2022-12-06 04:18:27 [4.08ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 10 - 2022-12-06 04:18:27 [4.21ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 1 - 2022-12-06 04:18:31 [22.48ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 2 - 2022-12-06 04:18:31 [3.93ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 3 - 2022-12-06 04:18:31 [3.97ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 4 - 2022-12-06 04:18:31 [4.1ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 5 - 2022-12-06 04:18:31 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 6 - 2022-12-06 04:18:31 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 7 - 2022-12-06 04:18:31 [4.31ms] */
select count(*) as aggregate from `campaigns` where `id` = 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 8 - 2022-12-06 04:18:31 [4.2ms] */
select * from `campaigns` where `campaigns`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 9 - 2022-12-06 04:18:31 [4.07ms] */
select `kols`.*, `campaign_details`.`campaign_id` as `pivot_campaign_id`, `campaign_details`.`kol_id` as `pivot_kol_id`, `campaign_details`.`kol_status` as `pivot_kol_status` from `kols` inner join `campaign_details` on `kols`.`id` = `campaign_details`.`kol_id` where `campaign_details`.`campaign_id` in (1);
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 10 - 2022-12-06 04:18:31 [3.98ms] */
select `id` from `kols` where `username` in ('taylorswift', 'vancityreynolds', 'kevinhart4real', 'kobebryant', 'supersaf', 'selenagomez', 'nasa', 'fcbarcelona', 'pepamack', 'theshilpashetty', 'tarynwilliams', 'kendalljenner', 'nathanwpyle', 'NASAtelevision');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 11 - 2022-12-06 04:18:31 [4.02ms] */
select * from `campaigns` where `campaigns`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 12 - 2022-12-06 04:18:31 [3.96ms] */
select `kols`.*, `campaign_details`.`campaign_id` as `pivot_campaign_id`, `campaign_details`.`kol_id` as `pivot_kol_id`, `campaign_details`.`kol_status` as `pivot_kol_status` from `kols` inner join `campaign_details` on `kols`.`id` = `campaign_details`.`kol_id` where `campaign_details`.`campaign_id` = 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaign-detail/import-kols
   Query 13 - 2022-12-06 04:18:31 [7.44ms] */
insert into `campaign_details` (`campaign_id`, `kol_id`) values (1, 9), (1, 8), (1, 4), (1, 12), (1, 1), (1, 13), (1, 7), (1, 6), (1, 5), (1, 11), (1, 2), (1, 10), (1, 3);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 1 - 2022-12-06 04:18:31 [22.35ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 1 - 2022-12-06 04:18:31 [20.72ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 2 - 2022-12-06 04:18:31 [4.08ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 2 - 2022-12-06 04:18:31 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 3 - 2022-12-06 04:18:31 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 3 - 2022-12-06 04:18:31 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 4 - 2022-12-06 04:18:31 [3.86ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 4 - 2022-12-06 04:18:31 [3.85ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 5 - 2022-12-06 04:18:31 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 5 - 2022-12-06 04:18:31 [4.03ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 6 - 2022-12-06 04:18:31 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 6 - 2022-12-06 04:18:31 [4.08ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 7 - 2022-12-06 04:18:31 [3.84ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 7 - 2022-12-06 04:18:31 [7.24ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 8 - 2022-12-06 04:18:31 [4.07ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 8 - 2022-12-06 04:18:31 [4.44ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 9 - 2022-12-06 04:18:31 [4ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 9 - 2022-12-06 04:18:31 [4.73ms] */
select * from `campaign_details` where `campaign_id` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 10 - 2022-12-06 04:18:31 [3.96ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 10 - 2022-12-06 04:18:31 [3.99ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 11 - 2022-12-06 04:18:31 [3.72ms] */
select * from `kols` where 0 = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 11 - 2022-12-06 04:18:31 [3.84ms] */
select * from `kols` where `kols`.`id` = 8 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 12 - 2022-12-06 04:18:31 [3.82ms] */
select * from `campaign_details` where `campaign_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 12 - 2022-12-06 04:18:31 [3.86ms] */
select * from `kols` where `kols`.`id` = 4 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 13 - 2022-12-06 04:18:31 [4.07ms] */
select * from `kols` where `id` in (9, 8, 4, 12, 1, 13, 7, 6, 5, 11, 2, 10, 3);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 13 - 2022-12-06 04:18:31 [3.92ms] */
select * from `kols` where `kols`.`id` = 12 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 14 - 2022-12-06 04:18:31 [16.33ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 14 - 2022-12-06 04:18:31 [18.89ms] */
select * from `kols` where `kols`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 15 - 2022-12-06 04:18:31 [5.49ms] */
select * from `kols` where 0 = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 15 - 2022-12-06 04:18:31 [3.97ms] */
select * from `kols` where `kols`.`id` = 13 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 16 - 2022-12-06 04:18:31 [3.76ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 16 - 2022-12-06 04:18:31 [3.9ms] */
select * from `kols` where `kols`.`id` = 7 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 17 - 2022-12-06 04:18:31 [3.88ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 17 - 2022-12-06 04:18:31 [4.04ms] */
select * from `kols` where `kols`.`id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 18 - 2022-12-06 04:18:31 [3.86ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 18 - 2022-12-06 04:18:31 [3.89ms] */
select * from `kols` where `kols`.`id` = 5 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 19 - 2022-12-06 04:18:31 [3.84ms] */
select * from `kols` where `kols`.`id` = 8 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 19 - 2022-12-06 04:18:31 [3.87ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 20 - 2022-12-06 04:18:31 [3.85ms] */
select * from `kols` where `kols`.`id` = 4 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 20 - 2022-12-06 04:18:31 [3.8ms] */
select * from `kols` where `kols`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 21 - 2022-12-06 04:18:31 [3.82ms] */
select * from `kols` where `kols`.`id` = 12 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 21 - 2022-12-06 04:18:31 [4.05ms] */
select * from `kols` where `kols`.`id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 22 - 2022-12-06 04:18:31 [3.85ms] */
select * from `kols` where `kols`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 22 - 2022-12-06 04:18:31 [3.86ms] */
select * from `kols` where `kols`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 23 - 2022-12-06 04:18:31 [4.41ms] */
select * from `kols` where `kols`.`id` = 13 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 23 - 2022-12-06 04:18:31 [4.06ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 24 - 2022-12-06 04:18:31 [4.27ms] */
select * from `kols` where `kols`.`id` = 7 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 24 - 2022-12-06 04:18:31 [3.78ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 25 - 2022-12-06 04:18:31 [4.17ms] */
select * from `kols` where `kols`.`id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 25 - 2022-12-06 04:18:31 [4.09ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 8;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 26 - 2022-12-06 04:18:31 [4.23ms] */
select * from `kols` where `kols`.`id` = 5 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 26 - 2022-12-06 04:18:31 [4.01ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 8 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 27 - 2022-12-06 04:18:31 [4.24ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 27 - 2022-12-06 04:18:31 [3.91ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 28 - 2022-12-06 04:18:31 [3.9ms] */
select * from `kols` where `kols`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 28 - 2022-12-06 04:18:31 [3.77ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 4 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 29 - 2022-12-06 04:18:31 [4.69ms] */
select * from `kols` where `kols`.`id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 29 - 2022-12-06 04:18:31 [4.97ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 12;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 30 - 2022-12-06 04:18:31 [4.18ms] */
select * from `kols` where `kols`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 30 - 2022-12-06 04:18:31 [3.91ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 12 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 31 - 2022-12-06 04:18:31 [3.83ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 31 - 2022-12-06 04:18:31 [3.88ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 32 - 2022-12-06 04:18:31 [3.9ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 32 - 2022-12-06 04:18:31 [3.81ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 1 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 33 - 2022-12-06 04:18:31 [3.92ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 8;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 33 - 2022-12-06 04:18:31 [3.88ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 34 - 2022-12-06 04:18:31 [3.84ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 8 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 34 - 2022-12-06 04:18:31 [3.8ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 13 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 35 - 2022-12-06 04:18:31 [3.86ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 35 - 2022-12-06 04:18:31 [3.84ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 7;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 36 - 2022-12-06 04:18:31 [3.76ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 4 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 36 - 2022-12-06 04:18:31 [3.82ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 7 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 37 - 2022-12-06 04:18:31 [3.77ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 12;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 37 - 2022-12-06 04:18:31 [3.79ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 6;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 38 - 2022-12-06 04:18:31 [3.73ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 12 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 38 - 2022-12-06 04:18:31 [3.84ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 6 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 39 - 2022-12-06 04:18:31 [3.83ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 39 - 2022-12-06 04:18:31 [3.84ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 5;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 40 - 2022-12-06 04:18:31 [5.83ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 1 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 40 - 2022-12-06 04:18:31 [6.23ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 5 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 41 - 2022-12-06 04:18:31 [3.94ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 41 - 2022-12-06 04:18:31 [3.89ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 11;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 42 - 2022-12-06 04:18:31 [3.85ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 13 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 42 - 2022-12-06 04:18:31 [3.89ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 11 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 43 - 2022-12-06 04:18:31 [3.96ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 7;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 43 - 2022-12-06 04:18:31 [4.48ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 2;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 44 - 2022-12-06 04:18:31 [4.57ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 7 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 44 - 2022-12-06 04:18:31 [3.99ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 45 - 2022-12-06 04:18:31 [4.04ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 6;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 45 - 2022-12-06 04:18:31 [3.8ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 46 - 2022-12-06 04:18:31 [3.75ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 6 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 46 - 2022-12-06 04:18:31 [3.79ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 10 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 47 - 2022-12-06 04:18:31 [3.92ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 5;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 47 - 2022-12-06 04:18:31 [3.93ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 48 - 2022-12-06 04:18:31 [3.74ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 5 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 48 - 2022-12-06 04:18:31 [3.9ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 3 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 49 - 2022-12-06 04:18:31 [4.42ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 11;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 50 - 2022-12-06 04:18:31 [6.16ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 11 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 51 - 2022-12-06 04:18:31 [3.88ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 2;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 52 - 2022-12-06 04:18:31 [3.85ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 53 - 2022-12-06 04:18:31 [4.06ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 54 - 2022-12-06 04:18:31 [3.85ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 10 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 55 - 2022-12-06 04:18:31 [3.99ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 56 - 2022-12-06 04:18:31 [3.97ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 3 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 1 - 2022-12-06 04:18:34 [21.53ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 2 - 2022-12-06 04:18:34 [3.94ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 3 - 2022-12-06 04:18:34 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 4 - 2022-12-06 04:18:34 [4.01ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 5 - 2022-12-06 04:18:34 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 6 - 2022-12-06 04:18:34 [3.77ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 7 - 2022-12-06 04:18:34 [6.06ms] */
select * from `campaign_details` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 8 - 2022-12-06 04:18:34 [3.98ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 9 - 2022-12-06 04:18:34 [3.97ms] */
select * from `campaigns` where `campaigns`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 10 - 2022-12-06 04:18:34 [7.33ms] */
update `campaign_details` set `kol_status` = 3, `campaign_details`.`updated_at` = '2022-12-06 04:18:34' where `id` = 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 11 - 2022-12-06 04:18:34 [4ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 12 - 2022-12-06 04:18:34 [3.99ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 13 - 2022-12-06 04:18:34 [4.06ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 1 - 2022-12-06 04:18:34 [19.76ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 1 - 2022-12-06 04:18:34 [22.78ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 1 - 2022-12-06 04:18:34 [20.96ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 2 - 2022-12-06 04:18:34 [3.76ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 2 - 2022-12-06 04:18:34 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 2 - 2022-12-06 04:18:34 [4.3ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 3 - 2022-12-06 04:18:34 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 3 - 2022-12-06 04:18:34 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 3 - 2022-12-06 04:18:34 [4.15ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 4 - 2022-12-06 04:18:34 [3.98ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 4 - 2022-12-06 04:18:34 [3.9ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 4 - 2022-12-06 04:18:34 [4.26ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 5 - 2022-12-06 04:18:34 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 5 - 2022-12-06 04:18:34 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 5 - 2022-12-06 04:18:34 [3.72ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 6 - 2022-12-06 04:18:34 [3.74ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 6 - 2022-12-06 04:18:34 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 6 - 2022-12-06 04:18:34 [4.4ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 7 - 2022-12-06 04:18:34 [3.79ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 7 - 2022-12-06 04:18:34 [5.13ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 7 - 2022-12-06 04:18:34 [3.85ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 8 - 2022-12-06 04:18:34 [3.98ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 8 - 2022-12-06 04:18:34 [4.34ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 8 - 2022-12-06 04:18:34 [4.45ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 9 - 2022-12-06 04:18:34 [4.12ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 9 - 2022-12-06 04:18:34 [4.16ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 9 - 2022-12-06 04:18:34 [4.96ms] */
select * from `campaign_details` where `campaign_id` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 10 - 2022-12-06 04:18:34 [4.3ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 10 - 2022-12-06 04:18:34 [3.9ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 10 - 2022-12-06 04:18:34 [4.85ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 11 - 2022-12-06 04:18:34 [4.58ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 11 - 2022-12-06 04:18:34 [4.74ms] */
select * from `kols` where `id` in (9);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 11 - 2022-12-06 04:18:34 [5.21ms] */
select * from `kols` where `kols`.`id` = 8 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/1
   Query 12 - 2022-12-06 04:18:34 [4.02ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 12 - 2022-12-06 04:18:34 [4.38ms] */
select * from `campaign_details` where `campaign_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 12 - 2022-12-06 04:18:34 [4.91ms] */
select * from `kols` where `kols`.`id` = 4 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 13 - 2022-12-06 04:18:34 [4.24ms] */
select * from `kols` where `id` in (9, 8, 4, 12, 1, 13, 7, 6, 5, 11, 2, 10, 3);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 13 - 2022-12-06 04:18:34 [3.93ms] */
select * from `kols` where `kols`.`id` = 12 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 14 - 2022-12-06 04:18:34 [4ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 14 - 2022-12-06 04:18:34 [3.91ms] */
select * from `kols` where `kols`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 15 - 2022-12-06 04:18:34 [3.94ms] */
select * from `kols` where `id` in (9);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 15 - 2022-12-06 04:18:34 [4.48ms] */
select * from `kols` where `kols`.`id` = 13 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 16 - 2022-12-06 04:18:34 [3.87ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 16 - 2022-12-06 04:18:34 [3.91ms] */
select * from `kols` where `kols`.`id` = 7 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 17 - 2022-12-06 04:18:34 [4.36ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 17 - 2022-12-06 04:18:34 [3.85ms] */
select * from `kols` where `kols`.`id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 18 - 2022-12-06 04:18:34 [3.88ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 18 - 2022-12-06 04:18:34 [3.87ms] */
select * from `kols` where `kols`.`id` = 5 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 19 - 2022-12-06 04:18:34 [3.84ms] */
select * from `kols` where `kols`.`id` = 8 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 19 - 2022-12-06 04:18:34 [3.83ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 20 - 2022-12-06 04:18:34 [3.9ms] */
select * from `kols` where `kols`.`id` = 4 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 20 - 2022-12-06 04:18:34 [3.88ms] */
select * from `kols` where `kols`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 21 - 2022-12-06 04:18:34 [3.87ms] */
select * from `kols` where `kols`.`id` = 12 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 21 - 2022-12-06 04:18:34 [3.8ms] */
select * from `kols` where `kols`.`id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 22 - 2022-12-06 04:18:34 [3.89ms] */
select * from `kols` where `kols`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 22 - 2022-12-06 04:18:34 [3.83ms] */
select * from `kols` where `kols`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 23 - 2022-12-06 04:18:34 [4.01ms] */
select * from `kols` where `kols`.`id` = 13 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 23 - 2022-12-06 04:18:34 [3.96ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 24 - 2022-12-06 04:18:34 [4.27ms] */
select * from `kols` where `kols`.`id` = 7 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 24 - 2022-12-06 04:18:34 [3.87ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 25 - 2022-12-06 04:18:34 [3.96ms] */
select * from `kols` where `kols`.`id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 25 - 2022-12-06 04:18:34 [4.34ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 8;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 26 - 2022-12-06 04:18:34 [4.52ms] */
select * from `kols` where `kols`.`id` = 5 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 26 - 2022-12-06 04:18:34 [4.48ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 8 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 27 - 2022-12-06 04:18:34 [3.88ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 27 - 2022-12-06 04:18:34 [3.84ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 28 - 2022-12-06 04:18:34 [3.86ms] */
select * from `kols` where `kols`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 28 - 2022-12-06 04:18:34 [3.78ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 4 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 29 - 2022-12-06 04:18:34 [3.96ms] */
select * from `kols` where `kols`.`id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 29 - 2022-12-06 04:18:34 [3.93ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 12;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 30 - 2022-12-06 04:18:34 [4.06ms] */
select * from `kols` where `kols`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 30 - 2022-12-06 04:18:34 [4.2ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 12 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 31 - 2022-12-06 04:18:34 [3.96ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 31 - 2022-12-06 04:18:34 [4.06ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 32 - 2022-12-06 04:18:34 [3.86ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 32 - 2022-12-06 04:18:34 [3.96ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 1 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 33 - 2022-12-06 04:18:34 [3.86ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 8;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 33 - 2022-12-06 04:18:34 [3.85ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 34 - 2022-12-06 04:18:34 [3.89ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 8 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 34 - 2022-12-06 04:18:34 [3.88ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 13 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 35 - 2022-12-06 04:18:34 [3.96ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 35 - 2022-12-06 04:18:34 [3.88ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 7;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 36 - 2022-12-06 04:18:34 [3.81ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 4 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 36 - 2022-12-06 04:18:34 [3.88ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 7 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 37 - 2022-12-06 04:18:34 [3.92ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 12;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 37 - 2022-12-06 04:18:34 [3.85ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 6;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 38 - 2022-12-06 04:18:34 [3.81ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 12 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 38 - 2022-12-06 04:18:34 [3.92ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 6 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 39 - 2022-12-06 04:18:34 [3.85ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 39 - 2022-12-06 04:18:34 [3.79ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 5;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 40 - 2022-12-06 04:18:34 [3.84ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 1 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 40 - 2022-12-06 04:18:34 [3.94ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 5 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 41 - 2022-12-06 04:18:34 [3.89ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 41 - 2022-12-06 04:18:34 [3.79ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 11;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 42 - 2022-12-06 04:18:34 [3.87ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 13 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 42 - 2022-12-06 04:18:34 [4.08ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 11 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 43 - 2022-12-06 04:18:34 [3.94ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 7;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 43 - 2022-12-06 04:18:34 [3.91ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 2;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 44 - 2022-12-06 04:18:34 [3.83ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 7 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 44 - 2022-12-06 04:18:34 [3.92ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 45 - 2022-12-06 04:18:34 [4ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 6;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 45 - 2022-12-06 04:18:34 [3.84ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 46 - 2022-12-06 04:18:34 [3.85ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 6 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 46 - 2022-12-06 04:18:34 [3.97ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 10 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 47 - 2022-12-06 04:18:34 [3.93ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 5;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 47 - 2022-12-06 04:18:34 [3.95ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 48 - 2022-12-06 04:18:34 [3.91ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 5 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/1
   Query 48 - 2022-12-06 04:18:34 [3.97ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 3 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 49 - 2022-12-06 04:18:34 [3.95ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 11;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 50 - 2022-12-06 04:18:34 [3.87ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 11 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 51 - 2022-12-06 04:18:34 [4.02ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 2;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 52 - 2022-12-06 04:18:34 [3.86ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 53 - 2022-12-06 04:18:34 [3.94ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 54 - 2022-12-06 04:18:34 [4.11ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 10 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 55 - 2022-12-06 04:18:34 [3.96ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 56 - 2022-12-06 04:18:34 [3.96ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 3 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-06 04:18:36 [21.26ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-06 04:18:36 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-06 04:18:36 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-06 04:18:36 [3.97ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-06 04:18:36 [3.83ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-06 04:18:36 [4ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2022-12-06 04:18:36 [4.07ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 10 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 8 - 2022-12-06 04:18:36 [3.84ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 9 - 2022-12-06 04:18:36 [4ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 10 - 2022-12-06 04:18:36 [4.04ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 11 - 2022-12-06 04:18:36 [4ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 12 - 2022-12-06 04:18:36 [3.93ms] */
select * from `kols` where `kols`.`id` = 8 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 13 - 2022-12-06 04:18:36 [3.92ms] */
select * from `kols` where `kols`.`id` = 4 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 14 - 2022-12-06 04:18:36 [3.93ms] */
select * from `kols` where `kols`.`id` = 12 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 15 - 2022-12-06 04:18:36 [4.18ms] */
select * from `kols` where `kols`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 16 - 2022-12-06 04:18:36 [3.88ms] */
select * from `kols` where `kols`.`id` = 13 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 17 - 2022-12-06 04:18:36 [4.31ms] */
select * from `kols` where `kols`.`id` = 7 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 18 - 2022-12-06 04:18:36 [4.19ms] */
select * from `kols` where `kols`.`id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 19 - 2022-12-06 04:18:36 [3.97ms] */
select * from `kols` where `kols`.`id` = 5 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 20 - 2022-12-06 04:18:36 [3.99ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 21 - 2022-12-06 04:18:36 [4ms] */
select * from `kols` where `kols`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 22 - 2022-12-06 04:18:36 [4.45ms] */
select * from `kols` where `kols`.`id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 23 - 2022-12-06 04:18:36 [3.93ms] */
select * from `kols` where `kols`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 24 - 2022-12-06 04:18:36 [4ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 25 - 2022-12-06 04:18:36 [3.97ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 26 - 2022-12-06 04:18:36 [3.98ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 8;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 27 - 2022-12-06 04:18:36 [4.01ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 8 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 28 - 2022-12-06 04:18:36 [4.02ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 29 - 2022-12-06 04:18:36 [3.84ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 4 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 30 - 2022-12-06 04:18:36 [3.97ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 12;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 31 - 2022-12-06 04:18:36 [3.87ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 12 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 32 - 2022-12-06 04:18:36 [4.02ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 33 - 2022-12-06 04:18:36 [3.95ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 1 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 34 - 2022-12-06 04:18:36 [3.99ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 35 - 2022-12-06 04:18:36 [4.41ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 13 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 36 - 2022-12-06 04:18:36 [4.26ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 7;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 37 - 2022-12-06 04:18:36 [3.99ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 7 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 38 - 2022-12-06 04:18:36 [4.15ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 6;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 39 - 2022-12-06 04:18:36 [3.82ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 6 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 40 - 2022-12-06 04:18:36 [4ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 5;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 41 - 2022-12-06 04:18:36 [4.03ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 5 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 42 - 2022-12-06 04:18:36 [3.95ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 11;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 43 - 2022-12-06 04:18:36 [3.94ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 11 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 44 - 2022-12-06 04:18:36 [4.03ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 2;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 45 - 2022-12-06 04:18:36 [4.24ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 46 - 2022-12-06 04:18:36 [4.1ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 47 - 2022-12-06 04:18:36 [4.02ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 10 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 48 - 2022-12-06 04:18:36 [4.1ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 49 - 2022-12-06 04:18:36 [3.89ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 3 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 1 - 2022-12-06 04:18:39 [22.19ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 2 - 2022-12-06 04:18:39 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 3 - 2022-12-06 04:18:39 [3.8ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 4 - 2022-12-06 04:18:39 [4.02ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 5 - 2022-12-06 04:18:39 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 6 - 2022-12-06 04:18:39 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 7 - 2022-12-06 04:18:39 [4.96ms] */
select * from `tags` where `user_id` = 10 order by `created_at` desc;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 1 - 2022-12-06 04:18:44 [21.65ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 2 - 2022-12-06 04:18:44 [4.4ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 3 - 2022-12-06 04:18:44 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 4 - 2022-12-06 04:18:44 [3.96ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 5 - 2022-12-06 04:18:44 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 6 - 2022-12-06 04:18:44 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 7 - 2022-12-06 04:18:44 [3.9ms] */
select * from `campaign_details` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 8 - 2022-12-06 04:18:44 [4.09ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 9 - 2022-12-06 04:18:44 [4.13ms] */
select * from `campaigns` where `campaigns`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 10 - 2022-12-06 04:18:44 [4.11ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 11 - 2022-12-06 04:18:44 [4.04ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 12 - 2022-12-06 04:18:44 [3.97ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 1 - 2022-12-06 04:18:45 [120.94ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 2 - 2022-12-06 04:18:45 [19.69ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 3 - 2022-12-06 04:18:45 [8.65ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 4 - 2022-12-06 04:18:45 [4.04ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 5 - 2022-12-06 04:18:45 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 6 - 2022-12-06 04:18:45 [4.02ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 7 - 2022-12-06 04:18:45 [4.04ms] */
select * from `campaign_details` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 8 - 2022-12-06 04:18:45 [4.02ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 9 - 2022-12-06 04:18:45 [4.01ms] */
select * from `campaigns` where `campaigns`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 10 - 2022-12-06 04:18:45 [4.02ms] */
select * from `campaign_detail_posts` where `campaign_detail_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 1 - 2022-12-06 04:18:45 [19.77ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 1 - 2022-12-06 04:18:45 [21.66ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 2 - 2022-12-06 04:18:45 [3.96ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 2 - 2022-12-06 04:18:45 [3.8ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 3 - 2022-12-06 04:18:45 [3.79ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 3 - 2022-12-06 04:18:45 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 4 - 2022-12-06 04:18:45 [3.89ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 4 - 2022-12-06 04:18:45 [3.79ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 5 - 2022-12-06 04:18:45 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 5 - 2022-12-06 04:18:45 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 6 - 2022-12-06 04:18:45 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 6 - 2022-12-06 04:18:45 [4.47ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 7 - 2022-12-06 04:18:45 [4.03ms] */
select * from `campaign_detail_posts` where `campaign_detail_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 7 - 2022-12-06 04:18:45 [3.98ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 8 - 2022-12-06 04:18:45 [4.17ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 9 - 2022-12-06 04:18:45 [4.13ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 10 - 2022-12-06 04:18:45 [4.06ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 11 - 2022-12-06 04:18:45 [4.06ms] */
select * from `kols` where `id` in (9);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 12 - 2022-12-06 04:18:45 [3.84ms] */
select * from `campaign_details` where `campaign_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 13 - 2022-12-06 04:18:45 [4.41ms] */
select * from `kols` where `id` in (9, 8, 4, 12, 1, 13, 7, 6, 5, 11, 2, 10, 3);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 14 - 2022-12-06 04:18:45 [3.98ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 15 - 2022-12-06 04:18:45 [4.03ms] */
select * from `kols` where `id` in (9);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 16 - 2022-12-06 04:18:45 [4.03ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 17 - 2022-12-06 04:18:45 [4.01ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 18 - 2022-12-06 04:18:45 [4.09ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 19 - 2022-12-06 04:18:45 [3.91ms] */
select * from `kols` where `kols`.`id` = 8 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 20 - 2022-12-06 04:18:45 [3.86ms] */
select * from `kols` where `kols`.`id` = 4 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 21 - 2022-12-06 04:18:45 [3.93ms] */
select * from `kols` where `kols`.`id` = 12 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 22 - 2022-12-06 04:18:45 [7.36ms] */
select * from `kols` where `kols`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 23 - 2022-12-06 04:18:45 [4.01ms] */
select * from `kols` where `kols`.`id` = 13 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 24 - 2022-12-06 04:18:45 [4.13ms] */
select * from `kols` where `kols`.`id` = 7 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 25 - 2022-12-06 04:18:45 [4.01ms] */
select * from `kols` where `kols`.`id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 26 - 2022-12-06 04:18:45 [4.03ms] */
select * from `kols` where `kols`.`id` = 5 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 27 - 2022-12-06 04:18:45 [3.98ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 28 - 2022-12-06 04:18:45 [3.94ms] */
select * from `kols` where `kols`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 29 - 2022-12-06 04:18:45 [4.06ms] */
select * from `kols` where `kols`.`id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 30 - 2022-12-06 04:18:45 [3.93ms] */
select * from `kols` where `kols`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 31 - 2022-12-06 04:18:45 [4.07ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 32 - 2022-12-06 04:18:45 [4ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 33 - 2022-12-06 04:18:45 [3.95ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 8;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 34 - 2022-12-06 04:18:45 [3.94ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 8 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 35 - 2022-12-06 04:18:45 [4.04ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 36 - 2022-12-06 04:18:45 [3.98ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 4 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 37 - 2022-12-06 04:18:45 [3.96ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 12;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 38 - 2022-12-06 04:18:45 [7.51ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 12 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 39 - 2022-12-06 04:18:45 [3.98ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 40 - 2022-12-06 04:18:45 [3.96ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 1 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 41 - 2022-12-06 04:18:45 [3.85ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 42 - 2022-12-06 04:18:45 [3.83ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 13 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 43 - 2022-12-06 04:18:45 [4.02ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 7;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 44 - 2022-12-06 04:18:45 [3.78ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 7 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 1 - 2022-12-06 04:18:45 [19.23ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 45 - 2022-12-06 04:18:45 [9.75ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 6;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 2 - 2022-12-06 04:18:45 [10.59ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 46 - 2022-12-06 04:18:45 [4.25ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 6 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 3 - 2022-12-06 04:18:45 [4.18ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 47 - 2022-12-06 04:18:45 [3.92ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 5;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 4 - 2022-12-06 04:18:45 [3.86ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 48 - 2022-12-06 04:18:45 [3.92ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 5 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 5 - 2022-12-06 04:18:45 [4.03ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 49 - 2022-12-06 04:18:45 [4ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 11;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 6 - 2022-12-06 04:18:45 [3.99ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 50 - 2022-12-06 04:18:45 [3.94ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 11 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 7 - 2022-12-06 04:18:45 [3.8ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 51 - 2022-12-06 04:18:45 [3.8ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 2;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 52 - 2022-12-06 04:18:45 [3.84ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 8 - 2022-12-06 04:18:45 [3.91ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 53 - 2022-12-06 04:18:45 [3.89ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 9 - 2022-12-06 04:18:45 [3.82ms] */
select `campaign_detail_id` from `campaign_detail_posts`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 54 - 2022-12-06 04:18:45 [3.78ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 10 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 10 - 2022-12-06 04:18:45 [3.83ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` = 8 and 1 = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 55 - 2022-12-06 04:18:45 [3.98ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 56 - 2022-12-06 04:18:45 [3.96ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 3 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 1 - 2022-12-06 04:18:47 [20.24ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 2 - 2022-12-06 04:18:47 [3.97ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 3 - 2022-12-06 04:18:47 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 4 - 2022-12-06 04:18:47 [4.01ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 5 - 2022-12-06 04:18:47 [3.93ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 6 - 2022-12-06 04:18:47 [4ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 7 - 2022-12-06 04:18:47 [4ms] */
select * from `campaign_details` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 8 - 2022-12-06 04:18:47 [5.04ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 9 - 2022-12-06 04:18:47 [3.98ms] */
select * from `campaigns` where `campaigns`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 10 - 2022-12-06 04:18:47 [4.05ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 11 - 2022-12-06 04:18:47 [4.07ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 12 - 2022-12-06 04:18:47 [3.97ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 1 - 2022-12-06 04:18:47 [20.24ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 2 - 2022-12-06 04:18:47 [4.11ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 3 - 2022-12-06 04:18:47 [3.97ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 4 - 2022-12-06 04:18:47 [3.99ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 5 - 2022-12-06 04:18:47 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 6 - 2022-12-06 04:18:47 [4.01ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 7 - 2022-12-06 04:18:47 [4.04ms] */
select * from `campaign_details` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 8 - 2022-12-06 04:18:47 [4.06ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 9 - 2022-12-06 04:18:47 [3.97ms] */
select * from `campaigns` where `campaigns`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 10 - 2022-12-06 04:18:47 [4.29ms] */
select * from `campaign_detail_posts` where `campaign_detail_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 1 - 2022-12-06 04:18:47 [20.9ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 1 - 2022-12-06 04:18:47 [20.76ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 2 - 2022-12-06 04:18:47 [4.04ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 2 - 2022-12-06 04:18:47 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 3 - 2022-12-06 04:18:47 [4.19ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 3 - 2022-12-06 04:18:47 [4.15ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 4 - 2022-12-06 04:18:47 [4.05ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 4 - 2022-12-06 04:18:47 [3.98ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 5 - 2022-12-06 04:18:47 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 5 - 2022-12-06 04:18:47 [3.93ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 6 - 2022-12-06 04:18:47 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 6 - 2022-12-06 04:18:47 [4.38ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 7 - 2022-12-06 04:18:47 [3.94ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 7 - 2022-12-06 04:18:47 [4.07ms] */
select * from `campaign_detail_posts` where `campaign_detail_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 8 - 2022-12-06 04:18:47 [3.96ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 9 - 2022-12-06 04:18:47 [3.94ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 10 - 2022-12-06 04:18:47 [4ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 11 - 2022-12-06 04:18:47 [4ms] */
select * from `kols` where `id` in (9);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 12 - 2022-12-06 04:18:47 [3.91ms] */
select * from `campaign_details` where `campaign_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 13 - 2022-12-06 04:18:47 [4.41ms] */
select * from `kols` where `id` in (9, 8, 4, 12, 1, 13, 7, 6, 5, 11, 2, 10, 3);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 14 - 2022-12-06 04:18:47 [3.98ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 15 - 2022-12-06 04:18:47 [4.05ms] */
select * from `kols` where `id` in (9);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 16 - 2022-12-06 04:18:47 [3.86ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 17 - 2022-12-06 04:18:47 [4.14ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 18 - 2022-12-06 04:18:47 [4.28ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 19 - 2022-12-06 04:18:47 [4.19ms] */
select * from `kols` where `kols`.`id` = 8 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 20 - 2022-12-06 04:18:47 [3.96ms] */
select * from `kols` where `kols`.`id` = 4 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 21 - 2022-12-06 04:18:47 [3.96ms] */
select * from `kols` where `kols`.`id` = 12 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 22 - 2022-12-06 04:18:47 [4.12ms] */
select * from `kols` where `kols`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 23 - 2022-12-06 04:18:47 [4.14ms] */
select * from `kols` where `kols`.`id` = 13 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 24 - 2022-12-06 04:18:47 [4.18ms] */
select * from `kols` where `kols`.`id` = 7 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 25 - 2022-12-06 04:18:47 [4.08ms] */
select * from `kols` where `kols`.`id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 26 - 2022-12-06 04:18:47 [4.2ms] */
select * from `kols` where `kols`.`id` = 5 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 27 - 2022-12-06 04:18:47 [4.14ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 28 - 2022-12-06 04:18:47 [3.94ms] */
select * from `kols` where `kols`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 29 - 2022-12-06 04:18:47 [4.11ms] */
select * from `kols` where `kols`.`id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 30 - 2022-12-06 04:18:47 [6.26ms] */
select * from `kols` where `kols`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 31 - 2022-12-06 04:18:47 [4.03ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 32 - 2022-12-06 04:18:47 [4.04ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 33 - 2022-12-06 04:18:47 [4.08ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 8;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 34 - 2022-12-06 04:18:47 [4.2ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 8 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 35 - 2022-12-06 04:18:47 [4.03ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 36 - 2022-12-06 04:18:47 [4.09ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 4 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 37 - 2022-12-06 04:18:47 [4.07ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 12;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 38 - 2022-12-06 04:18:47 [10.36ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 12 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 39 - 2022-12-06 04:18:47 [3.97ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 40 - 2022-12-06 04:18:47 [4.01ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 1 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 41 - 2022-12-06 04:18:47 [4ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 42 - 2022-12-06 04:18:47 [4.1ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 13 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 43 - 2022-12-06 04:18:47 [4.02ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 7;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 1 - 2022-12-06 04:18:47 [20.59ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 44 - 2022-12-06 04:18:47 [4.15ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 7 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 2 - 2022-12-06 04:18:47 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 45 - 2022-12-06 04:18:47 [3.93ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 6;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 3 - 2022-12-06 04:18:47 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 46 - 2022-12-06 04:18:47 [4.03ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 6 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 4 - 2022-12-06 04:18:47 [3.96ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 47 - 2022-12-06 04:18:47 [3.92ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 5;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 5 - 2022-12-06 04:18:47 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 48 - 2022-12-06 04:18:47 [4.22ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 5 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 6 - 2022-12-06 04:18:47 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 49 - 2022-12-06 04:18:47 [3.92ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 11;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 7 - 2022-12-06 04:18:47 [3.79ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 50 - 2022-12-06 04:18:47 [3.77ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 11 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 51 - 2022-12-06 04:18:47 [3.96ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 2;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 52 - 2022-12-06 04:18:48 [6.71ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 8 - 2022-12-06 04:18:48 [7.02ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 53 - 2022-12-06 04:18:48 [4.07ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 9 - 2022-12-06 04:18:48 [3.9ms] */
select `campaign_detail_id` from `campaign_detail_posts`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 54 - 2022-12-06 04:18:48 [3.83ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 10 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 10 - 2022-12-06 04:18:48 [4.06ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` = 8 and 1 = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 55 - 2022-12-06 04:18:48 [3.9ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 56 - 2022-12-06 04:18:48 [3.8ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 3 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/3/1
   Query 1 - 2022-12-06 04:18:56 [25ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/2/1
   Query 1 - 2022-12-06 04:18:56 [29.81ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 1 - 2022-12-06 04:18:56 [25.12ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/3/1
   Query 2 - 2022-12-06 04:18:56 [4.08ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/2/1
   Query 2 - 2022-12-06 04:18:56 [4ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 2 - 2022-12-06 04:18:56 [4.62ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/3/1
   Query 3 - 2022-12-06 04:18:56 [4.52ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignReportShow/1
   Query 1 - 2022-12-06 04:18:56 [36.22ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/2/1
   Query 3 - 2022-12-06 04:18:56 [8.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 3 - 2022-12-06 04:18:56 [8.01ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/1/1
   Query 1 - 2022-12-06 04:18:56 [40.03ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignReportShow/1
   Query 2 - 2022-12-06 04:18:56 [3.81ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/3/1
   Query 4 - 2022-12-06 04:18:56 [8.6ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/2/1
   Query 4 - 2022-12-06 04:18:56 [4.59ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 4 - 2022-12-06 04:18:56 [4.33ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignReportShow/1
   Query 3 - 2022-12-06 04:18:56 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/3/1
   Query 5 - 2022-12-06 04:18:56 [4.14ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/1/1
   Query 2 - 2022-12-06 04:18:56 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/2/1
   Query 5 - 2022-12-06 04:18:56 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 5 - 2022-12-06 04:18:56 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignReportShow/1
   Query 4 - 2022-12-06 04:18:56 [3.89ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/3/1
   Query 6 - 2022-12-06 04:18:56 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 6 - 2022-12-06 04:18:56 [3.72ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/2/1
   Query 6 - 2022-12-06 04:18:56 [4.55ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/1/1
   Query 3 - 2022-12-06 04:18:56 [5.6ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignReportShow/1
   Query 5 - 2022-12-06 04:18:56 [4.51ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/2/1
   Query 7 - 2022-12-06 04:18:56 [4.43ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignReportShow/1
   Query 6 - 2022-12-06 04:18:56 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 7 - 2022-12-06 04:18:56 [6.11ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/3/1
   Query 7 - 2022-12-06 04:18:56 [13.13ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/1/1
   Query 4 - 2022-12-06 04:18:56 [14.54ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignReportShow/1
   Query 7 - 2022-12-06 04:18:56 [10.26ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/1/1
   Query 5 - 2022-12-06 04:18:56 [7.52ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/1/1
   Query 6 - 2022-12-06 04:18:56 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/1/1
   Query 7 - 2022-12-06 04:18:56 [3.87ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignReportShow/1
   Query 8 - 2022-12-06 04:18:56 [12.89ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/1/1
   Query 8 - 2022-12-06 04:18:56 [8.72ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/3/1
   Query 8 - 2022-12-06 04:18:56 [4.02ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 8 - 2022-12-06 04:18:56 [4.32ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/2/1
   Query 8 - 2022-12-06 04:18:56 [4.88ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignReportShow/1
   Query 9 - 2022-12-06 04:18:56 [4.68ms] */
select * from `tab_reports` where `campaign_id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/3/1
   Query 9 - 2022-12-06 04:18:56 [4.29ms] */
select * from `campaign_detail_posts` where `report_type` = 3 and `campaign_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 9 - 2022-12-06 04:18:56 [4.19ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/2/1
   Query 9 - 2022-12-06 04:18:56 [4.93ms] */
select * from `campaign_detail_posts` where `report_type` = 2 and `campaign_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-detail-post/report/1/1
   Query 9 - 2022-12-06 04:18:56 [9.63ms] */
select * from `campaign_detail_posts` where `report_type` = 1 and `campaign_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 10 - 2022-12-06 04:18:56 [6.32ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 11 - 2022-12-06 04:18:56 [3.97ms] */
select * from `kols` where `id` in (9);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 12 - 2022-12-06 04:18:56 [3.91ms] */
select * from `campaign_details` where `campaign_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 13 - 2022-12-06 04:18:56 [4.22ms] */
select * from `kols` where `id` in (9, 8, 4, 12, 1, 13, 7, 6, 5, 11, 2, 10, 3);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-06 04:18:56 [29.55ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 14 - 2022-12-06 04:18:56 [4.09ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-06 04:18:56 [3.98ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 15 - 2022-12-06 04:18:56 [3.97ms] */
select * from `kols` where `id` in (9);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-06 04:18:56 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 16 - 2022-12-06 04:18:56 [3.88ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-06 04:18:56 [4.14ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 17 - 2022-12-06 04:18:56 [4.05ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-06 04:18:56 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-06 04:18:56 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 18 - 2022-12-06 04:18:56 [5.18ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2022-12-06 04:18:56 [4.01ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 10 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 19 - 2022-12-06 04:18:56 [4.21ms] */
select * from `kols` where `kols`.`id` = 8 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 20 - 2022-12-06 04:18:56 [4.06ms] */
select * from `kols` where `kols`.`id` = 4 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 8 - 2022-12-06 04:18:56 [4.29ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 21 - 2022-12-06 04:18:56 [3.96ms] */
select * from `kols` where `kols`.`id` = 12 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 9 - 2022-12-06 04:18:56 [3.97ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 22 - 2022-12-06 04:18:56 [3.97ms] */
select * from `kols` where `kols`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 10 - 2022-12-06 04:18:56 [3.98ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 23 - 2022-12-06 04:18:56 [3.89ms] */
select * from `kols` where `kols`.`id` = 13 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 11 - 2022-12-06 04:18:56 [3.92ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 24 - 2022-12-06 04:18:56 [4ms] */
select * from `kols` where `kols`.`id` = 7 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 12 - 2022-12-06 04:18:56 [4.23ms] */
select * from `kols` where `kols`.`id` = 8 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 25 - 2022-12-06 04:18:56 [3.96ms] */
select * from `kols` where `kols`.`id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 13 - 2022-12-06 04:18:56 [3.99ms] */
select * from `kols` where `kols`.`id` = 4 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 26 - 2022-12-06 04:18:56 [3.96ms] */
select * from `kols` where `kols`.`id` = 5 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 14 - 2022-12-06 04:18:56 [4.01ms] */
select * from `kols` where `kols`.`id` = 12 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 27 - 2022-12-06 04:18:56 [3.89ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 15 - 2022-12-06 04:18:56 [4.02ms] */
select * from `kols` where `kols`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 28 - 2022-12-06 04:18:56 [3.99ms] */
select * from `kols` where `kols`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 16 - 2022-12-06 04:18:56 [3.97ms] */
select * from `kols` where `kols`.`id` = 13 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 29 - 2022-12-06 04:18:56 [3.93ms] */
select * from `kols` where `kols`.`id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 17 - 2022-12-06 04:18:56 [4.02ms] */
select * from `kols` where `kols`.`id` = 7 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 30 - 2022-12-06 04:18:56 [4.07ms] */
select * from `kols` where `kols`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 18 - 2022-12-06 04:18:56 [5.16ms] */
select * from `kols` where `kols`.`id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 31 - 2022-12-06 04:18:56 [4.04ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 19 - 2022-12-06 04:18:56 [4.27ms] */
select * from `kols` where `kols`.`id` = 5 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 32 - 2022-12-06 04:18:56 [3.95ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 20 - 2022-12-06 04:18:56 [4.12ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 33 - 2022-12-06 04:18:56 [3.97ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 8;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 21 - 2022-12-06 04:18:56 [4.37ms] */
select * from `kols` where `kols`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 34 - 2022-12-06 04:18:56 [4.58ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 8 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 22 - 2022-12-06 04:18:56 [4.36ms] */
select * from `kols` where `kols`.`id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 35 - 2022-12-06 04:18:56 [3.98ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 23 - 2022-12-06 04:18:56 [3.93ms] */
select * from `kols` where `kols`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 36 - 2022-12-06 04:18:56 [4.95ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 4 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 24 - 2022-12-06 04:18:56 [4.65ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 37 - 2022-12-06 04:18:56 [3.98ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 12;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 25 - 2022-12-06 04:18:56 [3.88ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 38 - 2022-12-06 04:18:56 [3.8ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 12 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 26 - 2022-12-06 04:18:56 [3.96ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 8;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 39 - 2022-12-06 04:18:56 [4.23ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 27 - 2022-12-06 04:18:56 [3.95ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 8 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 40 - 2022-12-06 04:18:56 [4.59ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 1 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 28 - 2022-12-06 04:18:56 [4.52ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 41 - 2022-12-06 04:18:56 [3.88ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 29 - 2022-12-06 04:18:56 [3.88ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 4 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 42 - 2022-12-06 04:18:56 [3.84ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 13 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 30 - 2022-12-06 04:18:56 [4.01ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 12;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 43 - 2022-12-06 04:18:56 [4.02ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 7;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 31 - 2022-12-06 04:18:56 [3.82ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 12 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 44 - 2022-12-06 04:18:56 [4.22ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 7 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 32 - 2022-12-06 04:18:56 [4.68ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 45 - 2022-12-06 04:18:56 [5.1ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 6;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 33 - 2022-12-06 04:18:56 [4.77ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 1 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 46 - 2022-12-06 04:18:56 [3.89ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 6 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 34 - 2022-12-06 04:18:56 [3.97ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 47 - 2022-12-06 04:18:56 [4ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 5;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 35 - 2022-12-06 04:18:56 [3.87ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 13 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 48 - 2022-12-06 04:18:56 [3.93ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 5 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 36 - 2022-12-06 04:18:56 [4.13ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 7;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 49 - 2022-12-06 04:18:56 [4.22ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 11;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 37 - 2022-12-06 04:18:56 [3.91ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 7 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 50 - 2022-12-06 04:18:56 [3.96ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 11 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 38 - 2022-12-06 04:18:56 [3.91ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 6;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 51 - 2022-12-06 04:18:56 [4.52ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 2;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 39 - 2022-12-06 04:18:56 [4.49ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 6 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 52 - 2022-12-06 04:18:56 [3.94ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 40 - 2022-12-06 04:18:56 [4.16ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 5;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 53 - 2022-12-06 04:18:56 [4.02ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 41 - 2022-12-06 04:18:56 [4ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 5 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 54 - 2022-12-06 04:18:56 [3.84ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 10 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 42 - 2022-12-06 04:18:56 [3.91ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 11;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 55 - 2022-12-06 04:18:56 [3.9ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 43 - 2022-12-06 04:18:56 [3.8ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 11 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 56 - 2022-12-06 04:18:56 [3.86ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 3 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 44 - 2022-12-06 04:18:56 [4.88ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 2;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 45 - 2022-12-06 04:18:56 [7.37ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 46 - 2022-12-06 04:18:56 [4.18ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 47 - 2022-12-06 04:18:56 [3.91ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 10 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 48 - 2022-12-06 04:18:56 [3.94ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 49 - 2022-12-06 04:18:56 [3.96ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 3 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 1 - 2022-12-06 04:19:08 [22.95ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 2 - 2022-12-06 04:19:08 [4.03ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 3 - 2022-12-06 04:19:08 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 4 - 2022-12-06 04:19:08 [4.12ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 5 - 2022-12-06 04:19:08 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 6 - 2022-12-06 04:19:08 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 7 - 2022-12-06 04:19:08 [4.78ms] */
select * from `tags` where `user_id` = 10 order by `created_at` desc;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 1 - 2022-12-06 04:19:10 [21.08ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 2 - 2022-12-06 04:19:10 [4ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 3 - 2022-12-06 04:19:10 [4.24ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 4 - 2022-12-06 04:19:10 [4.27ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 5 - 2022-12-06 04:19:10 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 6 - 2022-12-06 04:19:10 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 7 - 2022-12-06 04:19:10 [3.96ms] */
select * from `campaign_details` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 8 - 2022-12-06 04:19:10 [4.1ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 9 - 2022-12-06 04:19:10 [3.98ms] */
select * from `campaigns` where `campaigns`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 10 - 2022-12-06 04:19:10 [5.28ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 11 - 2022-12-06 04:19:10 [4.1ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): PUT https://api-stg.lc-analysis.com/api/campaignDetail/1
   Query 12 - 2022-12-06 04:19:10 [3.96ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 1 - 2022-12-06 04:19:10 [21.07ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 2 - 2022-12-06 04:19:10 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 3 - 2022-12-06 04:19:10 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 4 - 2022-12-06 04:19:10 [3.95ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 5 - 2022-12-06 04:19:10 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 6 - 2022-12-06 04:19:10 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 7 - 2022-12-06 04:19:10 [3.95ms] */
select * from `campaign_details` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 8 - 2022-12-06 04:19:10 [4.09ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 9 - 2022-12-06 04:19:10 [3.9ms] */
select * from `campaigns` where `campaigns`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/campaignDetailPost/update-cost/1
   Query 10 - 2022-12-06 04:19:10 [3.98ms] */
select * from `campaign_detail_posts` where `campaign_detail_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 1 - 2022-12-06 04:19:10 [19.76ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 1 - 2022-12-06 04:19:10 [21.49ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 2 - 2022-12-06 04:19:10 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 2 - 2022-12-06 04:19:10 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 3 - 2022-12-06 04:19:10 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 3 - 2022-12-06 04:19:10 [4.22ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 4 - 2022-12-06 04:19:10 [3.94ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 4 - 2022-12-06 04:19:10 [3.91ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 5 - 2022-12-06 04:19:10 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 5 - 2022-12-06 04:19:10 [3.77ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 6 - 2022-12-06 04:19:10 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 6 - 2022-12-06 04:19:10 [4.5ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 7 - 2022-12-06 04:19:10 [3.84ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailPost/1
   Query 7 - 2022-12-06 04:19:10 [4.05ms] */
select * from `campaign_detail_posts` where `campaign_detail_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 8 - 2022-12-06 04:19:10 [3.95ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 9 - 2022-12-06 04:19:10 [3.95ms] */
select * from `campaign_details` where `campaign_details`.`campaign_id` = 1 and `campaign_details`.`campaign_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 10 - 2022-12-06 04:19:10 [3.95ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 11 - 2022-12-06 04:19:10 [3.86ms] */
select * from `kols` where `id` in (9);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 12 - 2022-12-06 04:19:10 [3.92ms] */
select * from `campaign_details` where `campaign_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 13 - 2022-12-06 04:19:10 [4.22ms] */
select * from `kols` where `id` in (9, 8, 4, 12, 1, 13, 7, 6, 5, 11, 2, 10, 3);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 14 - 2022-12-06 04:19:10 [3.97ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` >= 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 15 - 2022-12-06 04:19:10 [3.95ms] */
select * from `kols` where `id` in (9);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 16 - 2022-12-06 04:19:10 [3.94ms] */
select * from `genres` where `genres`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 17 - 2022-12-06 04:19:10 [4.08ms] */
select * from `tab_reports` where `tab_reports`.`campaign_id` = 1 and `tab_reports`.`campaign_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 18 - 2022-12-06 04:19:10 [5.03ms] */
select * from `kols` where `kols`.`id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 19 - 2022-12-06 04:19:10 [3.96ms] */
select * from `kols` where `kols`.`id` = 8 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 20 - 2022-12-06 04:19:10 [4ms] */
select * from `kols` where `kols`.`id` = 4 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 21 - 2022-12-06 04:19:10 [3.98ms] */
select * from `kols` where `kols`.`id` = 12 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 22 - 2022-12-06 04:19:10 [4.01ms] */
select * from `kols` where `kols`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 23 - 2022-12-06 04:19:11 [4.06ms] */
select * from `kols` where `kols`.`id` = 13 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 24 - 2022-12-06 04:19:11 [4.01ms] */
select * from `kols` where `kols`.`id` = 7 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 25 - 2022-12-06 04:19:11 [3.97ms] */
select * from `kols` where `kols`.`id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 26 - 2022-12-06 04:19:11 [4.06ms] */
select * from `kols` where `kols`.`id` = 5 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 27 - 2022-12-06 04:19:11 [4.07ms] */
select * from `kols` where `kols`.`id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 28 - 2022-12-06 04:19:11 [3.96ms] */
select * from `kols` where `kols`.`id` = 2 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 29 - 2022-12-06 04:19:11 [3.92ms] */
select * from `kols` where `kols`.`id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 30 - 2022-12-06 04:19:11 [3.84ms] */
select * from `kols` where `kols`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 31 - 2022-12-06 04:19:11 [3.99ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 9;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 32 - 2022-12-06 04:19:11 [3.9ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 9 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 33 - 2022-12-06 04:19:11 [3.95ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 8;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 34 - 2022-12-06 04:19:11 [3.89ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 8 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 35 - 2022-12-06 04:19:11 [4ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 4;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 36 - 2022-12-06 04:19:11 [3.93ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 4 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 37 - 2022-12-06 04:19:11 [3.96ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 12;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 38 - 2022-12-06 04:19:11 [8.08ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 12 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 39 - 2022-12-06 04:19:11 [4.06ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 40 - 2022-12-06 04:19:11 [3.98ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 1 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 41 - 2022-12-06 04:19:11 [3.93ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 13;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 42 - 2022-12-06 04:19:11 [3.82ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 13 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 43 - 2022-12-06 04:19:11 [3.95ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 7;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 44 - 2022-12-06 04:19:11 [3.95ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 7 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 1 - 2022-12-06 04:19:11 [19.68ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 45 - 2022-12-06 04:19:11 [3.89ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 6;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 46 - 2022-12-06 04:19:11 [3.89ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 6 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 2 - 2022-12-06 04:19:11 [4.02ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 47 - 2022-12-06 04:19:11 [3.91ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 5;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 3 - 2022-12-06 04:19:11 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 48 - 2022-12-06 04:19:11 [3.81ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 5 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 4 - 2022-12-06 04:19:11 [3.91ms] */
select * from `users` where `id` = 10 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 49 - 2022-12-06 04:19:11 [3.91ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 11;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 5 - 2022-12-06 04:19:11 [3.83ms] */
select * from `oauth_access_tokens` where `id` = '952815f96c862e83ce88552fbed227c0a2895161bd3c619f8d16e0b402d5b708692f264a4aab6985' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 50 - 2022-12-06 04:19:11 [3.89ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 11 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 6 - 2022-12-06 04:19:11 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 51 - 2022-12-06 04:19:11 [3.87ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 2;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 7 - 2022-12-06 04:19:11 [3.79ms] */
select * from `campaigns` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 52 - 2022-12-06 04:19:11 [3.8ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 2 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 53 - 2022-12-06 04:19:11 [3.96ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 10;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 8 - 2022-12-06 04:19:11 [4.01ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 54 - 2022-12-06 04:19:11 [3.9ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 10 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 9 - 2022-12-06 04:19:11 [4.41ms] */
select `campaign_detail_id` from `campaign_detail_posts`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 55 - 2022-12-06 04:19:11 [4.08ms] */
select `tags`.*, `kol_tags`.`kol_id` as `pivot_kol_id`, `kol_tags`.`tag_id` as `pivot_tag_id` from `tags` inner join `kol_tags` on `tags`.`id` = `kol_tags`.`tag_id` where `kol_tags`.`kol_id` = 3;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/1
   Query 10 - 2022-12-06 04:19:11 [4.24ms] */
select * from `campaign_details` where `campaign_id` = 1 and `kol_status` = 8 and 1 = 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/1
   Query 56 - 2022-12-06 04:19:11 [3.92ms] */
select * from `kol_ratings` where `kol_ratings`.`kol_id` = 3 and `kol_ratings`.`kol_id` is not null;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-06 04:56:44 [23.8ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-06 04:56:44 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-06 04:56:44 [3.78ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-06 04:56:44 [3.98ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-06 04:56:44 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-06 04:56:44 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-06 04:56:44 [3.95ms] */
select * from `menus` where `title` in ('module.user', 'module.genre') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-06 04:56:44 [3.87ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 1 - 2022-12-06 04:56:45 [79.34ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 2 - 2022-12-06 04:56:45 [14.38ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 3 - 2022-12-06 04:56:45 [4ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 4 - 2022-12-06 04:56:45 [3.95ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 5 - 2022-12-06 04:56:45 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 6 - 2022-12-06 04:56:45 [3.8ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 7 - 2022-12-06 04:56:45 [3.88ms] */
select * from `campaigns` where `id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-06 04:56:45 [24.19ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 1 - 2022-12-06 04:56:45 [20.11ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 1 - 2022-12-06 04:56:45 [28.58ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 1 - 2022-12-06 04:56:45 [21.38ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 1 - 2022-12-06 04:56:45 [23.19ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-06 04:56:45 [5.72ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 2 - 2022-12-06 04:56:45 [4.39ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 2 - 2022-12-06 04:56:45 [5.16ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 2 - 2022-12-06 04:56:45 [4.39ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 2 - 2022-12-06 04:56:45 [5.63ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-06 04:56:45 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 3 - 2022-12-06 04:56:45 [4.25ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 3 - 2022-12-06 04:56:45 [4.52ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 3 - 2022-12-06 04:56:45 [4.77ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 3 - 2022-12-06 04:56:45 [4.67ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 4 - 2022-12-06 04:56:45 [3.85ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-06 04:56:45 [4.91ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 4 - 2022-12-06 04:56:45 [3.97ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 4 - 2022-12-06 04:56:45 [5.07ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 5 - 2022-12-06 04:56:45 [4ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-06 04:56:45 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 4 - 2022-12-06 04:56:45 [4.03ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 5 - 2022-12-06 04:56:45 [4.36ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 5 - 2022-12-06 04:56:45 [3.82ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 6 - 2022-12-06 04:56:45 [3.7ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 6 - 2022-12-06 04:56:45 [3.76ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-06 04:56:45 [5.02ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 5 - 2022-12-06 04:56:45 [6.13ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 6 - 2022-12-06 04:56:45 [6.02ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 7 - 2022-12-06 04:56:45 [4.36ms] */
select * from `campaigns` where `id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 6 - 2022-12-06 04:56:45 [5.07ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 7 - 2022-12-06 04:56:45 [6.78ms] */
select * from `campaigns` where `id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 7 - 2022-12-06 04:56:45 [7.52ms] */
select * from `campaigns` where `id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-06 04:56:45 [19.97ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-06 04:56:45 [4.02ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-06 04:56:45 [4.17ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-06 04:56:45 [4.15ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-06 04:56:45 [4.05ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-06 04:56:45 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-06 04:56:48 [22.81ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-06 04:56:48 [22.6ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-06 04:56:48 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-06 04:56:48 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-06 04:56:48 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-06 04:56:48 [3.79ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-06 04:56:48 [3.89ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-06 04:56:48 [3.91ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-06 04:56:48 [3.8ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-06 04:56:48 [3.73ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-06 04:56:48 [3.78ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-06 04:56:48 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-06 04:56:48 [4.03ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-06 04:56:48 [21.07ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-06 04:56:48 [3.99ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-06 04:56:48 [4.25ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-06 04:56:48 [3.99ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-06 04:56:51 [21.78ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-06 04:56:51 [4.01ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-06 04:56:51 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-06 04:56:51 [4.06ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-06 04:56:51 [3.94ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-06 04:56:51 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-06 04:56:51 [4ms] */
select * from `menus` where `title` in ('module.user', 'module.genre') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-06 04:56:51 [3.91ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-06 04:56:51 [20.23ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-06 04:56:51 [22.64ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-06 04:56:51 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-06 04:56:51 [3.75ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-06 04:56:51 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-06 04:56:51 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-06 04:56:51 [3.82ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-06 04:56:51 [3.82ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-06 04:56:51 [3.75ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-06 04:56:51 [3.75ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-06 04:56:51 [3.72ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-06 04:56:51 [4.24ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-06 04:56:51 [5.25ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-06 04:56:51 [21.82ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-06 04:56:51 [4ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-06 04:56:51 [4.07ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-06 04:56:51 [4.01ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2022-12-06 04:57:18 [22.2ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2022-12-06 04:57:18 [3.98ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2022-12-06 04:57:18 [4.05ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2022-12-06 04:57:18 [4.11ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2022-12-06 04:57:18 [4.06ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2022-12-06 04:57:18 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2022-12-06 04:57:18 [4.03ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-06 04:57:19 [20.59ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-06 04:57:19 [19.63ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-06 04:57:19 [3.78ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-06 04:57:19 [3.83ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-06 04:57:19 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-06 04:57:19 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-06 04:57:19 [4.26ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-06 04:57:19 [3.89ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-06 04:57:19 [3.7ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-06 04:57:19 [3.69ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-06 04:57:19 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-06 04:57:19 [4.76ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-06 04:57:19 [4.04ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-06 04:57:19 [15.53ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-06 04:57:19 [3.95ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-06 04:57:19 [4.08ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-06 04:57:19 [4.11ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-06 05:02:54 [21.61ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-06 05:02:54 [3.92ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-06 05:02:54 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-06 05:02:54 [3.96ms] */
select * from `users` where `id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-06 05:02:54 [3.86ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-06 05:02:54 [3.74ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-06 05:02:55 [3.98ms] */
select * from `menus` where `title` in ('module.kol', 'module.insight-list', 'module.campaign') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-06 05:02:55 [28.58ms] */
select * from `menus` where `menus`.`parent_id` in (1, 2, 3) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-06 05:02:55 [20.22ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-06 05:02:55 [4.2ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-06 05:02:55 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-06 05:02:55 [4.04ms] */
select * from `users` where `id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-06 05:02:55 [3.77ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-06 05:02:55 [3.97ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-06 05:02:56 [7.11ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1670302976, 1670302976, '{"uuid":"2508da88-01e6-4387-b228-08b5fc90dce5","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:13:{i:0;a:3:{s:5:\"basic\";a:3:{s:8:\"username\";s:4:\"nasa\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:197:\"https:\/\/scontent-arn2-1.cdninstagram.com\/vp\/fa66adc26aefbb03ca111c7688732f6a\/5E5FEDED\/t51.2885-19\/s150x150\/29090066_159271188110124_1152068159029641216_n.jpg?_nc_ht=scontent-arn2-1.cdninstagram.com\";}s:7:\"metrics\";a:5:{s:16:\"engagement_count\";d:794423.5884;s:2:\"er\";d:1.56;s:17:\"subscribers_count\";i:50924589;s:22:\"real_subscribers_count\";i:43917365;s:22:\"subscribers_growth_prc\";i:0;}s:8:\"features\";a:5:{s:15:\"social_networks\";a:0:{}s:14:\"blogger_topics\";a:2:{i:0;i:228;i:1;i:286;}s:17:\"blogger_thematics\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}s:3:\"aqs\";O:8:\"stdClass\":1:{s:4:\"mark\";s:4:\"good\";}}}i:1;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"taylorswift\";s:5:\"title\";s:12:\"Taylor Swift\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/11830955.jpg?w=320&till=1674097390&sign=137754e01b6fc9edb9e2d0f55f1429db\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}i:2;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"vancityreynolds\";s:5:\"title\";s:13:\"Ryan Reynolds\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1942463581.jpg?w=320&till=1674098165&sign=08e3f95d387c94b52126b825223f87ac\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"45857334\";s:2:\"er\";s:4:\"1.18\";s:16:\"engagement_count\";d:541116.5412;}}i:3;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:14:\"kevinhart4real\";s:5:\"title\";s:10:\"Kevin Hart\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6590609.jpg?w=320&till=1674098245&sign=428fb2be77bad0c8877398d37bad82f2\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"155039259\";s:2:\"er\";s:4:\"0.09\";s:16:\"engagement_count\";d:139535.3331;}}i:4;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"supersaf\";s:5:\"title\";s:8:\"SuperSaf\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/41428916.jpg?w=320&till=1674098340&sign=f440bcef026a9f129e335890f2377568\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"529231\";s:2:\"er\";s:4:\"1.83\";s:16:\"engagement_count\";d:9684.9273;}}i:5;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"selenagomez\";s:5:\"title\";s:12:\"Selena Gomez\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/460563723.jpg?w=320&till=1674098404&sign=6d026056d3295fff26a3ce2f51b6882a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"351492414\";s:2:\"er\";s:3:\"0.7\";s:16:\"engagement_count\";d:2460446.8979999996;}}i:6;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"pepamack\";s:5:\"title\";s:5:\"Petra\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/316719376.jpg?w=320&till=1674098485&sign=4e212d5d81a82b91a3236c928b0a6bd0\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:7:\"1051585\";s:2:\"er\";s:8:\"0.749461\";s:16:\"engagement_count\";d:7881.219456850001;}}i:7;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"kendalljenner\";s:5:\"title\";s:7:\"Kendall\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6380930.jpg?w=320&till=1674098702&sign=9866747cb6e12bd123b2c35133f6b619\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"260554636\";s:2:\"er\";s:4:\"0.89\";s:16:\"engagement_count\";d:2318936.2604;}}i:8;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"fcbarcelona\";s:5:\"title\";s:12:\"FC Barcelona\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/260375673.jpg?w=320&till=1674098749&sign=ef7d691b7d2d6d17045fa5cceb7fc471\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"112673770\";s:2:\"er\";s:4:\"0.34\";s:16:\"engagement_count\";d:383090.818;}}i:9;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"theshilpashetty\";s:5:\"title\";s:20:\"Shilpa Shetty Kundra\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1904097264.jpg?w=320&till=1674098825&sign=89b6ea598b251337fe1b310bb3cbd845\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"26807344\";s:2:\"er\";s:4:\"0.56\";s:16:\"engagement_count\";d:150121.1264;}}i:10;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"tarynwilliams\";s:5:\"title\";s:14:\"Taryn Williams\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/40507182.jpg?w=320&till=1674098881&sign=0fe2726db44d64e4248add6d6645e24a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:5:\"22017\";s:2:\"er\";s:4:\"0.83\";s:16:\"engagement_count\";d:182.7411;}}i:11;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:10:\"kobebryant\";s:5:\"title\";s:11:\"Kobe Bryant\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/351564405.jpg?w=320&till=1674100243&sign=cdbbac85a243afd7f765504d660fabae\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"21107168\";s:2:\"er\";s:4:\"7.31\";s:16:\"engagement_count\";d:1542933.9808;}}i:12;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"nathanwpyle\";s:5:\"title\";s:13:\"Nathan W Pyle\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/213194044.jpg?w=320&till=1674100064&sign=b69916f1d77dded42cacf303d332bb0d\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"626007\";s:2:\"er\";s:4:\"5.31\";s:16:\"engagement_count\";d:33240.971699999995;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:1;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-06 05:02:56 [4.26ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 9 and `k`.`username` in ('nasa', 'taylorswift', 'vancityreynolds', 'kevinhart4real', 'supersaf', 'selenagomez', 'pepamack', 'kendalljenner', 'fcbarcelona', 'theshilpashetty', 'tarynwilliams', 'kobebryant', 'nathanwpyle');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-06 05:02:56 [20.55ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-06 05:02:56 [3.82ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-06 05:02:56 [4.02ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-06 05:02:56 [4.14ms] */
select * from `users` where `id` = 9 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-06 05:02:56 [3.9ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-06 05:02:56 [4.02ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2022-12-06 05:02:56 [4.04ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 9 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 1 - 2022-12-06 05:02:57 [20.12ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 2 - 2022-12-06 05:02:57 [3.94ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 3 - 2022-12-06 05:02:57 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 4 - 2022-12-06 05:02:57 [3.91ms] */
select * from `users` where `id` = 9 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 5 - 2022-12-06 05:02:57 [3.85ms] */
select * from `oauth_access_tokens` where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 6 - 2022-12-06 05:02:57 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 7 - 2022-12-06 05:02:57 [6.62ms] */
update `oauth_access_tokens` set `revoked` = 1 where `id` = 'fc22de1d685075d20843c7cba097cd4ca147f8bac8b78d19936b0ca0d20eceb61843515ef093f568';
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 1 - 2022-12-06 05:03:08 [21.66ms] */
select * from `users` where `email` = 'admin@admin.com' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 2 - 2022-12-06 05:03:08 [3.98ms] */
select exists(select * from `oauth_personal_access_clients`) as `exists`;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 3 - 2022-12-06 05:03:08 [4.26ms] */
select * from `oauth_personal_access_clients` order by `id` desc limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 4 - 2022-12-06 05:03:08 [3.97ms] */
select * from `oauth_clients` where `oauth_clients`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 5 - 2022-12-06 05:03:08 [3.97ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 6 - 2022-12-06 05:03:08 [5.01ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 7 - 2022-12-06 05:03:08 [6.34ms] */
insert into `oauth_access_tokens` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) values ('e7fd8dd47f76216b5f13e0b36e46ff14d5301036dd3e055b115e31131c3ff6be4e47738dce23d897', 1, 1, '[]', 0, '2022-12-06 05:03:08', '2022-12-06 05:03:08', '2022-12-21 05:03:08');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 8 - 2022-12-06 05:03:08 [4.02ms] */
select * from `oauth_access_tokens` where `id` = 'e7fd8dd47f76216b5f13e0b36e46ff14d5301036dd3e055b115e31131c3ff6be4e47738dce23d897' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 9 - 2022-12-06 05:03:08 [8.84ms] */
update `oauth_access_tokens` set `name` = 'admin@admin.com' where `id` = 'e7fd8dd47f76216b5f13e0b36e46ff14d5301036dd3e055b115e31131c3ff6be4e47738dce23d897';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-06 05:03:08 [20.11ms] */
select * from `oauth_access_tokens` where `id` = 'e7fd8dd47f76216b5f13e0b36e46ff14d5301036dd3e055b115e31131c3ff6be4e47738dce23d897' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-06 05:03:08 [4.02ms] */
select * from `oauth_access_tokens` where `id` = 'e7fd8dd47f76216b5f13e0b36e46ff14d5301036dd3e055b115e31131c3ff6be4e47738dce23d897' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-06 05:03:08 [4ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-06 05:03:08 [4.07ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-06 05:03:08 [3.87ms] */
select * from `oauth_access_tokens` where `id` = 'e7fd8dd47f76216b5f13e0b36e46ff14d5301036dd3e055b115e31131c3ff6be4e47738dce23d897' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-06 05:03:08 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-06 05:03:08 [4.01ms] */
select * from `menus` where `title` in ('module.user', 'module.genre') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-06 05:03:08 [6.13ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-06 05:03:09 [24.72ms] */
select * from `oauth_access_tokens` where `id` = 'e7fd8dd47f76216b5f13e0b36e46ff14d5301036dd3e055b115e31131c3ff6be4e47738dce23d897' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-06 05:03:09 [4.01ms] */
select * from `oauth_access_tokens` where `id` = 'e7fd8dd47f76216b5f13e0b36e46ff14d5301036dd3e055b115e31131c3ff6be4e47738dce23d897' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-06 05:03:09 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-06 05:03:09 [19.9ms] */
select * from `oauth_access_tokens` where `id` = 'e7fd8dd47f76216b5f13e0b36e46ff14d5301036dd3e055b115e31131c3ff6be4e47738dce23d897' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-06 05:03:09 [3.95ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-06 05:03:09 [3.8ms] */
select * from `oauth_access_tokens` where `id` = 'e7fd8dd47f76216b5f13e0b36e46ff14d5301036dd3e055b115e31131c3ff6be4e47738dce23d897' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-06 05:03:09 [3.86ms] */
select * from `oauth_access_tokens` where `id` = 'e7fd8dd47f76216b5f13e0b36e46ff14d5301036dd3e055b115e31131c3ff6be4e47738dce23d897' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-06 05:03:09 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-06 05:03:09 [3.79ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-06 05:03:09 [4.08ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-06 05:03:09 [9.41ms] */
select * from `oauth_access_tokens` where `id` = 'e7fd8dd47f76216b5f13e0b36e46ff14d5301036dd3e055b115e31131c3ff6be4e47738dce23d897' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-06 05:03:09 [16.29ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-06 05:03:09 [4.1ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-06 05:03:09 [4.12ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-06 05:03:09 [4.2ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-06 05:03:09 [4.09ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-06 05:03:09 [4.19ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-06 08:00:11 [51.79ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-06 08:00:11 [4.15ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-06 08:00:11 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-06 08:00:11 [3.94ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-06 08:00:11 [3.94ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-06 08:00:11 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-06 08:00:11 [12.86ms] */
select * from `menus` where `title` in ('module.user', 'module.genre') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-06 08:00:11 [8.94ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 1 - 2022-12-06 08:00:11 [21.12ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 2 - 2022-12-06 08:00:11 [4.02ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 3 - 2022-12-06 08:00:11 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 4 - 2022-12-06 08:00:11 [5.25ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 5 - 2022-12-06 08:00:11 [3.97ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 6 - 2022-12-06 08:00:11 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 7 - 2022-12-06 08:00:11 [5.9ms] */
select * from `campaigns` where `id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 1 - 2022-12-06 08:00:12 [24.29ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 1 - 2022-12-06 08:00:12 [32.89ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-06 08:00:12 [25.05ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 1 - 2022-12-06 08:00:12 [30.28ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 1 - 2022-12-06 08:00:12 [25.3ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-06 08:00:12 [4.25ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 2 - 2022-12-06 08:00:12 [6.53ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 2 - 2022-12-06 08:00:12 [4.22ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 2 - 2022-12-06 08:00:12 [4ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 2 - 2022-12-06 08:00:12 [4.32ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-06 08:00:12 [4.28ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 3 - 2022-12-06 08:00:12 [4.51ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 3 - 2022-12-06 08:00:12 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 3 - 2022-12-06 08:00:12 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 3 - 2022-12-06 08:00:12 [5.74ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-06 08:00:12 [4.57ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 4 - 2022-12-06 08:00:12 [5.25ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 4 - 2022-12-06 08:00:12 [4.62ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 4 - 2022-12-06 08:00:12 [4.3ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 4 - 2022-12-06 08:00:12 [5.07ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-06 08:00:12 [4.15ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 5 - 2022-12-06 08:00:12 [4.09ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 5 - 2022-12-06 08:00:12 [4.07ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 5 - 2022-12-06 08:00:12 [4.04ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 5 - 2022-12-06 08:00:12 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-06 08:00:12 [4.02ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 6 - 2022-12-06 08:00:12 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 6 - 2022-12-06 08:00:12 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 6 - 2022-12-06 08:00:12 [6.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 6 - 2022-12-06 08:00:12 [6.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 7 - 2022-12-06 08:00:12 [4.6ms] */
select * from `campaigns` where `id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 7 - 2022-12-06 08:00:12 [4.35ms] */
select * from `campaigns` where `id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 7 - 2022-12-06 08:00:12 [3.88ms] */
select * from `campaigns` where `id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-06 08:00:12 [20.73ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-06 08:00:12 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-06 08:00:12 [4.21ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-06 08:00:12 [4.97ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-06 08:00:12 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-06 08:00:12 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-06 08:00:15 [20.12ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-06 08:00:15 [22.25ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-06 08:00:15 [3.96ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-06 08:00:15 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-06 08:00:15 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-06 08:00:15 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-06 08:00:15 [3.96ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-06 08:00:15 [3.95ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-06 08:00:15 [3.81ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-06 08:00:15 [4.03ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-06 08:00:15 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-06 08:00:15 [4.47ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-06 08:00:15 [5.4ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-06 08:00:15 [43.73ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-06 08:00:15 [4.05ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-06 08:00:15 [4.12ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-06 08:00:15 [4.06ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2022-12-06 08:00:17 [21.39ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2022-12-06 08:00:17 [3.96ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2022-12-06 08:00:17 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2022-12-06 08:00:17 [3.99ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2022-12-06 08:00:17 [4.05ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2022-12-06 08:00:17 [4.03ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2022-12-06 08:00:17 [3.95ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-06 08:00:17 [22.32ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-06 08:00:17 [21.04ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-06 08:00:17 [3.96ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-06 08:00:17 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-06 08:00:17 [4.04ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-06 08:00:17 [4.05ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-06 08:00:17 [4.05ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-06 08:00:17 [3.92ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-06 08:00:17 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-06 08:00:17 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-06 08:00:17 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-06 08:00:17 [4.7ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-06 08:00:17 [4.16ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-06 08:00:17 [16.96ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-06 08:00:17 [4.07ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-06 08:00:17 [4.06ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-06 08:00:17 [4.12ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-06 08:00:20 [20.13ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-06 08:00:20 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-06 08:00:20 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-06 08:00:20 [3.97ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-06 08:00:20 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-06 08:00:20 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-06 08:00:20 [4.01ms] */
select * from `menus` where `title` in ('module.user', 'module.genre') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-06 08:00:20 [3.94ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-06 08:00:21 [22.36ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-06 08:00:21 [20.89ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-06 08:00:21 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-06 08:00:21 [3.82ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-06 08:00:21 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-06 08:00:21 [3.78ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-06 08:00:21 [3.93ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-06 08:00:21 [3.9ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-06 08:00:21 [3.8ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-06 08:00:21 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '0fd05d8e696950ee450997f9b58d4881912eec1f0a997c497d1d5fbecb1cd716df05f0ddcf3281f5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-06 08:00:21 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-06 08:00:21 [4.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-06 08:00:21 [4.26ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-06 08:00:21 [21.6ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-06 08:00:21 [3.96ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-06 08:00:21 [4.16ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-06 08:00:21 [3.91ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
