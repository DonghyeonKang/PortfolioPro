<template>
  <div class="register">
    <h2>Register</h2>
    <input type="text" name="id" placeholder="ID">
    <input type="text" name="name" placeholder="NAME">
    <input type="password" name="password" placeholder="PW">
    <input type="email" name="email" placeholder="EMAIL">
    <button class="submit">Submit</button>
  </div>
</template>

<style scoped>
.register {
  text-align: center;
}
.register input{
  display: block;
  margin: 0 auto;
}
</style>

