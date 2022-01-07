module.exports = {
    folioList: {
        query: `SELECT pf.portfolio_name, pf.portfolio_image_path 
        FROM portfolios pf
        LIMIT 12`
    },
    FolioDetail: {
        query: `SELECT u.user_image_path, u.user_profile_content, pf.portfolio_image_path, pf.portfolio_content, pj.id, pj.portfolio_id, pj.project_image_path_1, pj.project_image_path_2, pj.project_image_path_3, pj.project_image_path_4, pj.project_content 
        FROM users u, portfolios pf, projects pj
        WHERE pf.user_id = u.id AND pf.portfolio_name = ? AND pj.portfolio_id = pf.id`
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
        query: `INSERT INTO \`projects\` (\`portfolio_id\`, \`project_name\`, \`project_content\`, \`project_image_path_1\`) VALUES
        (?, ?, ?, ?);`
    },
    updateProfile: {
        query: `UPDATE users
        SET user_image_path = ?, user_profile_content = ?
        WHERE id=?`
    },
    updatePortfolio: { 
        query: `UPDATE portfolios
        SET portfolio_image_path = ?, portfolio_name = ?
        WHERE id=?`
    },
    updateProject: { 
        query: `UPDATE projects
        SET project_content = ?
        WHERE id=?`
    }
}