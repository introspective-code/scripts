#!/bin/sh

APP_NAME=$1

express ${APP_NAME}
cd ${APP_NAME}
npm install
npm install --save-dev @types/jest @types/supertest babel-eslint babel-preset-env eslint eslint-config-react-app eslint-config-standard eslint-plugin-flowtype eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-node eslint-plugin-promise eslint-plugin-react eslint-plugin-standard jest nodemon stylelint stylelint-config-standard supertest 

create-react-app client
cd client
npm install
npm install --save classnames history material-ui material-ui-icons prop-types react-keypress react-redux react-router-redux redux redux-saga humps
npm install --save-dev enzyme enzyme-adapter-react-16 redux-mock-store 
