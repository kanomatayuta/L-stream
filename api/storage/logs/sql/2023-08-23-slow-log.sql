/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 7 - 2023-08-23 04:18:30 [332.3ms] */
insert into `oauth_access_tokens` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) values ('b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd', 1, 1, '[]', 0, '2023-08-23 04:18:29', '2023-08-23 04:18:29', '2023-09-07 04:18:29');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 9 - 2023-08-23 04:18:30 [103.59ms] */
update `oauth_access_tokens` set `name` = 'admin@admin.com' where `id` = 'b6ffe9f9847fa7b9db0e374003fd410d6a08ddf36f0b8652bda38e7333cb30c043d7c7b1945369cd';
/*==================================================*/
