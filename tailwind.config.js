/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ['./{lib,web}/**/*.dart'],
    theme: {
        extend: {
            colors: {
                primary: '#CBB496',
                surface: '#f1efec',
            },
            backgroundColor: '#000000',
            backgroundImage: {
                'apartment-a-small': "url('/src/img/a-smaller.jpg')",
            }
        },
    },
    plugins: [
        // require('@tailwindcss/forms'),
        // require('daisyui')
    ],
}
