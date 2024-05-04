<template>
    <div>
        <EditorContent :editor="editor" />
    </div>
</template>

<script>
import { watch, onUnmounted } from 'vue';
import { useEditor, EditorContent } from '@tiptap/vue-3';
import StarterKit from '@tiptap/starter-kit';
import Typography from '@tiptap/extension-typography';
import Underline from '@tiptap/extension-underline';
import Link from '@tiptap/extension-link';

export default {
    components: {
        EditorContent,
    },
    props: {
        modelValue: String,
        teaserValue: String,
    },
    setup(props, { emit }) {
        const editor = useEditor({
            content: props.modelValue,
            extensions: [
                StarterKit,
                Typography,
                Underline,
                Link,
            ],
            editorProps: {
                attributes: {
                    class: 'min-w-full w-full text-gray-500 prose proce-sm lg:prose focus:outline-none',
                },
            },
            onUpdate: ({ editor }) => {
                const teaser = editor.state.doc.content.content.find(
                    c => c.type.name == 'paragraph'
                ).textContent

                emit('update:teaserValue', teaser);
                emit('update:modelValue', editor.getHTML());
            },
        });

        // Watch for external changes to modelValue
        watch(() => props.modelValue, newValue => {
            if (editor.value && newValue !== editor.value.getHTML()) {
                editor.value.commands.setContent(newValue, false);
            }
        });

        onUnmounted(() => {
            editor.value?.destroy();
        });

        return {
            editor,
        };
    },
};
</script>
