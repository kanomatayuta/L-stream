/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2023-08-23 04:18:21 [80.02ms] */
select * from `oauth_access_tokens` where `id` = '2e92b8cbf74b0b8077adcbfc28d9665a65a932c9e38d3f5b33d10bccb56e4ee458ae37e516c69012' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 1 - 2023-08-23 04:18:29 [53.3ms] */
select * from `users` where `email` = 'admin@admin.com' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 2 - 2023-08-23 04:18:29 [14.62ms] */
select exists(select * from `oauth_personal_access_clients`) as `exists`;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 3 - 2023-08-23 04:18:29 [5.04ms] */
select * from `oauth_personal_access_clients` order by `id` desc limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 4 - 2023-08-23 04:18:29 [21.43ms] */
select * from `oauth_clients` where `oauth_clients`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 5 - 2023-08-23 04:18:29 [3.49ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 6 - 2023-08-23 04:18:29 [3.42ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 7 - 2023-08-23 04:18:30 [332.3ms] */
insert into `oauth_access_tokens` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) values ('b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd', 1, 1, '[]', 0, '2023-08-23 04:18:29', '2023-08-23 04:18:29', '2023-09-07 04:18:29');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 8 - 2023-08-23 04:18:30 [34.52ms] */
select * from `oauth_access_tokens` where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 9 - 2023-08-23 04:18:30 [103.59ms] */
update `oauth_access_tokens` set `name` = 'admin@admin.com' where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2023-08-23 04:18:30 [22.49ms] */
select * from `oauth_access_tokens` where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2023-08-23 04:18:30 [3.15ms] */
select * from `oauth_access_tokens` where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2023-08-23 04:18:30 [8.36ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2023-08-23 04:18:30 [12.35ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2023-08-23 04:18:30 [3.23ms] */
select * from `oauth_access_tokens` where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2023-08-23 04:18:30 [3.08ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2023-08-23 04:18:30 [45.97ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2023-08-23 04:18:30 [4.41ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2023-08-23 04:18:30 [29.54ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2023-08-23 04:18:31 [27.43ms] */
select * from `oauth_access_tokens` where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2023-08-23 04:18:31 [3.33ms] */
select * from `oauth_access_tokens` where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2023-08-23 04:18:31 [13.58ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2023-08-23 04:18:31 [10.69ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2023-08-23 04:18:31 [3.17ms] */
select * from `oauth_access_tokens` where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2023-08-23 04:18:31 [3.1ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 1 - 2023-08-23 04:18:34 [33.17ms] */
select * from `oauth_access_tokens` where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 2 - 2023-08-23 04:18:34 [4.06ms] */
select * from `oauth_access_tokens` where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 3 - 2023-08-23 04:18:34 [8.25ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 4 - 2023-08-23 04:18:34 [12.54ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 5 - 2023-08-23 04:18:34 [3.91ms] */
select * from `oauth_access_tokens` where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 6 - 2023-08-23 04:18:34 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 7 - 2023-08-23 04:18:34 [7ms] */
update `oauth_access_tokens` set `revoked` = 1 where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd';
/*==================================================*/
