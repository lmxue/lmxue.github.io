#!/bin/bash
# Jekyll 服务器启动脚本
# 自动配置 rbenv 环境并启动 Jekyll

# 设置 rbenv 环境
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# 进入项目目录
cd "$(dirname "$0")"

# 启动 Jekyll 服务器（带自动重载）
echo "正在启动 Jekyll 服务器..."
echo "访问地址: http://localhost:4000"
echo "按 Ctrl+C 停止服务器"
echo ""

bundle exec jekyll serve --livereload

