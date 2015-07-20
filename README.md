>本镜像由`google/nodejs`而来，代码根据 [nodeclub](https://github.com/cnodejs/nodeclub/) 未使用redis的版本修改，mongo配置信息通过环境变量传递：

```
// Get db config from env
function _getMongoUrl(){
  var db_addr = process.env.MONGO_CARROT_ADDR;
  var db_port = process.env.MONGO_CARROT_PORT;
  var db_user = process.env.MONGO_CARROT_USER;
  var db_pass = process.env.MONGO_CARROT_PASS;
  var db_database =  process.env.MONGO_CARROT_DATABASE;
  var db_url  = 'mongodb://';
  if (db_user && db_pass) {
    db_url += (db_user + ':' + db_pass + '@');
  }
  db_url += (db_addr? db_addr: 'localhost');
  db_url += ':' + (db_port? db_port: 27017);
  db_url += '/' + (db_database? db_database: 'admin');
  console.log('Connect to MongoStore Use this url:' + db_url);
  return db_url;
}
```
网站实例： [http://cnode-2967w.q1.tenxcloud.net:41894](http://cnode-2967w.q1.tenxcloud.net:41894)  
其中数据库是使用时速云mongo镜像创建的。

>注意使用本镜像创建容器时，要在`高级设置`中勾选`更新镜像`


以下是Nodeclub相关信息：

Nodeclub
=

[![build status][travis-image]][travis-url]
[![Coverage Status][coverage-image]][coverage-url]
[![David deps][david-image]][david-url]
[![node version][node-image]][node-url]

[travis-image]: https://img.shields.io/travis/cnodejs/nodeclub.svg?style=flat-square
[travis-url]: https://travis-ci.org/cnodejs/nodeclub
[coverage-image]: https://img.shields.io/coveralls/cnodejs/nodeclub.svg?style=flat-square
[coverage-url]: https://coveralls.io/r/cnodejs/nodeclub?branch=master
[david-image]: https://img.shields.io/david/cnodejs/nodeclub.svg?style=flat-square
[david-url]: https://david-dm.org/cnodejs/nodeclub
[node-image]: https://img.shields.io/badge/node.js-%3E=_0.10-green.svg?style=flat-square
[node-url]: http://nodejs.org/download/

## 介绍

Nodeclub 是使用 **Node.js** 和 **MongoDB** 开发的社区系统，界面优雅，功能丰富，小巧迅速，
已在Node.js 中文技术社区 [CNode(http://cnodejs.org)](http://cnodejs.org) 得到应用，但你完全可以用它搭建自己的社区。

## 安装部署

*不保证 Windows 系统的兼容性*

线上跑的是 Node.js v1.5，MongoDB 是 v2.6。

```
1. install `node.js[必须]` `mongodb[必须]`
2. run mongod
3. `$ make install` 安装 Nodeclub 的依赖包
4. `cp config.default.js config.js` 请根据需要修改配置文件
5. `$ make test` 确保各项服务都正常
6. `$ node app.js`
7. visit `localhost:3000`
8. done!
```

## 其他

跑测试

```bash
$ make test
```

跑覆盖率测试

```bash
$ make test-cov
```

## License

MIT
