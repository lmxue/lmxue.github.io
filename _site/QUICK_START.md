# 快速开始指南

## ✅ 环境已配置完成！

Ruby 和 Jekyll 环境已经安装并配置好了。

## 🚀 启动预览服务器

### 方法一：使用启动脚本（推荐）

```bash
cd /tier2/Audio/lmxue/workspace/lmxue.github.io
bash start_server.sh
```

### 方法二：手动启动

```bash
cd /tier2/Audio/lmxue/workspace/lmxue.github.io
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
bundle exec jekyll serve --livereload
```

## 🌐 访问预览

启动成功后，在浏览器中打开：
- **http://localhost:4000**
- 或 **http://127.0.0.1:4000**

## 📝 编辑和预览

1. **修改文件**：在 Cursor 中编辑任何文件（如 `_pages/about.md`）
2. **保存文件**：按 `Ctrl+S` 保存
3. **查看效果**：
   - 如果使用 `--livereload`，浏览器会自动刷新
   - 否则手动按 `F5` 刷新浏览器

## ⚠️ 重要提示

### 每次打开新终端时

如果在新终端中运行命令，需要先设置 rbenv 环境：

```bash
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
```

或者直接使用 `start_server.sh` 脚本，它会自动处理。

### 修改 _config.yml 后

如果修改了 `_config.yml` 文件，需要：
1. 停止服务器（按 `Ctrl+C`）
2. 重新启动服务器

## 🛑 停止服务器

在运行服务器的终端中按 `Ctrl+C`

## 📚 更多信息

- 详细安装指南：`INSTALLATION_GUIDE.md`
- 预览使用指南：`PREVIEW_GUIDE.md`
- 访问统计配置：`VISITOR_STATS_SETUP.md`

