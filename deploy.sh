#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'


# if you are deploying to https://bld010.github.io/the-great-debate
# git push -f git@github.com:bld010/the-great-debate.git main:gh-pages

cd -