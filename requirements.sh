#!/bin/bash

# 定义环境名称
ENV_NAME="gradebot-env"

# 检查环境是否存在
if conda info --envs | grep -q "$ENV_NAME"; then
    echo "Conda 环境 '$ENV_NAME' 已存在，更新环境..."
    # 更新现有环境
    conda env update -f environment.yml
else
    echo "Conda 环境 '$ENV_NAME' 不存在，创建新环境..."
    # 创建新环境
    conda env create -f environment.yml
fi

# 激活环境
echo "环境为： '$ENV_NAME'"

echo "环境设置完成。"
