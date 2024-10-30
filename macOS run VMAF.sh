#!/bin/bash
read -p "拖入转码后的文件路径并按回车: " zhuan
read -p "拖入原始文件路径并按回车: " yuan

ffmpeg -i "$zhuan" -i "$yuan" -lavfi libvmaf=model=version=vmaf_4k_v0.6.1:log_fmt=json:log_path=output.json -f null -

echo "VMAF对比已完成，结果已输出至output.json"