# Jekyll 环境安装指南

## 问题诊断

如果看到 `Command 'bundle' not found` 错误，说明需要安装 Ruby 和 Bundler。

## 安装方法

### 方法一：使用系统包管理器（需要管理员权限）

```bash
# 安装 Ruby 和 Bundler
sudo apt update
sudo apt install ruby-full ruby-bundler

# 验证安装
ruby --version
bundle --version
```

### 方法二：使用 rbenv（推荐，不需要管理员权限）

如果无法使用 `sudo`，可以使用 rbenv 在用户目录安装 Ruby：

```bash
# 1. 安装 rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash

# 2. 添加到 PATH（添加到 ~/.bashrc）
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

# 3. 安装 Ruby
rbenv install 3.1.0
rbenv global 3.1.0

# 4. 安装 bundler
gem install bundler

# 5. 验证
ruby --version
bundle --version
```

### 方法三：使用 Docker（如果系统支持）

```bash
# 使用 Jekyll 官方 Docker 镜像
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  -p 4000:4000 \
  -it jekyll/jekyll:latest \
  jekyll serve
```

## 安装完成后的步骤

1. **进入项目目录**：
   ```bash
   cd /tier2/Audio/lmxue/workspace/lmxue.github.io
   ```

2. **安装项目依赖**：
   ```bash
   bundle install
   ```

3. **启动服务器**：
   ```bash
   bundle exec jekyll serve --livereload
   ```

4. **访问预览**：
   打开浏览器访问 http://localhost:4000

## 替代方案：直接部署到 GitHub Pages

如果本地环境配置困难，可以直接：

1. **提交代码到 GitHub**：
   ```bash
   git add .
   git commit -m "Add visitor statistics"
   git push
   ```

2. **GitHub Pages 会自动构建**：
   - 访问 https://lmxue.github.io 查看效果
   - 通常几分钟内就会更新

3. **查看构建状态**：
   - 在 GitHub 仓库页面，点击 "Actions" 标签
   - 查看构建是否成功

## 检查当前环境

运行以下命令检查环境：

```bash
# 检查 Ruby
which ruby
ruby --version

# 检查 Bundler
which bundle
bundle --version

# 检查 Jekyll（如果已安装）
which jekyll
jekyll --version
```

## 常见问题

### Q: 没有 sudo 权限怎么办？

**A:** 使用 rbenv 方法（方法二），它不需要管理员权限。

### Q: 安装后还是找不到命令？

**A:** 
1. 检查 PATH 环境变量：`echo $PATH`
2. 重新加载 shell 配置：`source ~/.bashrc` 或重新打开终端
3. 使用完整路径：`/usr/bin/bundle` 或 `~/.rbenv/shims/bundle`

### Q: bundle install 失败？

**A:** 
- 检查网络连接
- 尝试使用国内镜像：
  ```bash
  bundle config mirror.https://rubygems.org https://gems.ruby-china.com
  bundle install
  ```

### Q: 不想安装本地环境？

**A:** 直接推送到 GitHub，使用 GitHub Pages 的在线预览功能。

