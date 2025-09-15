#!/bin/bash
# 本地开发环境启动脚本
# 使用说明: ./dev-server.sh

echo "🚀 启动 Tt200411 个人网站本地开发环境"
echo "=================================="

# 激活 conda 环境
echo "📦 激活 conda 环境 'website'..."
source /opt/miniconda3/bin/activate website

# 检查 Hugo 版本
echo "🔧 检查 Hugo 版本..."
hugo version

# 检查 Go 版本
echo "🔧 检查 Go 版本..."
go version

# 启动开发服务器
echo "🌐 启动 Hugo 开发服务器..."
echo "✅ 网站地址: http://localhost:1313"
echo "✅ 热重载: 文件更改会自动刷新浏览器"
echo "✅ 包含草稿: 显示所有 draft: true 的文章"
echo ""
echo "按 Ctrl+C 停止服务器"
echo "=================================="

hugo server --buildDrafts --buildFuture --bind 0.0.0.0 --port 1313