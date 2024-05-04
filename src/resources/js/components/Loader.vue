<template>
  <div class="loader-wrapper flex justify-center items-center absolute inset-0 bg-white bg-opacity-50">
    <div class="circular-loader"></div>
  </div>
</template>

<style scoped>
.loader-wrapper {
  width: 100vw;
  height: 100vh;
}

.circular-loader {
  display: block;
  margin: 0 auto;
  width: 50px;
  height: 50px;
  border: 5px solid rgba(150, 150, 150, 0.2);
  border-radius: 50%;
  border-top-color: #3498db;
  animation: spin 2s linear infinite;
}

@keyframes spin {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
</style>
