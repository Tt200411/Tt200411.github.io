# 本地开发环境设置指南

## 🛠️ 环境要求

### 已配置的 Conda 环境
- **环境名称**: `website`
- **Python 版本**: 3.11
- **已安装软件**:
  - Hugo v0.150.0 (extended)
  - Go v1.25.1

## 🚀 快速开始

### 1. 激活环境并启动开发服务器
```bash
# 方法一：使用便捷脚本
./dev-server.sh

# 方法二：手动操作
source /opt/miniconda3/bin/activate website
hugo server --buildDrafts --buildFuture --bind 0.0.0.0 --port 1313
```

### 2. 访问本地网站
- **网址**: http://localhost:1313
- **特性**: 热重载、显示草稿、实时预览

### 3. 代理配置 (如需要)
```bash
export https_proxy=http://127.0.0.1:7890 
export http_proxy=http://127.0.0.1:7890 
export all_proxy=socks5://127.0.0.1:7890
```

## 📝 内容开发工作流

### 创建新文章
```bash
# 激活环境
source /opt/miniconda3/bin/activate website

# 创建新文章
hugo new deep-learning/new-article.md
hugo new optimization/new-algorithm.md
hugo new oscillator/new-visualization.md
```

### 本地预览
1. 启动开发服务器: `./dev-server.sh`
2. 在浏览器中打开: http://localhost:1313
3. 编辑文件，浏览器会自动刷新

## 🚢 部署流程

### 快速部署
```bash
# 使用便捷脚本
./deploy.sh "添加新文章：深度学习基础"

# 或手动操作
git add .
git commit -m "你的提交信息"
git push
```

### 部署后检查
- GitHub Actions: https://github.com/Tt200411/Tt200411.github.io/actions
- 网站更新通常需要 2-3 分钟

## 🔧 环境管理

### 重新安装环境 (如需要)
```bash
# 删除现有环境
conda remove -n website --all -y

# 重新创建
conda create -n website python=3.11 -y
source /opt/miniconda3/bin/activate website

# 配置代理 (如需要)
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

# 安装依赖
conda install -c conda-forge hugo go -y
```

### 检查环境状态
```bash
source /opt/miniconda3/bin/activate website
hugo version
go version
```

## 📊 开发工具

### VS Code 推荐扩展
- Hugo Language and Syntax Support
- Markdown All in One
- markdownlint

### 有用的 Hugo 命令
```bash
# 构建生产版本
hugo --minify

# 检查链接
hugo server --navigateToChanged

# 清理缓存
hugo --gc
```

## 🐛 常见问题

### 问题: "go not found in PATH"
**解决**: 确保在 website 环境中安装了 Go
```bash
source /opt/miniconda3/bin/activate website
conda install -c conda-forge go -y
```

### 问题: 模块下载失败
**解决**: 检查网络连接，必要时设置代理
```bash
export https_proxy=http://127.0.0.1:7890
hugo mod clean
hugo server
```

### 问题: 页面链接错误
**解决**: 检查 content 目录中的页面文件是否存在
```bash
# 检查缺失的页面
ls -la content/
```