#!/usr/bin/env bash
set -e
npm run build:stage
cd dist
touch .nojekyll
git init
git add -A
git commit -m 'deploy'
git push -f "https://${access_token}@gitee.com/chu1204505056/chu1204505056.git" master:gh-pages
git push -f "https://${access_token}@gitee.com/chu1204505056/vue-admin-beautiful.git" master:gh-pages
git push -f "https://${access_token}@github.com/chuzhixin/vue-admin-beautiful.git" master:gh-pages
cd -
git init
git add -A
git commit -m 'deploy'
git push -f "https://${access_token}@github.com/chuzhixin/vue-admin-beautiful.git" master
git push -f "https://${access_token}@gitee.com/chu1204505056/vue-admin-beautiful.git" master
cd -
cd -
rimraf dist
exec /bin/bash
