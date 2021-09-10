# AutoBuild-OpenWrt
[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat&logo=github&label=LICENSE)](https://github.com/esirplayground/AutoBuild-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/esirplayground/AutoBuild-OpenWrt.svg?style=flat&logo=appveyor&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/esirplayground/AutoBuild-OpenWrt.svg?style=flat&logo=appveyor&label=Forks&logo=github)
![GitHub last commit](https://img.shields.io/github/last-commit/esirplayground/AutoBuild-OpenWrt?label=Latest%20Commit&logo=github)

Build OpenWrt firware [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) using GitHub Actions  
Hereby thank P3TERX for his amazing job: https://github.com/P3TERX/Actions-OpenWrt/  

Hereby thank KFERMercer for his amazing job: https://github.com/KFERMercer/OpenWrt-CI  
You could edit and enable "Sync Code" YAML file to let your forked repo keep updated.

## Usage
看了教程，备份下所学。
1.进入.github/workflows，修改需要编译固件的yml,去掉push注释，点击commit就开始编译了，注意不能改变空格及缩进。
2.自定义固件
在编译固件时，通过./scripts/diffconfig.sh>diffconfig从config配置中抽取diffconfig文件。
通过nano diffconfig查看自定义固件内容，并替换config文件中内容即可自定义固件。
看了教程后还有一些疑问，下一步测试，比如我要自定义主题，添加passwall插件，后续补充。

🔥🔥[Video Tutorial (in Mandrin) | 视频教程(国语)](https://youtu.be/9YO7nxNry-4)📺🎉

**1. Prerequisite**
  - Sign up for [GitHub Actions](https://github.com/features/actions/signup)
  - Fork [this GitHub repository](https://github.com/esirplayground/AutoBuild-OpenWrt)
    
**2. Compile Firmware**
  - Click `[.github/workflows]` folder on the top of repo and you could see few workflow files, Each for one particular architecture(device).
  - Edit the workflow file you desire，uncomment push section 3 lines together and submit the commit.(Other 2 methods wait you to discover)
  - The build starts automatically. Progress can be viewed on the Actions page.
  - When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.
  - Default Web Admin IP: `192.168.5.1`, username `root`, no login password

**3. Sync Code**
  - Uncomment 'push-branches-master' 3 lines under **`On`** section and commit changes to let the script sync the code once for you.
  - Uncomment 'schedule-cron' 2 lines under **`On`** section and commit changes to let the script sync the code everyday on 3 am[UTC +8]
