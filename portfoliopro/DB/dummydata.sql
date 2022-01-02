INSERT INTO `users` (`id`, `user_email`, `user_password`, `user_nickname`, `user_profile_content`, `user_image_path`) VALUES
(1, 'email1', 'pw1', 'nick1', 'profile1', 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `users` (`id`, `user_email`, `user_password`, `user_nickname`, `user_profile_content`, `user_image_path`) VALUES
(2, 'email2', 'pw2', 'nick2', 'profile2', 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `portfolios` (`id`, `user_id`, `portfolio_name`, `portfolio_content`, `portfolio_image_path`) VALUES
(1, 1, 'port1', 'portcon1', 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `portfolios` (`id`, `user_id`, `portfolio_name`, `portfolio_content`, `portfolio_image_path`) VALUES
(2, 1, 'port2', 'portcon2', 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `portfolios` (`id`, `user_id`, `portfolio_name`, `portfolio_content`, `portfolio_image_path`) VALUES
(3, 2, 'port3', 'portcon3', 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `portfolios` (`id`, `user_id`, `portfolio_name`, `portfolio_content`, `portfolio_image_path`) VALUES
(4, 2, 'port4', 'portcon4', 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `projects` (`id`, `portfolio_id`, `project_name`, `project_content`) VALUES
(1, 1, 'pro1', 'procon1'),
(2, 1, 'pro2', 'procon2'),
(3, 2, 'pro3', 'procon3'),
(4, 2, 'pro4', 'procon4'),
(5, 3, 'pro5', 'procon5'),
(6, 3, 'pro6', 'procon6'),
(7, 4, 'pro7', 'procon7'),
(8, 4, 'pro8', 'procon8');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(1, 1, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(2, 1, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(3, 2, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(4, 2, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(5, 3, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(6, 3, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(7, 4, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(8, 4, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(9, 5, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(10, 5, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(11, 6, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(12, 6, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(13, 7, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(14, 7, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(15, 8, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(16, 8, 'https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9');