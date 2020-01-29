#!/bin/sh

echo
echo ----------------------------------------
echo "install sfdx and yarn globally"
echo ----------------------------------------
npm install -g sfdx-cli yarn

echo
echo ----------------------------------------
echo "install sfpowerkit"
echo ----------------------------------------
echo "y" | sfdx plugins:install sfpowerkit

echo
echo ----------------------------------------
echo "update devDependencies"
echo ----------------------------------------
yarn add --dev --exact \
@babel/core \
@babel/register \
@prettier/plugin-xml \
@salesforce/eslint-config-lwc \
babel-preset-env \
eslint \
gulp \
gulp-shell \
husky \
lint-staged \
prettier \
prettier-plugin-apex

echo
echo ----------------------------------------
echo "install node_modules"
echo ----------------------------------------
yarn install
