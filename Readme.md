# 原视频

【Mac视频画面碎裂？一年测试 一份大活】 https://www.bilibili.com/video/BV17rSJYnEa3



## 脚本运行:

Windows用户：
双击打开Windows run VMAF.bat 按照提示操作即可。

macOS用户：
打开终端输入

```
Chmod +x
```

将"macOS run VMAF.sh"文件拖入，然后回车运行
拖入后会显示类似以下路径

```
chmod +x /Users/anson/Downloads/VMAF脚本/macOS\ run\ VMAF.sh 
```

再将"macOS run VMAF.sh"拖入一次，回车运行
按照提示操作即可





## **命令行运行：**

Windows用户：

```
.\ffmpeg.exe -i 转码后.mp4 -i 原视频.mp4 -lavfi libvmaf=model=version=vmaf_4k_v0.6.1:log_fmt=json:log_path=output.json -f null -
```

Mac用户：

```
./ffmpeg -i 转码后.mp4 -i 原视频.mp4 -lavfi libvmaf=model=version=vmaf_4k_v0.6.1:log_fmt=json:log_path=output.json -f null -
```





## **批量运行：**

可参考以下软件
https://github.com/fifonik/FFMetrics



## ⚠️注意

VMAF现在仅可应用于SDR片源，HDR片源得分会有问题。

提供的命令行和脚本运行都是以4K片源为目标作为比较，如果你需要对比1080P片源，需要将对应命令更换为

```
-lavfi libvmaf=log_fmt=json:log_path=output.json -f null -
```



## 引用

[Netflix/vmaf](https://github.com/Netflix/vmaf)
