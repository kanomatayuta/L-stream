/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 1 - 2023-01-26 03:44:00 [354.57ms] */
select * from `users` where `email` = 'admin@admin.com' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 2 - 2023-01-26 03:44:00 [10.8ms] */
select exists(select * from `oauth_personal_access_clients`) as `exists`;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 3 - 2023-01-26 03:44:00 [5.4ms] */
select * from `oauth_personal_access_clients` order by `id` desc limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 4 - 2023-01-26 03:44:00 [3.98ms] */
select * from `oauth_clients` where `oauth_clients`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 5 - 2023-01-26 03:44:00 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 6 - 2023-01-26 03:44:00 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 7 - 2023-01-26 03:44:00 [15.48ms] */
insert into `oauth_access_tokens` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) values ('5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5', 1, 1, '[]', 0, '2023-01-26 03:44:00', '2023-01-26 03:44:00', '2023-02-10 03:44:00');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 8 - 2023-01-26 03:44:00 [4.03ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 9 - 2023-01-26 03:44:00 [13.73ms] */
update `oauth_access_tokens` set `name` = 'admin@admin.com' where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2023-01-26 03:44:00 [19.73ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2023-01-26 03:44:00 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2023-01-26 03:44:00 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2023-01-26 03:44:00 [3.89ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2023-01-26 03:44:00 [3.79ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2023-01-26 03:44:00 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2023-01-26 03:44:00 [26.45ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2023-01-26 03:44:00 [5.16ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2023-01-26 03:44:01 [4.54ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2023-01-26 03:44:01 [24.34ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2023-01-26 03:44:01 [19.35ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2023-01-26 03:44:01 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2023-01-26 03:44:01 [3.93ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2023-01-26 03:44:01 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2023-01-26 03:44:01 [3.99ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2023-01-26 03:44:01 [4ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2023-01-26 03:44:01 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2023-01-26 03:44:01 [4.24ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2023-01-26 03:44:01 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2023-01-26 03:44:01 [6.25ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2023-01-26 03:44:01 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2023-01-26 03:44:01 [3.89ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2023-01-26 03:44:01 [67.89ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2023-01-26 03:44:01 [13.12ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2023-01-26 03:44:01 [21.16ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2023-01-26 03:44:01 [4.34ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2023-01-26 03:44:01 [4.29ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2023-01-26 03:44:04 [19.94ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2023-01-26 03:44:04 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2023-01-26 03:44:04 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2023-01-26 03:44:04 [3.97ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2023-01-26 03:44:04 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2023-01-26 03:44:04 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2023-01-26 03:44:04 [9.8ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2023-01-26 03:44:05 [25.11ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2023-01-26 03:44:05 [4.18ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2023-01-26 03:44:05 [5.26ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2023-01-26 03:44:05 [7.5ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2023-01-26 03:44:05 [3.96ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2023-01-26 03:44:05 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2023-01-26 03:44:05 [6.86ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2023-01-26 03:44:06 [23.33ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2023-01-26 03:44:06 [22.17ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2023-01-26 03:44:06 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2023-01-26 03:44:06 [3.95ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2023-01-26 03:44:06 [4.25ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2023-01-26 03:44:06 [5.35ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2023-01-26 03:44:06 [5.27ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2023-01-26 03:44:06 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2023-01-26 03:44:06 [4ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2023-01-26 03:44:06 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2023-01-26 03:44:06 [6.05ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2023-01-26 03:44:06 [4.36ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2023-01-26 03:44:06 [8.78ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2023-01-26 03:44:06 [16.72ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2023-01-26 03:44:06 [6.22ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2023-01-26 03:44:06 [5.4ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2023-01-26 03:44:06 [4.92ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2023-01-26 03:44:06 [3.96ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 1 - 2023-01-26 03:44:14 [21.85ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 2 - 2023-01-26 03:44:14 [4.02ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 3 - 2023-01-26 03:44:14 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 4 - 2023-01-26 03:44:14 [3.98ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 5 - 2023-01-26 03:44:14 [3.83ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 6 - 2023-01-26 03:44:14 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 7 - 2023-01-26 03:44:14 [3.95ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 8 - 2023-01-26 03:44:14 [8.78ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 9 - 2023-01-26 03:44:14 [8.79ms] */
select * from `payment_details` where `payment_details`.`user_id` = 11 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2023-01-26 03:44:16 [20.14ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2023-01-26 03:44:16 [23.57ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2023-01-26 03:44:16 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2023-01-26 03:44:16 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2023-01-26 03:44:16 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2023-01-26 03:44:16 [3.86ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2023-01-26 03:44:16 [3.96ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2023-01-26 03:44:16 [4.11ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2023-01-26 03:44:16 [3.81ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2023-01-26 03:44:16 [3.81ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2023-01-26 03:44:16 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2023-01-26 03:44:16 [4.28ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2023-01-26 03:44:16 [4.08ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2023-01-26 03:44:16 [19.89ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2023-01-26 03:44:16 [4.69ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2023-01-26 03:44:16 [5.78ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2023-01-26 03:44:16 [4.02ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2023-01-26 03:44:16 [4.1ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 1 - 2023-01-26 03:44:17 [19.76ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 2 - 2023-01-26 03:44:17 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 3 - 2023-01-26 03:44:17 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 4 - 2023-01-26 03:44:17 [4ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 5 - 2023-01-26 03:44:17 [3.89ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 6 - 2023-01-26 03:44:17 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 7 - 2023-01-26 03:44:17 [4ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 8 - 2023-01-26 03:44:17 [4.55ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user/11
   Query 9 - 2023-01-26 03:44:17 [6.47ms] */
select * from `payment_details` where `payment_details`.`user_id` = 11 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2023-01-26 03:44:18 [20.46ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2023-01-26 03:44:18 [20.4ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2023-01-26 03:44:18 [3.76ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2023-01-26 03:44:18 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2023-01-26 03:44:18 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2023-01-26 03:44:18 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2023-01-26 03:44:18 [3.87ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2023-01-26 03:44:18 [5.72ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2023-01-26 03:44:18 [3.78ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2023-01-26 03:44:18 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2023-01-26 03:44:18 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2023-01-26 03:44:18 [3.97ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2023-01-26 03:44:18 [8.75ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2023-01-26 03:44:18 [17.18ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2023-01-26 03:44:18 [7.95ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2023-01-26 03:44:18 [5.05ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2023-01-26 03:44:18 [4.58ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2023-01-26 03:44:18 [4.81ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2023-01-26 03:44:28 [24.53ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2023-01-26 03:44:28 [3.83ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2023-01-26 03:44:28 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2023-01-26 03:44:28 [3.96ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2023-01-26 03:44:28 [4.13ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2023-01-26 03:44:28 [3.81ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2023-01-26 03:44:28 [7.93ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2023-01-26 03:44:29 [20.15ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2023-01-26 03:44:29 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2023-01-26 03:44:29 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2023-01-26 03:44:29 [3.93ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2023-01-26 03:44:29 [3.83ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2023-01-26 03:44:29 [4.19ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2023-01-26 03:44:29 [4.61ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2023-01-26 03:44:32 [19.92ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2023-01-26 03:44:32 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2023-01-26 03:44:32 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2023-01-26 03:44:32 [3.95ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2023-01-26 03:44:32 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2023-01-26 03:44:32 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2023-01-26 03:44:32 [6.91ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2023-01-26 03:44:32 [20.41ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2023-01-26 03:44:32 [3.84ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2023-01-26 03:44:32 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2023-01-26 03:44:32 [3.91ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2023-01-26 03:44:32 [3.94ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2023-01-26 03:44:32 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2023-01-26 03:44:32 [6.8ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2023-01-26 03:44:55 [24.89ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2023-01-26 03:44:55 [3.94ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2023-01-26 03:44:55 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2023-01-26 03:44:55 [19.34ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2023-01-26 03:44:55 [3.91ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2023-01-26 03:44:55 [4.14ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2023-01-26 03:44:55 [3.71ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2023-01-26 03:44:55 [3.79ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2023-01-26 03:44:55 [5.44ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2023-01-26 03:44:55 [3.95ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2023-01-26 03:44:55 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2023-01-26 03:44:55 [4.15ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2023-01-26 03:44:55 [6.99ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2023-01-26 03:44:55 [23.64ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2023-01-26 03:44:55 [4.06ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2023-01-26 03:44:55 [4.17ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2023-01-26 03:44:55 [3.93ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2023-01-26 03:44:55 [3.86ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2023-01-26 03:45:34 [22.15ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2023-01-26 03:45:34 [3.98ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2023-01-26 03:45:34 [4ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2023-01-26 03:45:34 [4.07ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2023-01-26 03:45:34 [4.15ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2023-01-26 03:45:34 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2023-01-26 03:45:34 [5.01ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2023-01-26 03:45:37 [20.06ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2023-01-26 03:45:37 [3.82ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2023-01-26 03:45:37 [3.84ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2023-01-26 03:45:37 [4.01ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2023-01-26 03:45:37 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2023-01-26 03:45:37 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2023-01-26 03:45:37 [4.25ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2023-01-26 03:45:41 [22.03ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2023-01-26 03:45:41 [4.05ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2023-01-26 03:45:41 [3.87ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2023-01-26 03:45:41 [3.89ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2023-01-26 03:45:41 [3.91ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2023-01-26 03:45:41 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2023-01-26 03:45:41 [3.87ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2023-01-26 03:45:41 [26.07ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2023-01-26 03:45:41 [4.38ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2023-01-26 03:45:41 [3.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2023-01-26 03:45:41 [20.71ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2023-01-26 03:45:41 [3.95ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2023-01-26 03:45:41 [4.08ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2023-01-26 03:45:41 [3.93ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2023-01-26 03:45:41 [3.8ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2023-01-26 03:45:41 [3.91ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2023-01-26 03:45:41 [6.24ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2023-01-26 03:45:41 [4.58ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2023-01-26 03:45:41 [5.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2023-01-26 03:45:41 [17.83ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2023-01-26 03:45:41 [4.81ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2023-01-26 03:45:41 [5.24ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2023-01-26 03:45:41 [6.64ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2023-01-26 03:45:41 [4.25ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2023-01-26 03:45:41 [3.99ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2023-01-26 03:45:48 [21.7ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2023-01-26 03:45:48 [4.19ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2023-01-26 03:45:48 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2023-01-26 03:45:48 [3.99ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2023-01-26 03:45:48 [3.99ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2023-01-26 03:45:48 [3.8ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2023-01-26 03:45:48 [7.73ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 1 - 2023-01-26 03:45:52 [21.39ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 2 - 2023-01-26 03:45:52 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 3 - 2023-01-26 03:45:52 [7.01ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 4 - 2023-01-26 03:45:52 [4.06ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 5 - 2023-01-26 03:45:52 [4.07ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 6 - 2023-01-26 03:45:52 [3.94ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan?not_admin=1
   Query 7 - 2023-01-26 03:45:52 [4.88ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2023-01-26 03:46:11 [22.2ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2023-01-26 03:46:11 [4.04ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2023-01-26 03:46:11 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2023-01-26 03:46:11 [3.97ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2023-01-26 03:46:11 [3.87ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2023-01-26 03:46:11 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2023-01-26 03:46:11 [3.95ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2023-01-26 03:46:12 [21.55ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2023-01-26 03:46:12 [21.03ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2023-01-26 03:46:12 [3.92ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2023-01-26 03:46:12 [3.86ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2023-01-26 03:46:12 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2023-01-26 03:46:12 [3.72ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2023-01-26 03:46:12 [3.96ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2023-01-26 03:46:12 [4.09ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2023-01-26 03:46:12 [3.95ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2023-01-26 03:46:12 [3.9ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2023-01-26 03:46:12 [3.83ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2023-01-26 03:46:12 [4.8ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2023-01-26 03:46:12 [4.64ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2023-01-26 03:46:13 [19.38ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2023-01-26 03:46:13 [5.76ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2023-01-26 03:46:13 [4.36ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2023-01-26 03:46:13 [4.01ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2023-01-26 03:46:13 [4ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user?limit=30&page=1
   Query 1 - 2023-01-26 03:49:39 [21.87ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user?limit=30&page=1
   Query 2 - 2023-01-26 03:49:39 [3.88ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user?limit=30&page=1
   Query 3 - 2023-01-26 03:49:39 [3.92ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user?limit=30&page=1
   Query 4 - 2023-01-26 03:49:39 [4.1ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user?limit=30&page=1
   Query 5 - 2023-01-26 03:49:39 [3.93ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user?limit=30&page=1
   Query 6 - 2023-01-26 03:49:39 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user?limit=30&page=1
   Query 7 - 2023-01-26 03:49:39 [22.95ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user?limit=30&page=1
   Query 8 - 2023-01-26 03:49:39 [17.58ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 30 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user?limit=30&page=1
   Query 9 - 2023-01-26 03:49:39 [14.45ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user?limit=30&page=1
   Query 10 - 2023-01-26 03:49:39 [3.94ms] */
select * from `plans` where `plans`.`id` in (0, 2);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user?limit=30&page=1
   Query 11 - 2023-01-26 03:49:39 [3.95ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11);
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 1 - 2023-01-26 03:50:34 [21.71ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 2 - 2023-01-26 03:50:34 [3.96ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 3 - 2023-01-26 03:50:34 [3.89ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 4 - 2023-01-26 03:50:34 [4.02ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 5 - 2023-01-26 03:50:34 [3.85ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 6 - 2023-01-26 03:50:34 [3.79ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 7 - 2023-01-26 03:50:34 [4.04ms] */
select count(*) as aggregate from `users` where `email` = 'syt.iphone@gmail.com' and `id` <> 0;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 8 - 2023-01-26 03:50:34 [35.92ms] */
insert into `users` (`company_name`, `code`, `email`, `website`, `representative`, `address`, `mobile_no`, `plan_id`, `plan_start_date`, `role_type`, `password`, `page_search_number`, `profile_view_number`, `export_csv_number`, `campaign_register_number`, `updated_at`, `created_at`) values ('齋藤テスト', 93, 'syt.iphone@gmail.com', 'https://www.com', 'サイトウ', 'とうきょうとせたがやくたいしどう', 08064807206, 3, '2023-01-25', 2, 'y$k5tyOgM9dNrHERXXesYYy.j58avH.NWZe/dnm04ipZ.PHKECxoVLm', 0, 0, 0, 0, '2023-01-26 03:50:34', '2023-01-26 03:50:34');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 9 - 2023-01-26 03:50:34 [4.2ms] */
select * from `plans` where `plans`.`id` = 3 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 10 - 2023-01-26 03:50:34 [16.11ms] */
insert into `payment_details` (`user_id`, `plan_id`, `money_amount`, `start_date`, `end_date`, `page_search_number`, `profile_view_number`, `export_csv_number`, `campaign_register_number`, `payment_status`, `updated_at`, `created_at`) values (12, 3, 50000, '2022-12-16 00:00:00', '2032-12-16 00:00:00', 500, 0, 0, 0, 1, '2023-01-26 03:50:34', '2023-01-26 03:50:34');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/user
   Query 11 - 2023-01-26 03:50:34 [4.69ms] */
select * from `payment_details` where `payment_details`.`user_id` = 12 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2023-01-26 03:50:34 [24.97ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2023-01-26 03:50:34 [3.81ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2023-01-26 03:50:34 [4.01ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2023-01-26 03:50:34 [3.9ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2023-01-26 03:50:34 [4.17ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2023-01-26 03:50:34 [20.37ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2023-01-26 03:50:34 [3.78ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2023-01-26 03:50:34 [4.38ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2023-01-26 03:50:34 [3.82ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2023-01-26 03:50:34 [7.74ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2023-01-26 03:50:34 [4.81ms] */
select * from `oauth_access_tokens` where `id` = '5d81f13b5676b2b43af1fe7e1d6d79841961ef954a0f4f3fe66f100b8f5c010aa9e477ee64c6fce5' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2023-01-26 03:50:34 [3.9ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2023-01-26 03:50:34 [27.16ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2023-01-26 03:50:34 [5.99ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2023-01-26 03:50:34 [4.23ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name`, (select payment_status from `payment_details` where `users`.`id` = `payment_details`.`user_id`) as `payment_status_sort` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2023-01-26 03:50:34 [10.64ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11, 12) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2023-01-26 03:50:34 [4.05ms] */
select * from `plans` where `plans`.`id` in (0, 2, 3);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2023-01-26 03:50:34 [4.06ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11, 12);
/*==================================================*/
