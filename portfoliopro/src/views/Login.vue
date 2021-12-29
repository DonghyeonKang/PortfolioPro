<template>
  <div>
    <div class="logo"></div>
    <input type="text" placeholder="ID">
    <input type="password" placeholder="PW">
    <button class="login_submit">Login</button>
    <div class="side_button">
      <router-link to="/findpw">비밀번호 찾기</router-link>
      <router-link to="/register">회원가입</router-link>
    </div>
  </div>
</template>

