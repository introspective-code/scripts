#!/bin/sh

APP_NAME=$1

# Set up the backend

npx express-generator ${APP_NAME}
cd ${APP_NAME}
npm install
npm install --save-dev @types/jest @types/supertest babel-eslint babel-preset-env eslint eslint-config-react-app \
    eslint-config-standard eslint-plugin-flowtype eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-node \
    eslint-plugin-promise eslint-plugin-react eslint-plugin-standard jest nodemon stylelint stylelint-config-standard \
    supertest

npx json -I -f package.json -e 'this.babel={ "presets": [ "env" ] }'
npx json -I -f package.json -e 'this.eslintConfig={ "extends": [ "standard", "react-app" ], "env": { "jest": true } }'
npx json -I -f package.json -e 'this.stylelint={ "extends": "stylelint-config-standard" }'
npx json -I -f package.json -e 'this.jest={ "modulePathIgnorePatterns": [ "<rootDir>/client/", "<rootDir>/tmp/" ] }'

# Set up the frontend

npx create-react-app client
cd client
npm install
npm install --save classnames history material-ui@^1.0.0-beta.30 material-ui-icons prop-types react-keypress \
    react-redux react-router-redux@next redux redux-saga humps
npm install --save-dev enzyme enzyme-adapter-react-16 redux-mock-store
