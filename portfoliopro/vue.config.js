const target = 'http://127.0.0.1:3000'   // 서버가 3000번 포트로 설정해둠

module.exports = {
    devServer: {
        port: 8080, //클라이언트 8080 에서
        proxy: {
            '^/api': {  // 데이터 요청시 /api가 들어가면 target을 바꿔줌
                target,
                changeOrigin: true
            }
        }
    }
}
