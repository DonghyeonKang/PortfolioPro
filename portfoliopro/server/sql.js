module.exports = {
    folioList: {
        query: `SELECT pf.portfolio_name, pf.portfolio_image_path 
        FROM portfolios pf
        LIMIT 12`
    },
    ProjectDetail: {
        query: `SELECT DISTINCT u.user_image_path, u.user_profile_content, pf.portfolio_image_path, pf.portfolio_content, i.*, pj.project_content 
        FROM users u, portfolios pf, projects pj, project_images i 
        WHERE pf.user_id = u.id AND pf.portfolio_name = ? AND pj.portfolio_id = pf.id AND i.project_id = pj.id`
    },
    userFolioList: {
        query: `SELECT pf.portfolio_name, pf.portfolio_image_path, pf.id 
        FROM users u, portfolios pf
        WHERE pf.user_id = u.id AND u.id = ?
        LIMIT 12`
    },
    insertProfile: {
        query: `INSERT INTO \`users\` (\`user_email\`, \`user_password\`, \`user_nickname\`, \`user_profile_content\`, \`user_image_path\`) VALUES
        (?, ?, ?, ?, ?);`
    },
    insertPortfolio: { 
        query: `INSERT INTO \`portfolios\` (\`user_id\`, \`portfolio_name\`, \`portfolio_content\`, \`portfolio_image_path\`) VALUES
        (?, ?, ?, ?);`
    },
    insertProject: { 
        query: `INSERT INTO \`projects\` (\`portfolio_id\`, \`project_name\`, \`project_content\`) VALUES
        (?, ?, ?);`
    },
    updateProfile: {
        query: `UPDATE users
        SET user_image_path = ?, user_profile_content = ?
        WHERE id=?`
    },
    updatePortfolio: { 
        query: `UPDATE portfolios
        SET portfolio_image_path = ?, portfolio_content = ?
        WHERE id=?`
    },
    updateProject: { 
        query: `UPDATE projects
        SET project_content = ?
        WHERE id=?`
    },
    updateProjectImg: {
        query: `INSERT INTO project_images(project_id, image_path)
        VALUES(?, ?);`
    }
}