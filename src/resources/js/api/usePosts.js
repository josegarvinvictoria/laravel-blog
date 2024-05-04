import { ref } from 'vue';
import axios from 'axios';

/**
 * A composable function for fetching posts from an API.
 * It provides reactive data properties for lists of posts and individual post details,
 * and methods for fetching those posts and details from the API.
 *
 * @returns {Object} An object containing reactive properties and methods for post interactions.
 */
export default function usePosts() {
    // Reactive reference for storing multiple posts.
    const posts = ref([]);
    // Reactive reference for storing details of a single post.
    const post = ref([]);

    /**
     * Fetches and stores a list of all posts from the API.
     */
    const fetchPosts = async () => {
        let response = await axios.get('/api/posts');
        posts.value = response.data.data; // Assuming 'data' contains the array of posts.
    };

    /**
     * Fetches and stores details of a single post identified by its slug.
     * 
     * @param {string} slug - The unique slug of the post to fetch.
     */
    const fetchPost = async (slug) => {
        let response = await axios.get(`/api/posts/${slug}`);
        post.value = response.data.data; // Assuming 'data' contains the post details.
    };

    // Exposes reactive properties and fetch methods to the component that uses this composable.
    return {
        posts,
        post,
        fetchPosts,
        fetchPost
    };
}
