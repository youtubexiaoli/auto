#!/bin/bash

# 检查参数
if [ "$1" == "install_cert" ]; then
    # 安装证书
    git clone https://github.com/slobys/SSL-Renewal.git /tmp/acme && mv /tmp/acme/* /root && bash /root/acme_2.0.sh
elif [ "$1" == "install_3x_ui" ]; then
    # 安装 3x-ui 面板
    bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
else
    echo "使用方法："
    echo "  $0 install_cert    安装证书"
    echo "  $0 install_3x_ui   安装 3x-ui 面板"
    exit 1
fi
