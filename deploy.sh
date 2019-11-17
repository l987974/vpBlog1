#!/usr/bin/env sh

# 终止一个错误
set -e

# 构建
yarn build

# 进入生成的构建文件夹
cd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy'


# 如果你想要部署到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:l987974/vpBlog1.git master:gh-pages

cd -
