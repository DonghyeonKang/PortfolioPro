INSERT INTO `users` (`id`, `user_email`, `user_password`, `user_nickname`, `user_profile_content`, `user_image_path`) VALUES
(1, 'email1', 'pw1', 'nick1', 'profile1', 'u1');

INSERT INTO `users` (`id`, `user_email`, `user_password`, `user_nickname`, `user_profile_content`, `user_image_path`) VALUES
(2, 'email2', 'pw2', 'nick2', 'profile2', 'u2');

INSERT INTO `portfolios` (`id`, `user_id`, `portfolio_name`, `portfolio_content`, `portfolio_image_path`) VALUES
(1, 1, 'port1', 'portcon1', 'portimage1');

INSERT INTO `portfolios` (`id`, `user_id`, `portfolio_name`, `portfolio_content`, `portfolio_image_path`) VALUES
(2, 1, 'port2', 'portcon2', 'portimage2');

INSERT INTO `portfolios` (`id`, `user_id`, `portfolio_name`, `portfolio_content`, `portfolio_image_path`) VALUES
(3, 2, 'port3', 'portcon3', 'portimage3');

INSERT INTO `portfolios` (`id`, `user_id`, `portfolio_name`, `portfolio_content`, `portfolio_image_path`) VALUES
(4, 2, 'port4', 'portcon4', 'portimage4');

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
(1, 1, 'i1');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(2, 1, 'i2');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(3, 2, 'i3');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(4, 2, 'i4');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(5, 3, 'i5');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(6, 3, 'i6');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(7, 4, 'i7');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(8, 4, 'i8');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(9, 5, 'i9');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(10, 5, 'i10');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(11, 6, 'i11');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(12, 6, 'i12');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(13, 7, 'i13');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(14, 7, 'i14');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(15, 8, 'i15');

INSERT INTO `project_images` (`id`, `project_id`, `image_path`) VALUES
(16, 8, 'i16');