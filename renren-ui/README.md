## renren-ui
- renren-ui是基于Vue3、TypeScript、Element Plus、Vue Router、Pinia、Axios、Vite等开发，实现 【[renren-security](https://gitee.com/renrenio/renren-security)】 后台管理前端功能，提供一套更优的前端解决方案
- 前后端分离，通过token进行数据交互，可独立部署
- 动态菜单，通过菜单管理统一管理访问路由
- 后端地址：https://gitee.com/renrenio/renren-security
- 演示地址：http://demo.open.renren.io/renren-security (账号密码：admin/admin)

<br> 

![输入图片说明](public/1.png)

## 安装

您需要提前在本地安装[Node.js](https://nodejs.org/en/)，版本号为：[14.18+、16.x]，再使用[Git](https://git-scm.com/)克隆项目或者直接下载项目后，然后通过`终端命令行`执行以下命令。

```bash
# 切换到前端web项目的根目录

# 安装插件
npm install

# 参照常见问题，修改后端地址。

# 启动项目
npm run dev

# 测试http://localhost:8001/ 即可访问前端页面了，如有问题参照下文的常见问题。

# 打包项目, 运行下面指令后，当前文件夹下生成一个dist文件。
npm run build

# 发布到nginx
# 增加如下location配置后， 重启nginx即可访问 http://localhost:8001/
server {
  listen 8001;			 
  # listen [::]:9000;
  # gzip config
  gzip on;
  gzip_min_length 1k;
  gzip_comp_level 9;
  gzip_types text/plain text/css text/javascript application/json application/javascript application/x-javascript application/xml;
  gzip_vary on;
  gzip_disable "MSIE [1-6]\.";
  location / {
    root   D:/develop/workspace/java/gitee/quanxian/renren-security/renren-ui/dist;	#项目资源文件加载目录
    index  index.html; #项目首页文件
  }

```

> 如网络不稳定，安装时出错或进度过慢！请移步 [cnpm](https://npmmirror.com/) 淘宝镜像进行安装。

启动完成后，会自动打开浏览器访问 [http://localhost:8001](http://localhost:8001)，如您看到下面的页面代表`前端项目`运行成功！因为前后端分离项目，需保证`前端项目`和`后台项目`分别独立正常运行。

请留意下面的页面，其中`验证码`未能正常显示，控制台有`API请求`报错信息！这时需检查`后台项目`是否正常运行。

## 常见问题
### 如何修改API请求地址？

修改/src/pubilc/index.html文件中  开发环境  注释下的window.SITE_CONFIG['apiURL']变量值。
```  ~~~~
<!-- 开发环境 -->  
<% if (process.env.VUE_APP_NODE_ENV === 'dev') { %>
<script>
window.SITE_CONFIG['apiURL'] = 'http://localhost:8080/renren-admin';
</script>
<% } %>~~~~
```

## 如何交流、反馈、参与贡献？
- 开发文档：https://www.renren.io/guide/security
- 官方社区：https://www.renren.io/community
- [人人开源](https://www.renren.io)：https://www.renren.io
- 如需关注项目最新动态，请Watch、Star项目，同时也是对项目最好的支持
- 技术讨论、二次开发等咨询、问题和建议，请移步到官方社区，我会在第一时间进行解答和回复！
- 微信扫码并关注【人人开源】，获得项目最新动态及更新提醒<br>

  <br>

## 微信交流群
我们提供了微信交流群，扫码下面的二维码，关注【人人开源】公众号，回复【加群】，即可根据提示加入微信群！
<br><br>
![输入图片说明](public/wechat.jpg)

<br>
<br>
