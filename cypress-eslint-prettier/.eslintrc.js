module.exports = {
  root: true,
  env: {
    node: true,
    es6: true,
    mocha: true,
  },
  extends: ['eslint:recommended', 'plugin:cypress/recommended', 'prettier'],
  plugins: ['cypress'],
  parserOptions: {},
  rules: {
    quotes: ['error', 'single'],
    semi: ['error', 'never'],
    'comma-dangle': ['error', 'only-multiline'],
  },
}
