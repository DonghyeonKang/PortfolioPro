<template>
    <div class="header">
        <router-link to="/" class="logo">PortFolio Pro</router-link>
        <router-link to="/login" class="login">Login</router-link>
    </div>
</template>

<style scoped>
.header {
    width: 100%;
    height: 3rem;
    background-color: #1a1a1a;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 5rem;
}
.logo {
    text-decoration: none;
    color: #EAADAD;
}
.login {
    position: absolute;
    right: 1rem;
    text-decoration: none;
    color: white;
}
</style>