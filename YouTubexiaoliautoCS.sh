#!/bin/bash

# 显示菜单并提示输入
echo "请选择要执行的操作:"
echo "1. 安装证书"
echo "2. 安装 3x-ui 面板"

# 读取用户输入并验证
read -p "请输入数字 1 或 2: " choice

if [ "$choice" == "1" ]; then
    echo "\n正在安装证书..."
    git clone https://github.com/slobys/SSL-Renewal.git /tmp/acme
    mv /tmp/acme/* /root
    echo "\n成功完成！请运行以下脚本："
    bash /root/acme_2.0.sh
elif [ "$choice" == "2" ]; then
    echo "\n正在安装 3x-ui 面板..."
    # 获取最新的安装脚本
    curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh | bash -
    exit 0  # 成功完成
else
    echo "无效的选择，请输入 1 或 2."
    exit 1
fi

# 如果是错误退出，显示错误信息
if [ $? -ne 0 ]; then
    echo "操作失败。请检查输入是否正确或脚本是否存在问题。"
    exit 1
fi