const path = require('path');

module.exports = {
    entry: './src/main/webapp/index.js',  // Your entry point
    output: {
        filename: 'bundle.js',  // Output bundle filename
        path: path.resolve(__dirname, 'src/main/webapp/dist'),  // Output directory
    },
    module: {
        rules: [
            {
                test: /\.js$/,  // Match .js files
                exclude: /node_modules/,  // Exclude the node_modules directory
                use: {
                    loader: 'babel-loader',  // Use Babel for .js files
                },
            },
        ],
    },
    mode: 'none',
};
