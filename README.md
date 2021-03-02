# Meteor Blocklet Demo

Meteor powered Blocklet Demo

## Install on my ABT Node

[![Install on my ABT Node](https://raw.githubusercontent.com/blocklet/development-guide/main/assets/install_on_abtnode.svg)](https://install.arcblock.io/?action=blocklet-install&meta_url=https%3A%2F%2Fgithub.com%2Fblocklet%2Fmeteor-demo%2Freleases%2Fdownload%2F1.3.3%2Fblocklet.json)

## Run and debug in the cloud with Gitpod

Click the "Open in Gitpod" button, Gitpod will start ABT Node and the blocklet.<br>[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/blocklet/meteor-demo)

## Run and debug locally

1. Ensure you have a local ABT Node installed and running.
2. TBD

## 国内安装

因为网络问题，国内安装 meteor 很慢，可能大于 6 个小时，而且安装过程中很可能会失败。所以可以按照下面的步骤加速安装：

1. 下载安装包到本地: curl -O https://arcblockcn.oss-cn-beijing.aliyuncs.com/meteor-bootstrap-os.osx.x86_64.tar.gz
2. 下载安装脚本: curl https://install.meteor.com/ > install.sh
3. 修改安装脚本中的安装包源地址为本地文件:

```
TARBALL_URL="file://{本地安装包路径}"
```

4. 执行安装脚本: bash install.sh
5. 检查安装是否成功: meteor --version
