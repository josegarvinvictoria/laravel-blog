import { reactive, readonly } from 'vue'

const state = reactive({
  isLoading: false
});

const methods = {
  showLoader() {
    state.isLoading = true
  },
  hideLoader() {
    state.isLoading = false
  }
};

export function useGlobalState() {
  return { state: readonly(state), ...methods }
}
