## 安装

```
##解压
wget https://github.com/neovim/neovim/releases/download/v0.10.4/nvim-linux-x86_64.tar.gz
tar -zxvf nvim-linux-x86_64.tar.gz
##下载到Download文件夹下
##创建软链接
sudo ln -s /home/wcj/Downloads/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim
nvim --version## 查看是否安装成功


mv ~/.config/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

## Lazyvim 依赖安装

```
到官网找cargo安装命令

cargo install ast-grep --locked
sudo apt install liblua5.1-0-dev gcc
sudo apt install luarocks
sudo apt-get install ripgrep
sudo apt-get install fd-find
sudo apt install fzf
pip install neovim ast-grep-cli https://repo.huaweicloud.com/repository/pypi/simple
```



## 字体下载

```
https://www.nerdfonts.com/font-downloads
下载jetbrainmono nerd font 字体
在 /usr/share/fonts 目录下新建一个 custom 目录
unzip font.zip -d /usr/share/fonts/custom
mkdir /usr/share/fonts/truetype/windows-font
sudo cp /usr/share/fonts/custom/* /usr/share/fonts/truetype/windows-font
cd /usr/share/fonts/truetype/windows-font

sudo mkfontscale
sudo mkfontdir
sudo fc-cache -fv
在可视化的终端设置中修改字体
```

## 退出保存

```
:qa! 退出，放弃所有改动
```



## 操作

```
x   删除字符
i   在当前覆盖的字母前面进行插入
A   在行末进行插入
u   撤销输入（可以按多次）    U 撤销当前行的所有修改        Ctrl + r 撤销u的操作
```

## operators and motions

许多改变文本的命令由operator和motion组成，对于删除命令`d`来说，组成方式如下

```
d + motion
some motion:
w - 删到下一个word的开头(delete word)
e - 删到当前word的末尾
$ - 删到行末的位置
dd - 删除整行
```

```
不加入operator，只有motion时，就是单纯的移动操作
在motion前面加上数字，表示重复几次，0表示移动到行首
example:
2w   3e  
```

```
operators + number + motions 表示多次重复
example:
d2w 删除两个word
2dd  删除两行
```

## put commmand

```
p
如果复制的是行，在光标的下一行粘贴
如果复制的是单词，在光标的后面粘贴

P实现在前面粘贴 
```

修订

```
r:
在要改的字符上按 r ,再输入想替换的字符
R:
进入替换模式，可以一直替换，按ESC键退出
ce:
删除光标所在word的后面部分 eg: brozzz -> 光标在c上，输入ce, -> bro
和d一样，c也可以加数字和motion eg: c$ 
```

### 查看文件名和位置

```
Ctrl + g 查看文件名和位置
G 移动到文件尾
gg  移动到文件头
数字 + G 跳转到指定的数字行
```

## 查找内容

```
输入 /内容 开始查找内容  回车查找
n 查找下一个位置， N 查找上一个位置
输入 ？内容 反向查找内容  回车查找
```

## 跳转命令

```
比如 “数字+G”、/搜索内容 都会发生跳转，会生成一个jump list
Ctrl + o 跳转到上一次跳转的地方
Ctrl + i 跳转到下一次跳转的地方
```

## 匹配括号搜索

```
当光标在(),[],{}这些括号上时，按下 % 即可跳转到匹配的另一个括号上
```

## 替换命令

```
:s/old/new/g 实现将当前行的所有old替换为new
:s/old/new/ 实现将第一个old替换为new
:#,#s/old/new/g   #代表行号，替换两个行之间所有的old为new
:%s/old/new/g 实现将整个文件中的old替换为new
在语句最后添加c 可以在替换前有个询问是否要替换
```

## 执行外部命令

```
输入:!
eg:
:!ls 
```

## 文件相关

```
:w Filename 保存当前内容到Filename文件
:!rm Filename 删除该文件

按下 v 开始移动光标选择文本 ，选择好后按下 :
可以选择按下 :w Filename 将选中的文本保存到Filename文件中
```

按下`v` 开始Visual selection模式，可以移动光标来选中文本，进行后续操作，比如`d`删除文本

## retrieving与合并

```
:r Filename 将Filename的内容复制到当前光标处
:r !ls 将列出的文件名复制到当前光标处
```

## open命令

```
在光标处按下 o ，在光标的下面另起一行并进入编辑模式
按下 O ,在上面另起一行
```

## append命令

```
在要在增添内容的地方按下 a ,即可在光标后面进行编辑
i 是在光标前面进入编辑模式
A 是在行末进入编辑模式
```

## 复制粘贴

```
按 v 进入选中模式，按 y 进行复制，按 p 进行粘贴
Note:
yw 复制一个word
P 在光标前面进行粘贴
```

## set option

```
:set ic   查找的时候忽略大小写
:set noic  关闭该功能
:set hls is   打开高亮匹配(hlsearch) 和 增量匹配(incsearch,即边输入边查找匹配)
反转设置：
:set invic
:set invhls 等
移除设置：
:nohlsearch
在当前这次搜索中忽略大小写，在/搜索文字的后面加上\c
不忽略加上\C
想要设置永久生效需要到配置文件中设置
```

## 帮助文档

```
:help 查看help文档
两次Ctrl+w 可以在文档之间跳转浏览
:help 命令 可以查看命令的帮助文档 eg:
:help w
:help c_CTRL-D
:help insert-index
:help user-manual
```





## 服务器frp

```
sudo apt install openssh
修改主机的frpc.toml

serverAddr = "114.55.63.120"
serverPort = 8787

[[proxies]]
name = "test-tcp"
type = "tcp"
localIP = "127.0.0.1"
localPort = 22
remotePort = 1234

./frpc -c ./frpc.toml


修改阿里云服务器的frps.toml
bindPort = 8787
```



