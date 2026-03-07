# 访问统计和世界地图配置说明

## 概述

主页已添加访问统计和世界地图功能。目前提供了两种免费的访问统计服务选项：

1. **RevolverMaps** (推荐) - 已默认启用，需要配置站点 ID
2. **ClustrMaps** - 备选方案，需要注册并配置

## 配置步骤

### 方案一：使用 RevolverMaps (推荐)

1. 访问 [RevolverMaps](https://www.revolvermaps.com/)
2. 点击 "Get Widget" 或 "Free Widget"
3. 选择你喜欢的样式（推荐使用 3D Globe 或 Flat Map）
4. 复制生成的 Widget ID（通常是一个数字或字符串）
5. 编辑 `_includes/visitor-map.html` 文件
6. 找到这一行：
   ```javascript
   <script type="text/javascript" src="//rf.revolvermaps.com/0/0/8.js?i=YOUR_SITE_ID&m=0&c=ff0000&cr1=ffffff&f=arial&l=33" async="async"></script>
   ```
7. 将 `YOUR_SITE_ID` 替换为你在 RevolverMaps 获取的实际 Widget ID

### 方案二：使用 ClustrMaps

1. 访问 [ClustrMaps](https://clustrmaps.com/)
2. 注册账号并添加你的网站
3. 获取你的站点 ID
4. 编辑 `_includes/visitor-map.html` 文件
5. 注释掉 RevolverMaps 的代码（在 `<script>` 标签前后添加 `<!-- -->`）
6. 取消注释 ClustrMaps 的代码（删除 `<!--` 和 `-->`）
7. 将所有的 `YOUR_SITE_ID` 替换为你的 ClustrMaps 站点 ID

## 访问计数器

目前使用简单的 localStorage 计数器作为演示。要获取真实的访问统计：

### 选项 1：使用 ClustrMaps API
1. 在 `visitor-map.html` 中取消注释 ClustrMaps API 代码
2. 将 `YOUR_SITE_ID` 替换为你的实际站点 ID

### 选项 2：使用 Google Analytics
1. 在 `_config.yml` 中配置 `google_analytics_id`
2. 使用 Google Analytics API 获取访问数据（需要额外配置）

### 选项 3：使用其他统计服务
- 可以集成其他访问统计服务（如 GoatCounter, Plausible 等）
- 修改 `visitor-map.html` 中的 JavaScript 代码来调用相应的 API

## 样式自定义

如果需要调整样式，可以编辑 `_includes/visitor-map.html` 中的 CSS 样式：

- 背景色：修改 `background-color: #f8f9fa;`
- 字体大小：修改 `font-size` 属性
- 布局：修改 `flex` 和 `min-width` 属性

## 测试

配置完成后：

1. 本地测试：运行 `jekyll serve` 或 `bundle exec jekyll serve`
2. 查看主页，确认地图和计数器正常显示
3. 部署到 GitHub Pages 后，等待几分钟让统计服务开始收集数据

## 注意事项

- 免费服务通常有访问限制，如果访问量很大，可能需要升级到付费版本
- 某些统计服务可能需要一些时间才能开始显示数据
- 如果地图不显示，检查浏览器控制台是否有错误信息
- 确保网站已部署到公网，本地 localhost 可能无法正常统计

## 故障排除

**问题：地图不显示**
- 检查 Widget ID 是否正确
- 确认网站已部署到公网（GitHub Pages）
- 检查浏览器控制台的错误信息

**问题：访问计数不更新**
- 确认使用的是真实统计服务的 API，而不是 localStorage 演示版本
- 检查 API 调用是否成功（查看浏览器网络标签）

**问题：样式显示异常**
- 检查 CSS 是否正确加载
- 确认没有其他样式冲突

