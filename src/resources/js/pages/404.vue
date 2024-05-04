<template>
    <div class="flex items-center justify-center min-h-screen text-gray-900">
      <div class="text-center">
        <h1 class="text-6xl font-bold">404</h1>
        <p class="text-xl md:text-3xl font-semibold mt-3">Página no encontrada</p>
        <p class="mt-2 text-gray-700"></p>
        <router-link to="/" class="mt-6 inline-block bg-blue-500 text-white text-sm md:text-base px-5 py-3 rounded shadow hover:bg-blue-600 transition-colors">Volver al inicio</router-link>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: 'NotFound'
  }
  </script>
