<template>
  <div class="findpw">
    <div class="logo">Find Password</div>
    <input class="input" type="text" placeholder="ID">
    <input class="input" type="email" placeholder="EMAIL">
    <button class="submit" type="">Submit</button>
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