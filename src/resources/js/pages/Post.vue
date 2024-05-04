<<template>
    <div>
        <h1 class="block text-center text-4xl sm:text-6xl leading-10 font-extrabold tracking-tight text-gray-900">
            {{ post.title }}
        </h1>
        <div class="mt-16 text-gray-600 prose prose-sm lg:prose-xl" v-html="post.body"></div>
    </div>
</template>

<script>

import usePosts from '../api/usePosts';
import { onMounted, inject } from 'vue'

export default {
    props: {
        slug: {
            required: true,
            type: String
        }
    },
    setup(props) {
        const { post, fetchPost } = usePosts()

        // fetchPost(props.slug)
        // TODO: Load post data onMounted
        //onMounted(fetchPost(props.slug))
        const { showLoader, hideLoader } = inject('globalState')

        onMounted(async () => {
            showLoader()
            await fetchPost(props.slug)
            hideLoader()
        });

        return {
            post
        }
    }
}
</script>