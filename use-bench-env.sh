#!/bin/bash
# ERPNext bench 环境激活脚本
# 用法：source ./scripts/use-bench-env.sh
export PATH="/opt/homebrew/opt/python@3.12/bin:/opt/homebrew/opt/node@20/bin:/opt/homebrew/bin:$PATH"
export PY=/opt/homebrew/opt/python@3.12/bin/python3.12
export PIP=/opt/homebrew/opt/python@3.12/bin/pip3.12
export NODE=/opt/homebrew/opt/node@20/bin/node
export NPM=/opt/homebrew/opt/node@20/bin/npm
export YARN=/opt/homebrew/bin/yarn
export MYSQL=/opt/homebrew/opt/mariadb/bin/mariadb
export MYSQLD=/opt/homebrew/opt/mariadb/bin/mariadbd
export REDIS_CLI=/opt/homebrew/bin/redis-cli
# bench 安装在用户 Python site-packages
export BENCH_BIN="$HOME/Library/Python/3.12/bin/bench"
# 强制 Python 3.12 写 .local 目录
export PYTHONUSERBASE="$HOME/Library/Python/3.12"
export PATH="$PYTHONUSERBASE/bin:$PATH"

echo "[env] python: $($PY --version 2>&1)"
echo "[env] node: $($NODE --version 2>&1)"
echo "[env] yarn: $($YARN --version 2>&1)"
echo "[env] mariadb: $(ls -la /opt/homebrew/opt/mariadb/bin/mariadb 2>&1 | awk '{print $NF}')"
