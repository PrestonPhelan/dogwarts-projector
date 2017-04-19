module.exports = {
  entry: 'frontend/entry.jsx',
  output: {
    path: 'app/assets/javascripts',
    filename: 'bundle.js',
  },
  module: {
    loaders: [
      {
        test: [/\.jsx?$/, /\.js?$/],    //Specifies file types to transpile
        exclude: /(node_modules)/,    //Leaves dependencies alone
        loader: 'babel',    //Sets Babel as the transpired
        query: {
          presets: ['es2015', 'react']  //Tells Babel what syntaxes to translate
        }
      }
    ]
  },
  devtool: 'source-map',
  resolve: {
    extensions: ['.js', '.jsx', '*']
  }
};
