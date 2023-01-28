/** @type {import('tailwindcss').Config} */
module.exports = {
    corePlugins: {
        preflight: true,
        aspectRatio: true,
    },
    content: [
        "./**/*.{html,js}",
    ],
	theme: {
		extend: {},
	},
	plugins: [],
}
