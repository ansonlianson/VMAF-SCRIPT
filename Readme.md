脚本运行：
Windows用户：
双击打开Windows run VMAF.bat 按照提示操作即可。
macOS用户：
打开终端输入
Chmod +x （这里有一个空格）
将"macOS run VMAF.sh"文件拖入，然后回车运行
（拖入后会显示类似以下路径 chmod +x /Users/anson/Downloads/VMAF脚本/macOS\ run\ VMAF.sh ）
再将"macOS run VMAF.sh"拖入一次，回车运行
按照提示操作即可

命令行运行：
Windows用户：
.\ffmpeg.exe -i 转码后.mp4 -i 原视频.mp4 -lavfi libvmaf=model=version=vmaf_4k_v0.6.1:log_fmt=json:log_path=output.json -f null -
Mac用户：
./ffmpeg -i 转码后.mp4 -i 原视频.mp4 -lavfi libvmaf=model=version=vmaf_4k_v0.6.1:log_fmt=json:log_path=output.json -f null -

批量运行：
可参考以下软件
https://github.com/fifonik/FFMetrics