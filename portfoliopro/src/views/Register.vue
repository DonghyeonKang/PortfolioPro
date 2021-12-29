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
  font-weight: bold;
  text-align: center;
  border: 4px solid #AB5656;
  margin: 1rem auto;
  padding: 0.5rem;
  width: 10rem;
}
.submit {
  color: white;
  background: #AB5656;
  border: none;
  width: 11rem;
  border: 4px solid #AB5656;
  padding: 0.5rem;
  margin-bottom: 1rem;
  cursor: pointer;
}
</style>

