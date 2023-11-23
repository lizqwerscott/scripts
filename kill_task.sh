#!/bin/bash

# 指定要杀死的Python程序的名称或关键词
program_name="run_tracker.py"

# 使用ps命令查找匹配的Python进程
process_list=$(ps aux | grep "$program_name" | grep -v grep)

# 检查是否找到了匹配的进程
if [ -n "$process_list" ]; then
    # 使用awk提取进程ID（PID）
    process_id=$(echo "$process_list" | awk '{print $2}')

    # 循环杀死每个匹配的进程
    for pid in $process_id; do
        kill -9 "$pid"
        echo "已杀死进程 $pid"
    done
else
    echo "未找到匹配的进程"
fi
