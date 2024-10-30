@echo off
setlocal enabledelayedexpansion
set /p zhuan="Drag the transcoded file here and press Enter: "
set /p yuan="Drag the original file here and press Enter: "
.\ffmpeg.exe -i !zhuan! -i !yuan! -lavfi libvmaf=model=version=vmaf_4k_v0.6.1:log_fmt=json:log_path=output.json -f null -
pause