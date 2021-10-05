# clasp-typescript-eslint-prettier

```
npm install -g @google/clasp
```

```
yarn init -y
```

```
yarn add -D typescript @types/node @types/google-apps-script
```

```
yarn add -D webpack webpack-cli @babel/core @babel/preset-typescript babel-loader gas-webpack-plugin
```

```
yarn add -D eslint eslint-loader @typescript-eslint/eslint-plugin @typescript-eslint/parser prettier eslint-config-prettier eslint-plugin-prettier
```

```
curl https://raw.githubusercontent.com/tacck/base-config-files/main/clasp-typescript-eslint-prettier/download.sh | bash
```

```
mkdir src dist
```

package.json "scripts"

```
  "scripts": {
    "build": "webpack",
    "push": "yarn build && clasp push"
  }
```