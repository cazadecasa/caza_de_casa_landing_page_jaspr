/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ["./src/**/*.{html,js}"],
    theme: {
        extend: {
            colors: {
                primary: '#CBB496',
                surface: '#f1efec',
            },
            backgroundColor: '#000000',
            backgroundImage: {
                'apartment-a': "url('/src/img/a.jpg')",
                'apartment-a-small': "url('/src/img/a-smaller.jpg')",
                'apartment-b': "url('/src/img/b.jpg')",
            }
        },
    },
    plugins: [
        require('@tailwindcss/forms'),
        require('daisyui')
    ],
}
