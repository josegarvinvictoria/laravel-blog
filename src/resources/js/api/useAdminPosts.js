import { ref } from 'vue'
import axios from 'axios'

/**
 * Composable function for managing posts in an admin panel.
 * Provides reactive data properties and methods for fetching, creating, updating, and deleting posts.
 * 
 * @returns {Object} The reactive properties and methods for post management.
 */
export default function useAdminPosts() {
    // Reactive reference for multiple posts
    const posts = ref([]);
    // Reactive reference for a single post (used in create and edit operations)
    const post = ref([]);

    /**
     * Fetches all posts from the admin API and stores them in the reactive `posts` array.
     */
    const fetchPosts = async () => {
        let response = await axios.get('/api/admin/posts');
        posts.value = response.data.data;
    };

    /**
     * Deletes a post identified by UUID.
     * 
     * @param {string} uuid - The unique identifier for the post to delete.
     */
    const destroyPost = async (uuid) => {
        await axios.delete(`/api/admin/posts/${uuid}`);
    };

    /**
     * Fetches a single post by UUID for editing and stores it in the reactive `post` object.
     * 
     * @param {string} uuid - The unique identifier for the post to fetch.
     */
    const fetchPost = async (uuid) => {
        let response = await axios.get(`/api/admin/posts/${uuid}/edit`);
        post.value = response.data.data;
    };

    /**
     * Creates a new post using the data stored in the reactive `post` object.
     * 
     * @returns {Object} The data of the newly created post.
     */
    const createPost = async () => {
        let response = await axios.post('/api/admin/posts', post.value);
        return response.data.data;
    };

    /**
     * Updates a post identified by UUID using the data stored in the reactive `post` object.
     * 
     * @param {string} uuid - The unique identifier for the post to update.
     */
    const patchPost = async (uuid) => {
        await axios.patch(`/api/admin/posts/${uuid}`, post.value);
    };

    // Expose reactive properties and functions to outside consumers
    return {
        posts,
        post,
        fetchPosts,
        fetchPost,
        createPost,
        patchPost,
        destroyPost
    };
}
