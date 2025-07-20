/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-12 02:25:59 [45.85ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-12 02:25:59 [3.98ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-12 02:25:59 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-12 02:25:59 [3.99ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-12 02:25:59 [3.93ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-12 02:25:59 [3.93ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-12 02:25:59 [7.39ms] */
select * from `menus` where `title` in ('module.user', 'module.genre') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-12 02:25:59 [5.23ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 1 - 2022-12-12 02:26:00 [96.08ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 2 - 2022-12-12 02:26:00 [4.06ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 3 - 2022-12-12 02:26:00 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 4 - 2022-12-12 02:26:00 [4.1ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 5 - 2022-12-12 02:26:00 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 6 - 2022-12-12 02:26:00 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKol/6
   Query 7 - 2022-12-12 02:26:00 [5.48ms] */
select * from `campaigns` where `id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 1 - 2022-12-12 02:26:00 [19.87ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 1 - 2022-12-12 02:26:00 [20.78ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 1 - 2022-12-12 02:26:00 [21.1ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 1 - 2022-12-12 02:26:00 [22.89ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-12 02:26:00 [24.81ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 2 - 2022-12-12 02:26:00 [5.17ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 2 - 2022-12-12 02:26:00 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 2 - 2022-12-12 02:26:00 [5.21ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-12 02:26:00 [4.11ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 2 - 2022-12-12 02:26:00 [4.15ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 3 - 2022-12-12 02:26:00 [4.18ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 3 - 2022-12-12 02:26:00 [4.05ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 3 - 2022-12-12 02:26:00 [5.12ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 3 - 2022-12-12 02:26:00 [4.21ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-12 02:26:00 [6.66ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 4 - 2022-12-12 02:26:00 [4.83ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 4 - 2022-12-12 02:26:00 [4.55ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 4 - 2022-12-12 02:26:00 [4.23ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 4 - 2022-12-12 02:26:00 [3.98ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 5 - 2022-12-12 02:26:00 [4.08ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 5 - 2022-12-12 02:26:00 [4.04ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-12 02:26:00 [4.02ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 5 - 2022-12-12 02:26:00 [4.48ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 5 - 2022-12-12 02:26:00 [4.34ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 6 - 2022-12-12 02:26:00 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 6 - 2022-12-12 02:26:00 [4.73ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 6 - 2022-12-12 02:26:00 [4.44ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/tag
   Query 6 - 2022-12-12 02:26:00 [5.18ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-12 02:26:00 [6.25ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-12 02:26:00 [4.07ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign/6
   Query 7 - 2022-12-12 02:26:00 [7.76ms] */
select * from `campaigns` where `id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignDetailKolOk/6
   Query 7 - 2022-12-12 02:26:00 [5.47ms] */
select * from `campaigns` where `id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaign-report/6
   Query 7 - 2022-12-12 02:26:00 [4.62ms] */
select * from `campaigns` where `id` = 6 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2022-12-12 02:26:00 [20.31ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2022-12-12 02:26:00 [4.06ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2022-12-12 02:26:00 [4ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2022-12-12 02:26:00 [4.04ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2022-12-12 02:26:00 [4.01ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2022-12-12 02:26:00 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-12 02:26:04 [20.99ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-12 02:26:04 [25.95ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-12 02:26:04 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-12 02:26:04 [3.8ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-12 02:26:04 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-12 02:26:04 [3.88ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-12 02:26:04 [4.15ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-12 02:26:04 [3.98ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-12 02:26:04 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-12 02:26:04 [3.81ms] */
select * from `oauth_access_tokens` where `id` = '9f046fc9dabb734b9482df55f6d997c664407da7bdfad8ebca0c5be7c2da969ce73c4338d44e3ca1' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-12 02:26:04 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-12 02:26:04 [4.61ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-12 02:26:04 [6.09ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-12 02:26:04 [36.61ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-12 02:26:04 [4.09ms] */
select * from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-12 02:26:04 [4.26ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 9, 10) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-12 02:26:04 [4.13ms] */
select * from `plans` where `plans`.`id` in (0, 1, 6);
/*==================================================*/
