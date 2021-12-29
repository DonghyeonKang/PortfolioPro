<template>
  <div class="wrap">
    <div class="logo">PortFolio Pro</div>
    <input class="input" type="text" placeholder="ID">
    <input class="input" type="password" placeholder="PW">
    <button class="login_submit">Login</button>
    <div class="side_button">
      <router-link to="/findpw" class="find_pw">비밀번호 찾기</router-link>
      <router-link to="/register" class="register">회원가입</router-link>
    </div>
  </div>
</template>

<style scoped>
.input {
  display: block;
  font-weight: bold;
  text-align: center;
  border: 4px solid #AB5656;
  margin: 1rem auto;
  padding: 0.5rem;
  width: 10rem;
}

.login_submit {
  color: white;
  background: #AB5656;
  border: none;
  width: 11rem;
  border: 4px solid #AB5656;
  padding: 0.5rem;
  margin-bottom: 1rem;
}

.side_button a {
  text-decoration: none;
  padding: 0 .5rem;
  color: #1a1a1a;
  font-size: .8rem;
}

.find_pw {
  border-right: 1px solid #b9b9b9;
}
</style>