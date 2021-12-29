import axios from 'axios';

export default {    // 어떤 컴포넌트에서도 사용할 수 있도록 공통 모듈 작성
    methods: {
        async $api(url, data) {
            return (await axios({
                method: 'post',
                url,
                data
            }).catch(e => {
                console.log(e);
            })).data;   // 결과를 콘솔에 출력함
        }
    }
}