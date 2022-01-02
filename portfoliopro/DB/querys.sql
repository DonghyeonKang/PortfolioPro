--메인화면
SELECT p1.portfolio_name, p1.portfolio_image_path 
FROM portfolios p1
LIMIT 12

--프로젝트 디테일 화면
SELECT u.user_image_path, u.user_profile_content, p1.portfolio_image_path, p1.portfolio_content, i.*, p2.project_content 
FROM users u, portfolios p1, projects p2, project_images i 
WHERE p1.user_id = u.id AND p1.portfolio_name = ? AND p2.portfolio_id = p1.id AND i.project_id = p2.id

--유저의 포트폴리오 목록
SELECT p1.portfolio_name, p1.portfolio_image_path 
FROM users u, portfolios p1
WHERE p1.user_id = u.id AND u.id = ?
LIMIT 12

--프로필 제작
INSERT INTO `users` (`user_email`, `user_password`, `user_nickname`, `user_profile_content`, `user_image_path`) VALUES
(?, ?, ?, ?, ?);

--포트폴리오 제작
INSERT INTO `portfolios` (`user_id`, `portfolio_name`, `portfolio_content`, `portfolio_image_path`) VALUES
(?, ?, ?, ?);

--프로젝트 제작
INSERT INTO `projects` (`portfolio_id`, `project_name`, `project_content`) VALUES
(?, ?, ?);

--코드에서 for문으로 여러개 처리 가능
INSERT INTO `project_images` (`project_id`, `image_path`) VALUES
(?, ?);


--프로필 이미지, 컨텐츠 변경
UPDATE users
SET user_image_path = ?, user_profile_content = ?
WHERE id=?;

--포트폴리오 이미지, 컨텐츠 변경
UPDATE portfolios
SET portfolio_image_path = ?, portfolio_content = ?
WHERE id=?;

--프로젝트 이미지, 컨텐츠 변경, 추가
UPDATE projects
SET project_content = ?
WHERE id=?;

INSERT INTO project_images(project_id, image_path)
VALUES(?, ?);