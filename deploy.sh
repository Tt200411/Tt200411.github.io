#!/bin/bash
# 快速部署脚本
# 使用说明: ./deploy.sh "提交信息"

if [ $# -eq 0 ]; then
    echo "❌ 请提供提交信息"
    echo "使用方法: ./deploy.sh \"你的提交信息\""
    exit 1
fi

COMMIT_MSG="$1"

echo "🚀 开始部署 Tt200411 个人网站"
echo "=================================="

# 检查 git 状态
echo "📋 检查 Git 状态..."
git status

# 添加所有更改
echo "📦 添加所有更改到 Git..."
git add .

# 提交更改
echo "💾 提交更改..."
git commit -m "$COMMIT_MSG

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>"

# 推送到远程仓库
echo "🌐 推送到 GitHub..."
git push

echo "=================================="
echo "✅ 部署完成！"
echo "🔗 GitHub Pages: https://tt200411.github.io"
echo "🔗 自定义域名: https://tttang2004.cn"
echo "⏱️  GitHub Actions 构建需要 2-3 分钟"