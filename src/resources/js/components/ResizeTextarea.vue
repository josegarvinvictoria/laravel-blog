<script>
import { ref, onMounted, nextTick } from 'vue'

export default {
    setup(props, context) {
        const el = ref(null)

        const resizeTarget = (target) => {
            target.style.height = 'auto'
            target.style.height = `${target.scrollHeight}px`
        }

        const resize = (e) => {
            resizeTarget(e.target)
        }

        onMounted(async () => {
            await nextTick(); // Espera a que el DOM se actualice
            if (el.value) {
                resizeTarget(el.value)
            }
        })

        return () => context.slots.default({
            resize,
            el
        })
    },
}
</script>
