# 概述

这是我的Emacs配置库, 参考了世界级大师Steve Purcell的Emacs配置[purcell/emacs.d](https://github.com/purcell/emacs.d)。在Emacs的使用过程中，多谢文章[一年成为Emacs高手(像神一样使用编辑器)](https://github.com/redguardtoo/mastering-emacs-in-one-year-guide/blob/master/guide-zh.org)为我指路！

因为我的主要操作系统是WIN10，所以该配置只在WIN10中运行正常。该配置库保留了[purcell/emacs.d](https://github.com/purcell/emacs.d)中的基础工具方法，然后根据自己的需要进行了裁剪和个性化配置。

过去六年中，Vim一直是我的主力编辑器，平时涉及文本的工作都使用Vim完成。过去一年中，我曾经几次想试用一下Emacs，但无奈没时间搞定Emacs的配置。也许正像[一年成为Emacs高手(像神一样使用编辑器)](https://github.com/redguardtoo/mastering-emacs-in-one-year-guide/blob/master/guide-zh.org)描述的那样，入门思路有问题。但看了[子龙山人](https://zilongshanren.com/)的[视频](https://zilongshanren.com/LearnEmacs/)后，突然就开窍了。然后结合大牛的配置，就产生了自己的配置库。

# 安装

将配置下载到本地，我习惯将配置放在C盘之外的地方，因为我经常重装系统，以免重新下载。比如将配置库保存在D盘中。

```
git clone https://github.com/wangzhfeng/emacsconf.git d:\emacsconf
```

然后在个人文件夹中建立到配置库的连接。

```
cd c:\Users\wangzhf\AppData\Roaming\
mklink /d .emacs.d d:\emacsconf
```

