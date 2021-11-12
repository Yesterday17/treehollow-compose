# treehollow-compose

[treehollow](https://github.com/treehollow) 的 `docker-compose` 部署方案。

## 使用须知

1. 需要清空 `AutoMigrateDb` 函数的实现。由于是全新安装，因此不存在需要迁移的表。
2. 需要修改 `webhole/.env` 文件。

## TODO

- 支持 `push api`