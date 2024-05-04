<template>
    <div class="max-w-4xl mx-auto py-20 px-4 sm:px-6 lg:px-8">
        <router-view/>
        <Loader v-if="state.isLoading" />
    </div>
</template>

<script>
import { provide } from 'vue';
import { useGlobalState } from './utils/useGlobalState';
import Loader from './components/Loader.vue';

export default {
  components: {
    Loader
  },
  setup() {
    const { state, showLoader, hideLoader } = useGlobalState();

    provide('globalState', { state, showLoader, hideLoader });

    return {
      state
    };
  }
}
</script>