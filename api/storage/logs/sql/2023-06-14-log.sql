/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 1 - 2023-06-14 06:46:16 [55.97ms] */
select * from `users` where `email` = 'admin@admin.com' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 2 - 2023-06-14 06:46:16 [12.8ms] */
select exists(select * from `oauth_personal_access_clients`) as `exists`;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 3 - 2023-06-14 06:46:16 [3.83ms] */
select * from `oauth_personal_access_clients` order by `id` desc limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 4 - 2023-06-14 06:46:16 [13.26ms] */
select * from `oauth_clients` where `oauth_clients`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 5 - 2023-06-14 06:46:16 [3.71ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 6 - 2023-06-14 06:46:16 [3.63ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 7 - 2023-06-14 06:46:16 [24.01ms] */
insert into `oauth_access_tokens` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) values ('ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de', 1, 1, '[]', 0, '2023-06-14 06:46:16', '2023-06-14 06:46:16', '2023-06-29 06:46:16');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 8 - 2023-06-14 06:46:16 [3.84ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 9 - 2023-06-14 06:46:16 [12.31ms] */
update `oauth_access_tokens` set `name` = 'admin@admin.com' where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2023-06-14 06:46:16 [22.25ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2023-06-14 06:46:16 [3.57ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2023-06-14 06:46:16 [7.2ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2023-06-14 06:46:16 [9.73ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2023-06-14 06:46:16 [3.63ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2023-06-14 06:46:16 [3.59ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2023-06-14 06:46:17 [20.82ms] */
select * from `menus` where `title` in ('module.user', 'module.genre', 'module.plan') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2023-06-14 06:46:17 [5.19ms] */
select * from `menus` where `menus`.`parent_id` in (4, 6, 8) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2023-06-14 06:46:17 [11.68ms] */
select * from `payment_details` where `payment_details`.`user_id` = 1 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2023-06-14 06:46:17 [23.08ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2023-06-14 06:46:17 [3.52ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2023-06-14 06:46:17 [22.39ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2023-06-14 06:46:17 [8.25ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2023-06-14 06:46:17 [3.2ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2023-06-14 06:46:17 [4.6ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2023-06-14 06:46:17 [10.06ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2023-06-14 06:46:17 [4.85ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2023-06-14 06:46:17 [3.5ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2023-06-14 06:46:17 [11.36ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2023-06-14 06:46:17 [3.08ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2023-06-14 06:46:17 [3.11ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2023-06-14 06:46:17 [12.68ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2023-06-14 06:46:17 [32.14ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2023-06-14 06:46:17 [11.03ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2023-06-14 06:46:17 [17.99ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11, 12) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2023-06-14 06:46:17 [3.53ms] */
select * from `plans` where `plans`.`id` in (0, 2, 3);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2023-06-14 06:46:17 [8.22ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11, 12);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 1 - 2023-06-14 06:46:26 [25.18ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 2 - 2023-06-14 06:46:26 [3.61ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 3 - 2023-06-14 06:46:26 [6.73ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 4 - 2023-06-14 06:46:26 [7.71ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 5 - 2023-06-14 06:46:26 [3.76ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 6 - 2023-06-14 06:46:26 [3.47ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/genre?not_admin=1
   Query 7 - 2023-06-14 06:46:26 [9.76ms] */
select * from `genres` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 1 - 2023-06-14 06:46:28 [21.88ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 1 - 2023-06-14 06:46:28 [24.32ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 2 - 2023-06-14 06:46:28 [3.19ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 2 - 2023-06-14 06:46:28 [4.04ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 3 - 2023-06-14 06:46:28 [5.98ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 3 - 2023-06-14 06:46:28 [4.64ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 4 - 2023-06-14 06:46:28 [8.3ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 4 - 2023-06-14 06:46:28 [8.71ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 5 - 2023-06-14 06:46:28 [3.18ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 5 - 2023-06-14 06:46:28 [3.93ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 6 - 2023-06-14 06:46:28 [3.14ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 6 - 2023-06-14 06:46:28 [3.85ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/plan
   Query 7 - 2023-06-14 06:46:28 [7.09ms] */
select * from `plans` order by `created_at` desc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 7 - 2023-06-14 06:46:28 [21.81ms] */
select count(*) as aggregate from `users`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 8 - 2023-06-14 06:46:28 [12.2ms] */
select *, (select name from `plans` where `users`.`plan_id` = `plans`.`id`) as `plan_name` from `users` order by `id` desc limit 20 offset 0;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 9 - 2023-06-14 06:46:28 [10.59ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (1, 11, 12) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 10 - 2023-06-14 06:46:28 [4.96ms] */
select * from `plans` where `plans`.`id` in (0, 2, 3);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/user
   Query 11 - 2023-06-14 06:46:28 [9.27ms] */
select * from `payment_details` where `payment_details`.`user_id` in (1, 11, 12);
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 1 - 2023-06-14 06:57:14 [25.74ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 2 - 2023-06-14 06:57:14 [3.36ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 3 - 2023-06-14 06:57:14 [7.36ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 4 - 2023-06-14 06:57:14 [9.47ms] */
select * from `users` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 5 - 2023-06-14 06:57:14 [3.38ms] */
select * from `oauth_access_tokens` where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 6 - 2023-06-14 06:57:14 [3.41ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/logout
   Query 7 - 2023-06-14 06:57:14 [6.99ms] */
update `oauth_access_tokens` set `revoked` = 1 where `id` = 'ec4092dc0170a4787a241f61e94946f8d152d7b002df214edd66dfad4ca51569052297ad47d228de';
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 1 - 2023-06-14 06:57:18 [23.08ms] */
select * from `users` where `email` = 'nhung.tth@digidinos.com' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 2 - 2023-06-14 06:57:18 [5.71ms] */
select exists(select * from `oauth_personal_access_clients`) as `exists`;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 3 - 2023-06-14 06:57:18 [3.17ms] */
select * from `oauth_personal_access_clients` order by `id` desc limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 4 - 2023-06-14 06:57:18 [8.76ms] */
select * from `oauth_clients` where `oauth_clients`.`id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 5 - 2023-06-14 06:57:18 [5.21ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 6 - 2023-06-14 06:57:18 [3.19ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 7 - 2023-06-14 06:57:18 [8.1ms] */
insert into `oauth_access_tokens` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) values ('edd140fe0ae191e214ba0e65ceddca58e6a2376f55a7844276dbda22b0c455e2cdb095c89fd3f534', 11, 1, '[]', 0, '2023-06-14 06:57:18', '2023-06-14 06:57:18', '2023-06-29 06:57:18');
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 8 - 2023-06-14 06:57:18 [3.43ms] */
select * from `oauth_access_tokens` where `id` = 'edd140fe0ae191e214ba0e65ceddca58e6a2376f55a7844276dbda22b0c455e2cdb095c89fd3f534' limit 1;
/*==================================================*/
/* Origin (request): POST https://api-stg.lc-analysis.com/api/auth/login
   Query 9 - 2023-06-14 06:57:18 [7.92ms] */
update `oauth_access_tokens` set `name` = 'nhung.tth@digidinos.com' where `id` = 'edd140fe0ae191e214ba0e65ceddca58e6a2376f55a7844276dbda22b0c455e2cdb095c89fd3f534';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 1 - 2023-06-14 06:57:18 [23.7ms] */
select * from `oauth_access_tokens` where `id` = 'edd140fe0ae191e214ba0e65ceddca58e6a2376f55a7844276dbda22b0c455e2cdb095c89fd3f534' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 2 - 2023-06-14 06:57:18 [3.46ms] */
select * from `oauth_access_tokens` where `id` = 'edd140fe0ae191e214ba0e65ceddca58e6a2376f55a7844276dbda22b0c455e2cdb095c89fd3f534' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 3 - 2023-06-14 06:57:18 [8.03ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 4 - 2023-06-14 06:57:18 [11.62ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 5 - 2023-06-14 06:57:18 [3.43ms] */
select * from `oauth_access_tokens` where `id` = 'edd140fe0ae191e214ba0e65ceddca58e6a2376f55a7844276dbda22b0c455e2cdb095c89fd3f534' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 6 - 2023-06-14 06:57:18 [3.52ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 7 - 2023-06-14 06:57:18 [7.03ms] */
select * from `menus` where `title` in ('module.kol', 'module.insight-list', 'module.campaign', 'module.setting') and `parent_id` = 0 order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 8 - 2023-06-14 06:57:18 [3.54ms] */
select * from `menus` where `menus`.`parent_id` in (1, 2, 3, 9) order by `position` asc;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/auth/me
   Query 9 - 2023-06-14 06:57:18 [7.35ms] */
select * from `payment_details` where `payment_details`.`user_id` = 11 and `payment_details`.`user_id` is not null limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 1 - 2023-06-14 06:57:20 [86.15ms] */
select * from `oauth_access_tokens` where `id` = 'edd140fe0ae191e214ba0e65ceddca58e6a2376f55a7844276dbda22b0c455e2cdb095c89fd3f534' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 2 - 2023-06-14 06:57:20 [3.25ms] */
select * from `oauth_access_tokens` where `id` = 'edd140fe0ae191e214ba0e65ceddca58e6a2376f55a7844276dbda22b0c455e2cdb095c89fd3f534' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 3 - 2023-06-14 06:57:20 [4.15ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 4 - 2023-06-14 06:57:20 [9.2ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 5 - 2023-06-14 06:57:20 [3.23ms] */
select * from `oauth_access_tokens` where `id` = 'edd140fe0ae191e214ba0e65ceddca58e6a2376f55a7844276dbda22b0c455e2cdb095c89fd3f534' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 6 - 2023-06-14 06:57:20 [3.12ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 7 - 2023-06-14 06:57:20 [8.84ms] */
select * from `permissions`;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 8 - 2023-06-14 06:57:20 [10.38ms] */
select `roles`.*, `role_has_permissions`.`permission_id` as `pivot_permission_id`, `role_has_permissions`.`role_id` as `pivot_role_id` from `roles` inner join `role_has_permissions` on `roles`.`id` = `role_has_permissions`.`role_id` where `role_has_permissions`.`permission_id` in (11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114);
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 9 - 2023-06-14 06:57:20 [5.06ms] */
select `roles`.*, `model_has_roles`.`model_id` as `pivot_model_id`, `model_has_roles`.`role_id` as `pivot_role_id`, `model_has_roles`.`model_type` as `pivot_model_type` from `roles` inner join `model_has_roles` on `roles`.`id` = `model_has_roles`.`role_id` where `model_has_roles`.`model_id` in (11) and `model_has_roles`.`model_type` = 'Modules\User\Models\User';
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 10 - 2023-06-14 06:57:21 [18.4ms] */
insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values ('high', 0, null, 1686725841, 1686725841, '{"uuid":"37babb54-82f5-48e3-b024-325482dc79cf","displayName":"Modules\Kol\Jobs\UpdateKolSearchJob","job":"Illuminate\Queue\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Modules\Kol\Jobs\UpdateKolSearchJob","command":"O:35:\"Modules\Kol\Jobs\UpdateKolSearchJob\":12:{s:45:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000kolInfos\";a:13:{i:0;a:3:{s:5:\"basic\";a:3:{s:8:\"username\";s:4:\"nasa\";s:5:\"title\";s:4:\"NASA\";s:10:\"avatar_url\";s:197:\"https:\/\/scontent-arn2-1.cdninstagram.com\/vp\/fa66adc26aefbb03ca111c7688732f6a\/5E5FEDED\/t51.2885-19\/s150x150\/29090066_159271188110124_1152068159029641216_n.jpg?_nc_ht=scontent-arn2-1.cdninstagram.com\";}s:7:\"metrics\";a:5:{s:16:\"engagement_count\";d:794423.5884;s:2:\"er\";d:1.56;s:17:\"subscribers_count\";i:50924589;s:22:\"real_subscribers_count\";i:43917365;s:22:\"subscribers_growth_prc\";i:0;}s:8:\"features\";a:5:{s:15:\"social_networks\";a:0:{}s:14:\"blogger_topics\";a:2:{i:0;i:228;i:1;i:286;}s:17:\"blogger_thematics\";a:0:{}s:12:\"audience_geo\";a:2:{s:9:\"countries\";s:0:\"\";s:6:\"cities\";s:0:\"\";}s:3:\"aqs\";O:8:\"stdClass\":1:{s:4:\"mark\";s:4:\"good\";}}}i:1;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"taylorswift\";s:5:\"title\";s:12:\"Taylor Swift\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/11830955.jpg?w=320&till=1674097390&sign=137754e01b6fc9edb9e2d0f55f1429db\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"226769025\";s:2:\"er\";s:4:\"1.16\";s:16:\"engagement_count\";d:2630520.69;}}i:2;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"vancityreynolds\";s:5:\"title\";s:13:\"Ryan Reynolds\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1942463581.jpg?w=320&till=1674098165&sign=08e3f95d387c94b52126b825223f87ac\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"45857334\";s:2:\"er\";s:4:\"1.18\";s:16:\"engagement_count\";d:541116.5412;}}i:3;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:14:\"kevinhart4real\";s:5:\"title\";s:10:\"Kevin Hart\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6590609.jpg?w=320&till=1674098245&sign=428fb2be77bad0c8877398d37bad82f2\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"155039259\";s:2:\"er\";s:4:\"0.09\";s:16:\"engagement_count\";d:139535.3331;}}i:4;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"supersaf\";s:5:\"title\";s:8:\"SuperSaf\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/41428916.jpg?w=320&till=1674098340&sign=f440bcef026a9f129e335890f2377568\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"529231\";s:2:\"er\";s:4:\"1.83\";s:16:\"engagement_count\";d:9684.9273;}}i:5;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"selenagomez\";s:5:\"title\";s:12:\"Selena Gomez\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/460563723.jpg?w=320&till=1674098404&sign=6d026056d3295fff26a3ce2f51b6882a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"351492414\";s:2:\"er\";s:3:\"0.7\";s:16:\"engagement_count\";d:2460446.8979999996;}}i:6;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:8:\"pepamack\";s:5:\"title\";s:5:\"Petra\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/316719376.jpg?w=320&till=1674098485&sign=4e212d5d81a82b91a3236c928b0a6bd0\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:7:\"1051585\";s:2:\"er\";s:8:\"0.749461\";s:16:\"engagement_count\";d:7881.219456850001;}}i:7;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"kendalljenner\";s:5:\"title\";s:7:\"Kendall\";s:10:\"avatar_url\";s:118:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/6380930.jpg?w=320&till=1674098702&sign=9866747cb6e12bd123b2c35133f6b619\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"260554636\";s:2:\"er\";s:4:\"0.89\";s:16:\"engagement_count\";d:2318936.2604;}}i:8;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"fcbarcelona\";s:5:\"title\";s:12:\"FC Barcelona\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/260375673.jpg?w=320&till=1674098749&sign=ef7d691b7d2d6d17045fa5cceb7fc471\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:9:\"112673770\";s:2:\"er\";s:4:\"0.34\";s:16:\"engagement_count\";d:383090.818;}}i:9;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:15:\"theshilpashetty\";s:5:\"title\";s:20:\"Shilpa Shetty Kundra\";s:10:\"avatar_url\";s:121:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/1904097264.jpg?w=320&till=1674098825&sign=89b6ea598b251337fe1b310bb3cbd845\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"26807344\";s:2:\"er\";s:4:\"0.56\";s:16:\"engagement_count\";d:150121.1264;}}i:10;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:13:\"tarynwilliams\";s:5:\"title\";s:14:\"Taryn Williams\";s:10:\"avatar_url\";s:119:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/40507182.jpg?w=320&till=1674098881&sign=0fe2726db44d64e4248add6d6645e24a\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:5:\"22017\";s:2:\"er\";s:4:\"0.83\";s:16:\"engagement_count\";d:182.7411;}}i:11;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:10:\"kobebryant\";s:5:\"title\";s:11:\"Kobe Bryant\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/351564405.jpg?w=320&till=1674100243&sign=cdbbac85a243afd7f765504d660fabae\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:8:\"21107168\";s:2:\"er\";s:4:\"7.31\";s:16:\"engagement_count\";d:1542933.9808;}}i:12;a:2:{s:5:\"basic\";a:3:{s:8:\"username\";s:11:\"nathanwpyle\";s:5:\"title\";s:13:\"Nathan W Pyle\";s:10:\"avatar_url\";s:120:\"https:\/\/cdn.hypeauditor.com\/img\/instagram\/user\/213194044.jpg?w=320&till=1674100064&sign=b69916f1d77dded42cacf303d332bb0d\";}s:7:\"metrics\";a:3:{s:17:\"subscribers_count\";s:6:\"626007\";s:2:\"er\";s:4:\"5.31\";s:16:\"engagement_count\";d:33240.971699999995;}}}s:47:\"\u0000Modules\Kol\Jobs\UpdateKolSearchJob\u0000socialType\";i:1;s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";s:4:\"high\";s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:11:\"afterCommit\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/kol/search?not_admin=1&social_type=1&sort=%7B%22field%22%3A%22subscribers_count%22%2C%22order%22%3A%22desc%22%7D
   Query 11 - 2023-06-14 06:57:21 [26.76ms] */
select `k`.`username`, `k`.`id`, `t`.`hash_tags`, `kt`.`kol_id` from `kol_tags` as `kt` inner join `kols` as `k` on `kt`.`kol_id` = `k`.`id` inner join `tags` as `t` on `kt`.`tag_id` = `t`.`id` inner join `users` as `u` on `t`.`user_id` = `u`.`id` where `u`.`id` = 11 and `k`.`username` in ('nasa', 'taylorswift', 'vancityreynolds', 'kevinhart4real', 'supersaf', 'selenagomez', 'pepamack', 'kendalljenner', 'fcbarcelona', 'theshilpashetty', 'tarynwilliams', 'kobebryant', 'nathanwpyle');
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 1 - 2023-06-14 06:57:21 [20.44ms] */
select * from `oauth_access_tokens` where `id` = 'edd140fe0ae191e214ba0e65ceddca58e6a2376f55a7844276dbda22b0c455e2cdb095c89fd3f534' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 2 - 2023-06-14 06:57:21 [3.27ms] */
select * from `oauth_access_tokens` where `id` = 'edd140fe0ae191e214ba0e65ceddca58e6a2376f55a7844276dbda22b0c455e2cdb095c89fd3f534' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 3 - 2023-06-14 06:57:21 [4.69ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 4 - 2023-06-14 06:57:21 [8.93ms] */
select * from `users` where `id` = 11 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 5 - 2023-06-14 06:57:21 [3.25ms] */
select * from `oauth_access_tokens` where `id` = 'edd140fe0ae191e214ba0e65ceddca58e6a2376f55a7844276dbda22b0c455e2cdb095c89fd3f534' limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 6 - 2023-06-14 06:57:21 [3.1ms] */
select * from `oauth_clients` where `id` = 1 limit 1;
/*==================================================*/
/* Origin (request): GET https://api-stg.lc-analysis.com/api/campaignActive?social_type=1
   Query 7 - 2023-06-14 06:57:21 [12ms] */
select * from `campaigns` where `social_type` = 1 and `user_id` = 11 and `is_active` = 1 order by `created_at` desc;
/*==================================================*/
