const colors = require('tailwindcss/colors')

module.exports = {
  content: [
    "./app/views/**/*.html.erb",
    "./app/javascript/**/*.{js,mjs,ts,tsx}",
    "./app/assets/stylesheets/**/*.{css,pcss}"
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['DM Sans', 'sans-serif'],
      },
      dropShadow: { 
        'green-opacity-100': '0 4px 0 rgba(94, 171, 102, 1)',
        'dark-green-opacity-100': '0 4px 0 rgba(29, 94, 35, 1)',
        'black-opacity-100': '0 4px 0 rgba(0, 0, 0, 1)',
        'blue-opacity-100': '0 4px 0 rgba(8, 38, 141, 1)',
        'white-opacity-100': '0 4px 0 rgba(248, 248, 255, 1)',
        'red-opacity-100': '0 4px 0 rgba(139, 34, 1, 1)',
        'black-opacity-100': '0 4px 0 rgba(44, 44, 44, 1)',
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms')
  ],
}