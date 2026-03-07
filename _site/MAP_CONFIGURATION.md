# 地图配置说明

## 当前功能

地图已配置为使用 **Leaflet.js** 交互式地图，可以：
- ✅ 显示世界地图
- ✅ 用红点标记访问者位置
- ✅ 点击红点查看访问者信息
- ✅ 支持地图缩放和拖拽
- ✅ 自动尝试获取当前访问者位置（需要浏览器授权）

## 访问者位置数据

当前使用的是示例数据，位置包括：
- 香港 (Hong Kong) - 5次访问
- 北京 (Beijing) - 3次访问
- 纽约 (New York) - 2次访问
- 伦敦 (London) - 1次访问
- 东京 (Tokyo) - 1次访问
- 旧金山 (San Francisco) - 1次访问
- 柏林 (Berlin) - 1次访问
- 悉尼 (Sydney) - 1次访问

## 配置真实访问者数据

### 方法一：从服务器 API 获取数据

编辑 `_includes/visitor-map.html`，找到 `visitorLocations` 数组，替换为从 API 获取数据：

```javascript
// 从服务器获取访问者位置数据
fetch('/api/visitor-locations')
  .then(response => response.json())
  .then(function(visitorLocations) {
    // 添加标记到地图
    visitorLocations.forEach(function(location) {
      var marker = L.marker([location.lat, location.lng], { icon: redIcon })
        .addTo(map)
        .bindPopup('<strong>' + location.city + '</strong><br>访问次数: ' + location.count);
    });
  })
  .catch(function(error) {
    console.log('获取访问者数据失败:', error);
  });
```

### 方法二：使用访问统计服务

#### 使用 ClustrMaps

1. 访问 https://clustrmaps.com/ 注册账号
2. 添加你的网站并获取站点 ID
3. 使用 ClustrMaps API 获取访问者位置数据

#### 使用 Google Analytics

1. 在 `_config.yml` 中配置 `google_analytics_id`
2. 使用 Google Analytics API 获取地理位置数据
3. 将数据转换为地图标记格式

### 方法三：手动更新数据

直接编辑 `_includes/visitor-map.html` 中的 `visitorLocations` 数组：

```javascript
var visitorLocations = [
  { lat: 纬度, lng: 经度, city: '城市名', count: 访问次数 },
  // 添加更多位置...
];
```

## 自定义标记样式

### 修改红点颜色和大小

在 `_includes/visitor-map.html` 中找到 `redIcon` 定义：

```javascript
var redIcon = L.divIcon({
  className: 'custom-marker',
  html: '<div style="background-color: #ff4444; width: 12px; height: 12px; ..."></div>',
  // 修改 background-color 改变颜色
  // 修改 width 和 height 改变大小
});
```

### 添加不同颜色的标记

可以为不同访问量使用不同颜色：

```javascript
function getMarkerIcon(count) {
  var color = count > 10 ? '#ff0000' : count > 5 ? '#ff8800' : '#ffaa00';
  return L.divIcon({
    className: 'custom-marker',
    html: '<div style="background-color: ' + color + '; ..."></div>',
    iconSize: [12, 12],
    iconAnchor: [6, 6]
  });
}
```

## 地图功能

- **缩放**：使用鼠标滚轮或地图上的 +/- 按钮
- **拖拽**：点击并拖动地图
- **标记点击**：点击红点查看访问者信息
- **当前位置**：如果浏览器允许，会显示当前访问者的位置（绿色标记）

## 故障排除

### 地图不显示

1. 检查网络连接（需要加载 Leaflet.js 和地图瓦片）
2. 检查浏览器控制台是否有错误
3. 确认 `#visitor-map` 容器存在且有正确的高度

### 标记不显示

1. 检查 `visitorLocations` 数组数据格式是否正确
2. 确认经纬度坐标有效（纬度: -90 到 90，经度: -180 到 180）
3. 查看浏览器控制台是否有 JavaScript 错误

### 地图瓦片加载慢

地图使用 OpenStreetMap 的免费瓦片服务，如果加载慢可以：
1. 使用其他地图服务（如 Mapbox、Google Maps）
2. 使用本地缓存的地图瓦片

## 高级配置

### 使用其他地图服务

替换 `L.tileLayer` 的 URL：

```javascript
// Mapbox (需要 API key)
L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
  attribution: 'Map data &copy; Mapbox',
  id: 'mapbox/streets-v11',
  accessToken: 'YOUR_MAPBOX_TOKEN'
}).addTo(map);

// Google Maps (需要 API key)
// 需要额外引入 Google Maps JavaScript API
```

### 添加聚类功能

如果访问者位置很多，可以使用标记聚类：

1. 引入 Leaflet.markercluster 插件
2. 使用 `L.markerClusterGroup()` 替代直接添加标记

## 注意事项

- 地图使用 OpenStreetMap 免费服务，请遵守其使用条款
- 访问者位置数据需要符合隐私保护法规
- 如果访问量很大，考虑使用服务器端渲染或缓存

