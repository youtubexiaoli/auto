#!/bin/bash

# 显示菜单并提示输入
echo "请选择要执行的操作:"
echo "1. 安装证书"
echo "2. 安装 3x-ui 面板"
read -p "请输入数字 1 或 2: " choice

# 根据用户输入执行相应的操作
if [ "$choice" == "1" ]; then
    echo "正在安装证书..."
    git clone https://github.com/slobys/SSL-Renewal.git /tmp/acme && mv /tmp/acme/* /root && bash /root/acme_2.0.sh
elif [ "$choice" == "2" ]; then
    echo "正在安装 3x-ui 面板..."
    bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
else
    echo "无效的选择，请输入 1 或 2."
    exit 1
fi
