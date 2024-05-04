<template>
  <div class="flex items-center justify-center w-full">
    <div class="w-full max-w-sm px-6 py-8 bg-white rounded-lg border border-gray-200 shadow-md sm:px-8">
      <form class="space-y-6" @submit.prevent="attemptLogin">
        <h2 class="text-lg font-semibold text-gray-900">Sign in to your account</h2>
        <div>
          <label for="email" class="block text-sm font-medium text-gray-900">Email</label>
          <div class="mt-1">
            <input type="text" name="email" id="email"
                   class="block w-full p-2.5 text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500"
                   placeholder="you@example.com"
                   v-model="form.email">
            <p class="mt-2 text-sm text-red-600" v-if="errors.email">
              {{ errors.email[0] }}
            </p>
          </div>
        </div>

        <div>
          <label for="password" class="block text-sm font-medium text-gray-900">Password</label>
          <div class="mt-1">
            <input type="password" name="password" id="password"
                   class="block w-full p-2.5 text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500"
                   v-model="form.password">
            <p class="mt-2 text-sm text-red-600" v-if="errors.password">
              {{ errors.password[0] }}
            </p>
          </div>
        </div>

        <button type="submit"
                class="w-full flex justify-center py-2.5 px-4 border border-transparent text-sm font-medium rounded-lg text-white bg-blue-600 hover:bg-blue-700 focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 focus:outline-none transition duration-150 ease-in-out">
          Sign in
        </button>
      </form>
    </div>
  </div>
</template>

<script>
import { useStore } from 'vuex'
import { reactive, ref } from 'vue'
import { useRouter } from 'vue-router'

export default {
  setup() {
      const store = useStore()
      const router = useRouter()

      const errors = ref({})

      const form = reactive({
          email: '',
          password: ''
      })

      const attemptLogin = () => {
          store.dispatch('login', form).then(() => {
              router.replace({ name: 'admin.posts' })
          })
          .catch((e) => {
              if (e.response.status === 422) {
                  errors.value = e.response.data.errors
              }
          })
      }

      return {
          attemptLogin,
          form,
          errors
      }
  },
}
</script>
