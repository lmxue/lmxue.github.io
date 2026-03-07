# Jekyll 网站预览指南

## 快速预览步骤

### 1. 首次设置（只需一次）

如果还没有安装 Jekyll 和依赖：

```bash
# 进入项目目录
cd /tier2/Audio/lmxue/workspace/lmxue.github.io

# 安装 Ruby 依赖（如果还没有安装）
bundle install
```

### 2. 启动本地服务器

```bash
# 方法一：使用提供的脚本
bash run_server.sh

# 方法二：直接运行命令
bundle exec jekyll serve

# 方法三：使用自动重载（推荐，修改文件后自动刷新）
bundle exec jekyll serve --livereload
```

### 3. 访问预览地址

启动成功后，你会看到类似这样的输出：
```
Server address: http://127.0.0.1:4000/
Server running... press ctrl-c to stop.
```

在浏览器中打开：**http://localhost:4000** 或 **http://127.0.0.1:4000**

## 文件修改后的操作

### ✅ 自动重载模式（推荐）

如果使用 `--livereload` 参数启动：
- **保存文件后，浏览器会自动刷新**，无需手动操作
- 这是最方便的方式

### 📝 普通模式

如果使用普通的 `jekyll serve`：
- **保存文件后，Jekyll 会自动检测变化并重新生成**
- **只需在浏览器中按 F5 或 Ctrl+R 刷新页面**即可看到更新
- 无需重启服务器

### ⚠️ 需要重启服务器的情况

以下情况需要停止服务器（Ctrl+C）并重新启动：

1. 修改了 `_config.yml` 配置文件
2. 安装或更新了新的 Gem 包
3. 修改了 `Gemfile` 文件
4. 服务器出现错误

## 常见问题

### Q: 修改文件后看不到变化？

**A:** 检查以下几点：
1. 确认服务器正在运行（终端没有报错）
2. 在浏览器中强制刷新（Ctrl+Shift+R 或 Cmd+Shift+R）
3. 检查文件是否保存成功
4. 查看终端是否有错误信息

### Q: 访问统计地图不显示？

**A:** 这是正常的，因为：
- 访问统计服务需要网站部署到公网才能工作
- 本地预览时，地图可能显示占位符或提示信息
- 部署到 GitHub Pages 后，配置好站点 ID 就会正常显示

### Q: 端口被占用？

**A:** 可以指定其他端口：
```bash
bundle exec jekyll serve --port 4001
```

### Q: 如何停止服务器？

**A:** 在运行服务器的终端中按 `Ctrl+C`

## 在 Cursor 中的操作流程

1. **打开终端**：在 Cursor 中按 `` Ctrl+` `` 或点击菜单 View → Terminal
2. **启动服务器**：运行 `bundle exec jekyll serve --livereload`
3. **打开浏览器**：访问 http://localhost:4000
4. **编辑文件**：在 Cursor 中修改任何文件（如 `_pages/about.md`）
5. **保存文件**：按 `Ctrl+S` 保存
6. **查看效果**：浏览器会自动刷新（如果使用 --livereload）或手动刷新

## 总结

**简单来说：**
- ✅ 启动服务器后，**保存文件即可**，浏览器刷新就能看到效果
- ✅ 使用 `--livereload` 参数，**连刷新都不需要**，自动更新
- ⚠️ 只有修改 `_config.yml` 才需要重启服务器

