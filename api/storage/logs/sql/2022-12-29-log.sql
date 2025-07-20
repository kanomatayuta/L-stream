/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-29 01:45:08 [47.43ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-29 01:45:08 [4.11ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-29 01:45:08 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-29 01:45:08 [4.14ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-29 01:45:08 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-29 01:45:08 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-29 01:45:08 [19.65ms] */
select * from `menus` where `title` in ('module.kol', 'module.insight-list', 'module.campaign', 'module.setting') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-29 01:45:08 [5.24ms] */
select * from `menus` where `menus`.`parent_id` in (1, 2, 3, 9) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-29 01:45:08 [4.19ms] */
select * from `payment_details` where `payment_details`.`user_id` = 11 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-29 01:45:08 [25.48ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-29 01:45:08 [4.12ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-29 01:45:08 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-29 01:45:08 [3.99ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-29 01:45:08 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-29 01:45:08 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-29 01:45:08 [7.35ms] */
select * from `permissions`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-29 01:45:08 [6.94ms] */
select `roles`.*, `role_has_permissions`.`permission_id` as `pivot_permission_id`, `role_has_permissions`.`role_id` as `pivot_role_id` from `roles` inner join `role_has_permissions` on `roles`.`id` = `role_has_permissions`.`role_id` where `role_has_permissions`.`permission_id` in (11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 9 - 2022-12-29 01:45:08 [4.06ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 10 - 2022-12-29 01:45:08 [10.51ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-29' and `payment_details`.`end_date` >= '2022-12-29' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 11 - 2022-12-29 01:45:08 [4ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 12 - 2022-12-29 01:45:08 [5.3ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 13 - 2022-12-29 01:45:09 [13.25ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1672278309, 1672278309, '{"uuid":"780e5310-532a-46c0-8843-1582310910e0","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:13:{i:0;a:3:{s:5:\"basic\";a:3:{s:8:\"username\";s:4:\"nasa\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:197:\"https:\/\/scontent-arn2-1.cdninstagram.com\/vp\/fa66adc26aefbb03ca111c7688732f6a\/5E5FEDED\/t51.2885-19\/s150x150\/29090066_159271188110124_1152068159029641216_n.jpg?_nc_ht=scontent-arn2-1.cdninstagram.com\";}s:7:\"metrics\";a:5:{s:16:\"engagement_count\";d:794423.5884;s:2:\"er\";d:1.56;s:17:\"subscribers_count\";i:50924589;s:22:\"real_subscribers_count\";i:43917365;s:22:\"subscribers_growth_prc\";i:0;}s:8:\"features\";a:5:{s:15:\"social_networks\";a:0:{}s:14:\"blogger_topics\";a:2:{i:0;i:228;i:1;i:286;}s:17:\"blogger_thematics\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}s:3:\"aqs\";O:8:\"stdClass\":1:{s:4:\"mark\";s:4:\"good\";}}}i:1;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"taylorswift\";s:5:\"title\";s:12:\"Taylor Swift\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/11830955.jpg?w=320&till=1674097390&sign=137754e01b6fc9edb9e2d0f55f1429db\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}i:2;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"vancityreynolds\";s:5:\"title\";s:13:\"Ryan Reynolds\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1942463581.jpg?w=320&till=1674098165&sign=08e3f95d387c94b52126b825223f87ac\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"45857334\";s:2:\"er\";s:4:\"1.18\";s:16:\"engagement_count\";d:541116.5412;}}i:3;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:14:\"kevinhart4real\";s:5:\"title\";s:10:\"Kevin Hart\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6590609.jpg?w=320&till=1674098245&sign=428fb2be77bad0c8877398d37bad82f2\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"155039259\";s:2:\"er\";s:4:\"0.09\";s:16:\"engagement_count\";d:139535.3331;}}i:4;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"supersaf\";s:5:\"title\";s:8:\"SuperSaf\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/41428916.jpg?w=320&till=1674098340&sign=f440bcef026a9f129e335890f2377568\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"529231\";s:2:\"er\";s:4:\"1.83\";s:16:\"engagement_count\";d:9684.9273;}}i:5;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"selenagomez\";s:5:\"title\";s:12:\"Selena Gomez\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/460563723.jpg?w=320&till=1674098404&sign=6d026056d3295fff26a3ce2f51b6882a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"351492414\";s:2:\"er\";s:3:\"0.7\";s:16:\"engagement_count\";d:2460446.8979999996;}}i:6;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"pepamack\";s:5:\"title\";s:5:\"Petra\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/316719376.jpg?w=320&till=1674098485&sign=4e212d5d81a82b91a3236c928b0a6bd0\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:7:\"1051585\";s:2:\"er\";s:8:\"0.749461\";s:16:\"engagement_count\";d:7881.219456850001;}}i:7;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"kendalljenner\";s:5:\"title\";s:7:\"Kendall\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6380930.jpg?w=320&till=1674098702&sign=9866747cb6e12bd123b2c35133f6b619\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"260554636\";s:2:\"er\";s:4:\"0.89\";s:16:\"engagement_count\";d:2318936.2604;}}i:8;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"fcbarcelona\";s:5:\"title\";s:12:\"FC Barcelona\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/260375673.jpg?w=320&till=1674098749&sign=ef7d691b7d2d6d17045fa5cceb7fc471\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"112673770\";s:2:\"er\";s:4:\"0.34\";s:16:\"engagement_count\";d:383090.818;}}i:9;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"theshilpashetty\";s:5:\"title\";s:20:\"Shilpa Shetty Kundra\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1904097264.jpg?w=320&till=1674098825&sign=89b6ea598b251337fe1b310bb3cbd845\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"26807344\";s:2:\"er\";s:4:\"0.56\";s:16:\"engagement_count\";d:150121.1264;}}i:10;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"tarynwilliams\";s:5:\"title\";s:14:\"Taryn Williams\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/40507182.jpg?w=320&till=1674098881&sign=0fe2726db44d64e4248add6d6645e24a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:5:\"22017\";s:2:\"er\";s:4:\"0.83\";s:16:\"engagement_count\";d:182.7411;}}i:11;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:10:\"kobebryant\";s:5:\"title\";s:11:\"Kobe Bryant\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/351564405.jpg?w=320&till=1674100243&sign=cdbbac85a243afd7f765504d660fabae\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"21107168\";s:2:\"er\";s:4:\"7.31\";s:16:\"engagement_count\";d:1542933.9808;}}i:12;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"nathanwpyle\";s:5:\"title\";s:13:\"Nathan W Pyle\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/213194044.jpg?w=320&till=1674100064&sign=b69916f1d77dded42cacf303d332bb0d\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"626007\";s:2:\"er\";s:4:\"5.31\";s:16:\"engagement_count\";d:33240.971699999995;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:1;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 14 - 2022-12-29 01:45:09 [6.49ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 11 and `k`.`username` in ('nasa', 'taylorswift', 'vancityreynolds', 'kevinhart4real', 'supersaf', 'selenagomez', 'pepamack', 'kendalljenner', 'fcbarcelona', 'theshilpashetty', 'tarynwilliams', 'kobebryant', 'nathanwpyle');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-29 01:45:10 [77.43ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-29 01:45:10 [3.95ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-29 01:45:10 [3.97ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-29 01:45:10 [4.07ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-29 01:45:10 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-29 01:45:10 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2022-12-29 01:45:10 [4.12ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 11 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-29 01:45:19 [22.05ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-29 01:45:19 [4ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-29 01:45:19 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-29 01:45:19 [4.05ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-29 01:45:19 [3.98ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-29 01:45:19 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-29 01:45:19 [4.11ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-29 01:45:19 [4.41ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-29' and `payment_details`.`end_date` >= '2022-12-29' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 9 - 2022-12-29 01:45:19 [4.03ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 10 - 2022-12-29 01:45:19 [4.03ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2022-12-29 01:45:19 [19.95ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2022-12-29 01:45:19 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2022-12-29 01:45:19 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2022-12-29 01:45:19 [3.99ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2022-12-29 01:45:19 [3.94ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2022-12-29 01:45:19 [3.8ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2022-12-29 01:45:19 [3.96ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2022-12-29 01:45:19 [4.81ms] */
select `payment_details`.* from `payment_details` inner join `plans` on `plans`.`id` = `payment_details`.`plan_id` where `user_id` = 11 and `payment_status` = 1 and `payment_details`.`start_date` <= '2022-12-29' and `payment_details`.`end_date` >= '2022-12-29' order by `plans`.`plan_type` desc, `plans`.`plan_type` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 9 - 2022-12-29 01:45:19 [4.01ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 10 - 2022-12-29 01:45:19 [3.99ms] */
select * from `statistics` where `user_id` = 11 and `month` = 202212 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 11 - 2022-12-29 01:45:19 [8.97ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1672278319, 1672278319, '{"uuid":"cf9dcc00-93e2-4af6-9778-5f266d42c2ed","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:1:{i:0;a:3:{s:5:\"basic\";a:5:{s:2:\"id\";s:24:\"UCLA_DiR1FfKNvjuUpBHmylQ\";s:8:\"username\";s:14:\"NASAtelevision\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:96:\"https:\/\/yt3.ggpht.com\/a\/AGF-l7-ftrZQ3lNBQnSCTvbUkAPpjPumepat4S0wGg=s900-c-k-c0xffffffff-no-rj-mo\";s:13:\"category_name\";s:20:\"Science & Technology\";}s:7:\"metrics\";a:1:{s:17:\"subscribers_count\";i:4754873;}s:8:\"features\";a:2:{s:15:\"social_networks\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:2;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=2&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 12 - 2022-12-29 01:45:19 [4.28ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 11 and `k`.`username` in ('NASAtelevision');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 1 - 2022-12-29 01:45:20 [21.93ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 1 - 2022-12-29 01:45:20 [26.78ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 2 - 2022-12-29 01:45:20 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 2 - 2022-12-29 01:45:20 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 3 - 2022-12-29 01:45:20 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 3 - 2022-12-29 01:45:20 [3.75ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 4 - 2022-12-29 01:45:20 [4.02ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 4 - 2022-12-29 01:45:20 [3.99ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 5 - 2022-12-29 01:45:20 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 5 - 2022-12-29 01:45:20 [3.82ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 6 - 2022-12-29 01:45:20 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 6 - 2022-12-29 01:45:20 [4.31ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 7 - 2022-12-29 01:45:20 [3.9ms] */
select * from `tags` where `user_id` = 11 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=2
   Query 7 - 2022-12-29 01:45:20 [4.98ms] */
select * from `campaigns` where `social_type` = 2 and `user_id` = 11 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-29 01:45:20 [22.11ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign?social_type=1
   Query 1 - 2022-12-29 01:45:20 [20.65ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-29 01:45:20 [3.95ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign?social_type=1
   Query 2 - 2022-12-29 01:45:20 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-29 01:45:20 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign?social_type=1
   Query 3 - 2022-12-29 01:45:20 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-29 01:45:20 [3.94ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign?social_type=1
   Query 4 - 2022-12-29 01:45:20 [3.95ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-29 01:45:20 [3.96ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign?social_type=1
   Query 5 - 2022-12-29 01:45:20 [3.8ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-29 01:45:20 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign?social_type=1
   Query 6 - 2022-12-29 01:45:20 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2022-12-29 01:45:20 [3.96ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 11 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign?social_type=1
   Query 7 - 2022-12-29 01:45:20 [8.04ms] */
select * from `campaign_details` where exists (select * from `campaigns` where `campaign_details`.`campaign_id` = `campaigns`.`id` and `user_id` = 11 and `social_type` = 1);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listKolInCampaign?social_type=1
   Query 8 - 2022-12-29 01:45:20 [4.86ms] */
select * from `kols` where 0 = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 11 - 2022-12-29 01:45:20 [6.3ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1672278320, 1672278320, '{"uuid":"f3e41deb-a1fa-46a6-bd05-8212eb5c2012","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:2:{i:0;a:3:{s:5:\"basic\";a:5:{s:2:\"id\";s:24:\"UCLA_DiR1FfKNvjuUpBHmylQ\";s:8:\"username\";s:14:\"NASAtelevision\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:96:\"https:\/\/yt3.ggpht.com\/a\/AGF-l7-ftrZQ3lNBQnSCTvbUkAPpjPumepat4S0wGg=s900-c-k-c0xffffffff-no-rj-mo\";s:13:\"category_name\";s:20:\"Science & Technology\";}s:7:\"metrics\";a:4:{s:2:\"er\";i:0;s:17:\"subscribers_count\";i:4754873;s:11:\"likes_count\";i:0;s:9:\"views_avg\";i:0;}s:8:\"features\";a:2:{s:15:\"social_networks\";a:0:{}s:12:\"audience_geo\";a:1:{s:9:\"countries\";s:0:\"\";}}}i:1;a:2:{s:5:\"basic\";a:4:{s:2:\"id\";s:19:\"6557821753438371845\";s:8:\"username\";s:9:\"littlebig\";s:5:\"title\";s:9:\"littlebig\";s:10:\"avatar_url\";s:127:\"https:\/\/cdn.hypeauditor.com\/img\/tiktok\/user\/6557821753438371845.jpg?w=150&till=1670050800&sign=7d4da05e2c860e1f20ad227d0c50dc8e\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:3;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=3&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 12 - 2022-12-29 01:45:20 [4.02ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 11 and `k`.`username` in ('NASAtelevision', 'littlebig');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 1 - 2022-12-29 01:45:20 [20.22ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 2 - 2022-12-29 01:45:20 [3.97ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 3 - 2022-12-29 01:45:20 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 4 - 2022-12-29 01:45:20 [4.1ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 5 - 2022-12-29 01:45:20 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 6 - 2022-12-29 01:45:20 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=3
   Query 7 - 2022-12-29 01:45:20 [3.99ms] */
select * from `campaigns` where `social_type` = 3 and `user_id` = 11 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 1 - 2022-12-29 01:45:22 [20.06ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 2 - 2022-12-29 01:45:22 [3.82ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 3 - 2022-12-29 01:45:22 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 4 - 2022-12-29 01:45:22 [4.02ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 5 - 2022-12-29 01:45:22 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 6 - 2022-12-29 01:45:22 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 7 - 2022-12-29 01:45:22 [10.66ms] */
select *, (select SUM(cost) as total_cost from `campaign_details` where `campaigns`.`id` = `campaign_details`.`campaign_id`) as `total_cost`, (select SUM(feed_reach + reed_reach) as total_reach from `tab_reports` where `campaigns`.`id` = `tab_reports`.`campaign_id`) as `total_reach`, (select count(*) from `campaign_details` where `campaigns`.`id` = `campaign_details`.`campaign_id`) as `campaign_details_count`, (select reach_rate from `tab_reports` where `campaigns`.`id` = `tab_reports`.`campaign_id`) as `reach_rate`, (select revenue from `tab_reports` where `campaigns`.`id` = `tab_reports`.`campaign_id`) as `revenue`, (select roas from `tab_reports` where `campaigns`.`id` = `tab_reports`.`campaign_id`) as `roas`, (select name from `genres` where `campaigns`.`genre_id` = `genres`.`id`) as `genre_name` from `campaigns` where `user_id` = 11 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 1 - 2022-12-29 01:45:24 [21.77ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 2 - 2022-12-29 01:45:24 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 3 - 2022-12-29 01:45:24 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 4 - 2022-12-29 01:45:24 [4.07ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 5 - 2022-12-29 01:45:24 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 6 - 2022-12-29 01:45:24 [3.99ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 7 - 2022-12-29 01:45:24 [4ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 8 - 2022-12-29 01:45:24 [4.09ms] */
select * from `statistics` where `statistics`.`user_id` in (11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 9 - 2022-12-29 01:45:24 [4.2ms] */
select * from `payment_details` where `payment_details`.`user_id` = 11 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 1 - 2022-12-29 01:45:26 [20.08ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 2 - 2022-12-29 01:45:26 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 3 - 2022-12-29 01:45:26 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 4 - 2022-12-29 01:45:26 [3.99ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 5 - 2022-12-29 01:45:26 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 6 - 2022-12-29 01:45:26 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/listCampaign
   Query 7 - 2022-12-29 01:45:26 [8.74ms] */
select *, (select SUM(cost) as total_cost from `campaign_details` where `campaigns`.`id` = `campaign_details`.`campaign_id`) as `total_cost`, (select SUM(feed_reach + reed_reach) as total_reach from `tab_reports` where `campaigns`.`id` = `tab_reports`.`campaign_id`) as `total_reach`, (select count(*) from `campaign_details` where `campaigns`.`id` = `campaign_details`.`campaign_id`) as `campaign_details_count`, (select reach_rate from `tab_reports` where `campaigns`.`id` = `tab_reports`.`campaign_id`) as `reach_rate`, (select revenue from `tab_reports` where `campaigns`.`id` = `tab_reports`.`campaign_id`) as `revenue`, (select roas from `tab_reports` where `campaigns`.`id` = `tab_reports`.`campaign_id`) as `roas`, (select name from `genres` where `campaigns`.`genre_id` = `genres`.`id`) as `genre_name` from `campaigns` where `user_id` = 11 order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 1 - 2022-12-29 01:45:28 [20.64ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 2 - 2022-12-29 01:45:28 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 3 - 2022-12-29 01:45:28 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 4 - 2022-12-29 01:45:28 [4.08ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 5 - 2022-12-29 01:45:28 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 6 - 2022-12-29 01:45:28 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 7 - 2022-12-29 01:45:28 [3.98ms] */
select * from `plans` where `plans`.`id` in (2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 8 - 2022-12-29 01:45:28 [3.87ms] */
select * from `statistics` where `statistics`.`user_id` in (11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting
   Query 9 - 2022-12-29 01:45:28 [4.03ms] */
select * from `payment_details` where `payment_details`.`user_id` = 11 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting/plan/upgrade
   Query 1 - 2022-12-29 01:45:32 [34.94ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting/plan/upgrade
   Query 2 - 2022-12-29 01:45:32 [6.27ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting/plan/upgrade
   Query 3 - 2022-12-29 01:45:32 [6.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting/plan/upgrade
   Query 4 - 2022-12-29 01:45:32 [11.24ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting/plan/upgrade
   Query 5 - 2022-12-29 01:45:32 [11.46ms] */
select * from `oauth_access_tokens` where `id` = '0999c47d87f9a852f6504b956ea34420e2aea9c7288f9f86e0e2126a241d753157444104cf97da65' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting/plan/upgrade
   Query 6 - 2022-12-29 01:45:32 [8.02ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/setting/plan/upgrade
   Query 7 - 2022-12-29 01:45:32 [5.56ms] */
select `name`, `short_term_money_amount`, `plan_type` from `plans` order by `created_at` desc;
/*==================================================*/
