# typescript-eslint-prettier-webpack

```
yarn init -y
```

```
yarn add -D typescript @types/node
```

```
yarn add -D webpack webpack-cli @babel/core @babel/preset-typescript babel-loader
```

```
yarn add -D eslint eslint-loader @typescript-eslint/eslint-plugin @typescript-eslint/parser prettier eslint-config-prettier eslint-plugin-prettier
```

```
curl https://raw.githubusercontent.com/tacck/base-config-files/main/typescript-eslint-prettier-webpack/download.sh | bash
```

```
mkdir src dist
```

package.json "scripts"

```
  "scripts": {
    "build": "webpack"
  }
```