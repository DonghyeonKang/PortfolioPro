CREATE TABLE users
(
id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_email text NOT NULL,
user_password text NOT NULL,
user_nickname text NOT NULL,
user_profile_content text NOT NULL,
user_image_path text NOT NULL
)

CREATE TABLE portfolios
(
id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id int(10) NOT NULL,
portfolio_name text NOT NULL,
portfolio_content text NOT NULL,
portfolio_image_path text NOT NULL
)

CREATE TABLE projects
(
id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
portfolio_id int(10) NOT NULL,
project_name text NOT NULL,
project_content text NOT NULL
)


CREATE TABLE project_images
(
id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
project_id int(10) NOT NULL,
image_path text NOT NULL
)

ALTER TABLE `test`.`portfolios` ADD FOREIGN KEY (`user_id`) REFERENCES `test`.`users` (`id`);
ALTER TABLE `test`.`projects` ADD FOREIGN KEY (`portfolio_id`) REFERENCES `test`.`portfolios` (`id`);
ALTER TABLE `test`.`project_images` ADD FOREIGN KEY (`project_id`) REFERENCES `test`.`projects` (`id`);