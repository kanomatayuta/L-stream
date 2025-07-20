/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-21 02:46:14 [70.19ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-21 02:46:14 [4.01ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-21 02:46:14 [4.05ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-21 02:46:14 [4.28ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-21 02:46:14 [4.06ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-21 02:46:14 [4.01ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-21 02:46:14 [9.78ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-21 02:46:14 [5.55ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-21 02:46:14 [4.07ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-21 02:46:15 [23.66ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-21 02:46:15 [4.42ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-21 02:46:15 [6.49ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-21 02:46:15 [24.24ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-21 02:46:15 [4.03ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-21 02:46:15 [3.88ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-21 02:46:15 [4.04ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-21 02:46:15 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-21 02:46:15 [3.96ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-21 02:46:15 [5.13ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-21 02:46:15 [3.81ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-21 02:46:15 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-21 02:46:15 [4.06ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-21 02:46:15 [69.32ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-21 02:46:15 [5.78ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-21 02:46:15 [13.46ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-21 02:46:15 [3.87ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-21 02:46:15 [3.97ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2022-12-21 02:47:10 [22.52ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2022-12-21 02:47:10 [3.89ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2022-12-21 02:47:10 [4.36ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2022-12-21 02:47:10 [4.34ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2022-12-21 02:47:10 [4.95ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2022-12-21 02:47:10 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2022-12-21 02:47:10 [24.94ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2022-12-21 02:47:10 [3.91ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2022-12-21 02:47:10 [5.77ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2022-12-21 02:47:11 [25.28ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2022-12-21 02:47:11 [4.12ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2022-12-21 02:47:11 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2022-12-21 02:47:11 [4.3ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2022-12-21 02:47:11 [4.1ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2022-12-21 02:47:11 [4.09ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2022-12-21 02:47:11 [22.05ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2022-12-21 02:47:11 [5.26ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2022-12-21 02:47:11 [14.22ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2022-12-21 02:47:11 [5.44ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2022-12-21 02:47:11 [4.67ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2022-12-21 02:47:11 [3.93ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2022-12-21 02:47:11 [4.12ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2022-12-21 02:47:11 [4.02ms] */
select * from `oauth_access_tokens` where `id` = 'd39e29aa2bf5bfee47dbd9aa88270d47575f085f8fb6b1661be4e694f3c43be910ccf11d681c0284' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2022-12-21 02:47:11 [3.93ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2022-12-21 02:47:11 [4.09ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2022-12-21 02:47:11 [3.9ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2022-12-21 02:47:11 [3.98ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
