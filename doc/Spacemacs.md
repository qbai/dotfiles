Emacs & Spacemacs
在 Linux 系统中，Meta 就是 Alt 键位
在 Mac 系统中，Meta 是Esc键位， 需要调整， 对于系统自带的terminal.app, 打开 Terminal 的 Preferences -> Settings，选择你使用的 color scheme，在 keyboard 设置的最下面有个 “Use option as meta key”，选中就可以	了。对于Iterm2, 在 "Preferences" -> "Profiles" -> "your Profile" -> "Keys" -> 界面的右下角有关于 left/right option key 的映射配置，改成 +Esc 就可以了 
Ctrl，CTL，C均表示为同一个功能键（普通键盘中的CTRL键）；
META，EDIT，ALT，M均表示为同一个键（常用键盘中的ALT键）；
SHITF，S均表示同一个键（键盘中的Shift键）；
ESC表示键盘中的ESC键；
SPC表示键盘中的Space键（键盘中最长的那根空格键）；
Deletespace，Backspace意为同一个键（Backspace键）；
RET，ENTER表示同一个键（回车）。
************************************************************************************************************ ************************************************************************************************************
emacs 安装 && spacemacs 配置
手动安装emacs是最好的选择，最低24.4，最好的版本是24.5; 配置时候使用--without-x；
下载tar.gz文件到/tmp, 解压到/usr/local/src
mkdir -p /usr/local/emacs-25.3
./configure CFLAGS=‘-g3 -O0’ —prefix=/usr/local/emacs-25.3 —without-x
make && make install
ln -s /usr/local/src/emacs-25.3/src/emacs /usr/local/bin/emacs
ln -s /usr/local/src/emacs-25.3/lib-src/emacsclient /usr/local/bin/emacsclient
1> 安装
24.4之上的版本使用spacemacs
运行
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
2>配置	(第一次，有一个合并的过程）
先启动emacs，生成默认的.spacemacs
使用ediff， 合并~/dotfiles/.spacemacs.d/init.el 到新生成的.spacemacs
然后 修改~/.dotfiles/.spacemacs.d/init.el 为 init.el.bk
copy .spacemace 到 ~/.dotfiles/.spacemacs.d/, 更名为 init.el
删除~/.spacemacs, ln -s ~/dotfiles/.spacemacs.d ~/.spacemacs.d
（必要时候删除.emacs.d/elpa下边的所有插件 重启spacemacs）
(xubuntu 的终端窗口需要打开preference，disable menubar key,让emacs的alt作为meta键位(默认是esc键))
3> 启动
ed (emacs —daemon) 
4> 使用
emacsclient -t [file] ( on linux , emacsclient -t -a if emacs daemon not started) 
************************************************************************************************************ ************************************************************************************************************
快捷键	(C-h k 查看当前快捷对应的函数）
快速打开配置文件
alt-m f e d (SPC : alt-m)
配置更改及时生效
(global-set-key (kbd "C-c C-e") 'dotspacemacs/sync-configuration-layers)
(M x eval-buffer	修改配置文件后立即生效)
基本命令
C x C f 打开文件	( M - f )
C-x C-s 文件存为	(C - s )
C-x s 保存所有文件
C-x C-z	挂起当前emacs
C x C c	退出当前emacs or emacsclient
C-x C-w 文件另存为
缓冲区
C-x left	切换到下一个缓冲区	(C - b)
C-x right	切换到上一个缓冲区	(M - b)
C x k	关闭buffer，也就是关闭当前文件	(C - M - k)
C-c k	关闭所有buffer一次性
C-x b 查找某个打开的buffer，或者建立一个缓冲
(M-f	输入文件名创建新文件在某个目录下）
(M-x make-directory	创建文件夹）
M-x kill-some-buffers 遍历kill所有buffer
C-x C-v 重新加载buffer 也就是M-x revert-buffer
C-x C-b 查看缓冲区列表
C-x i：	将文件插入光标当前位置
移动光标
C f	向后移动光标一个字符	(C l)
C b	向前移动光标一个字符	(C j)
M f	向后移动光标每个单词	(M l)
M b	向前移动光标每个单词	(M j)
C p 上一行
C n 下一行
M n	C-u 5 C-n	向下移动5行一次
M p	C-u 5 C-p	向上移动5行一次
C M n	C-u 3 C-v	window-move-up 光标位置不变,内容向下移动3行
C M p	C-u 3 M-v	window-move-down	光标位置不变,内容向上移动3行
C-l 当前行提到页面中间	(C M l)
M-< 光标移到文档首	(M a) 	M-> 光标移到文档末	(M e)
C v	向下翻页	(C-u)
M v 向上翻页	(M-u)
C-M-f	括号向后
C-M-b	括号向前
C a	移到行首
C e	移到行尾
M-m j j 输入提示字母 快速移动到指定单词
M-m j l 输入提示字母 快速移动到指定行
M-g M-g :[n]	按两次M-g，不用回车，提示输入一个数字，移动到指定行n
M-r 当前屏上中下移动
C-x ] 光标移到文档末  C-x [ 光标移到文档首
M-} 向下段落移动
M-{ 向上段落移动
M-a 移到句子开头
M-e 移到句子结尾
(global-set-key (kbd “M-n”)
(lambda () (interactive) (next-line 5)))
(global-set-key (kbd “M-p”)
(lambda () (interactive) (previous-line 5)))
编辑
C d	向后删除一个字母
Delete	向前删除一个字母
M-d 删除光标后面的单词
M-Delete	删除光标前的单词
C k 从当前光标删除整个行
M k	删除整行
C-c c	拷贝整行
C-c e 选择一行
C- 2(@) 设立开始选择点	[M-SPC]
M w 拷贝上边做标记的文本	(C-w)
C w	剪切上边的文本	(M-w)
C-y 粘贴
C g 撤销命令
C /	撤销文本操作
[C g C /	重做]
M h	选择光标所在段落，继续按，继续向下选择
M-@ 选取一个单词
C-x h 全选 整个buffer
C-x C-x 快速选中一段 或者 设置选择标记
M-m j =	对选中文本进行自动对齐
C-x C-p 选择一屏幕或者说是一页 如果继续向下翻页，继续选择下一屏
C-x r k 删除矩形区域
C o	向下插入空行
C x ctrl o	删除空行
查找和替换
M s	查找字符串，持续按C s 持续向下查找
C r	同上，方向向上
M-% 查找逐个替换 键人Esc %命令 然后键入要被替换的模式 并回车，再键入要替换的字符串并回车。 键入	y，搜索到的字符串将被替换字符串所替换，同时，光标将位于已被替换掉的字符串上；如果键入n，将	取消替 换操作，同时，光标将位于搜索到的字符串上
如果您已经找到一了一个匹配的内容，并且按了回车键结束了查找，这时如要继续查找这个内容，您只	需按两次C-s或C-r即可，第一次按动用于激活查找功能，而第二次按动则表示要继续查找。如果不想用	Emacs的增量搜索功能，也可以让Emacs进行传统的搜索，在按下C-s或C-r后，直接打一个回车键，	这时Emacs就将进行非增量搜索，您可以输入你的关键字，再按回车键来执行搜索。C-M-s或C-M-r来	启动正向或反向的正则表达式搜索功能
C-M-h	快速清楚搜索高亮结果
M-c 快速切换是否大小写敏感，不过只对此次查找启用
剪贴板
clipboard-kill-region 剪切区域并发送到系统剪切板和Kill 环中	(绑定到 M w )
clipboard-kill-ring-save 复制区域内容到系统剪切板和Kill 环中
clipboard-yank 从剪切板中粘贴	(绑定到 C y)
窗口
C x o	切换窗口
C x 0	关闭当前窗口
C x 1	关闭对面窗口
C x 2	垂直切分窗口
C x 3	水平切分窗口
其他
M-m q R	重启spacemacs
M-m q q	关闭所有emacs进程，包括daemon
C-h (f v k) 上面的命令，然后输入你要查询的命令（即按下M-x然后能输入的那些命令）
C-h b 查看所有绑定键值
M-x linum-mode	显示行号 如果需要永久显示，在.emacs下加入：
(global-linum-mode 1)
M-x comment-region 插入想要的注释字符	(要提前选中文本部分） ˙
M+x uncomment-region 反注释
M-m f y	复制当前buffer路径
M-m /	在该项目中搜索字符串
 	M-c 单词首字母改为大写  M-u 单词的字母全部改为大写  M-l 单词的字母全部改为小写
spacemacs 专用
M-m t l 显示行号
M-m t f 显示列号（80个字符）
  选中要indent的region
C-u -2 C-x tab 整体左移2个字符
C-u 2 C-x tab 整体右移2个字符
M-x diff-buffer-with-file 查看文件修改历史自从上次保存
  
************************************************************************************************************ ************************************************************************************************************
插件(c/c++开发环境） 
 projectile
rojectile 中的工程概念十分简单：包含特殊文件的文件夹。目前 git, mercurial, darcs 和 bazaar 的容器都会默认为一个工程目录，lein, maven, sbt, scons, rebar and bundler 也同样如此。如果想手动指定文件夹为工程目录，只需要在其中新建一个名字为 .projectile 的空文件即可。
(搜索速度慢，需要由helm换成ivy，同时过滤.git, 过滤可以在init.el或者.projectile中加入)
ivy
M-m p p	切换项目
M-m	p f	快速查找文件	( C-f	)
(
helm	(很慢）
C-c p p	切换项目
C-c p f	查找文件
}
c-c++
M-m m g a 打开相应文件（.cxx 和.hxx 对应）
M-m /	在该项目中搜索字符串
gtags
1. 安装global
先要安装ctags，pygments
如果运行gtags抱lexer错误，最好手工安装pygments，可以从pypi上下载pygments.tar.gz,然后运行 python setup.py install 进行安装
或者 pip install pygments
安装global
sudo apt-get install global； sudo apt-get install exuberant-ctags python-pygments
or
brew install global --with-pygments --with-ctags
or
sudo pacman -S ctags python-pygments global
如果是源码编译
./configure --with-exuberant-ctags=/usr/bin/exuberant-ctags --prefix=dist or
./configure --with-exuberant-ctags=/usr/bin/ctags
拷贝gtags.conf 作为 ~/.globalrc
echo export GTAGSLABEL=pygments >> .profile	(这一步已经添加在.bashrc中）
2. 生成gtags文件
M-x helm-gtags-create-tags，生成gtags文件到指定目录下，或者
在emacs里M-x shell，执行gtags 或者 gtags --gtagslabel=pygments
3. 在init.el中加入
(spacemacs/helm-gtags-define-keys-for-mode 'c-mode)
 [
对于global编译，采用ctags控制 1>安装 exuberant-ctags  	sudo apt-get install exuberant-ctags (可能需要先卸载其他ctags apt-get remove ctags) 2>重新编译emacs插件global gtags,使用exuberant-ctags 	./configure --with-exuberant-ctags=/usr/bin/exuberant-ctags --prefix=dist  3>到项目目录下生成GTAGS文件 	gtags --gtagslabel ctags  (global ggtags with ctags 编译生成的gtags，用gtags with ctags 就可以支持所有tags，包括变量定义) 
.在Emacs中打开一个源文件， M-x gtags-mode，如果 gtags.el 正确安装了，就会启动 gtags minor-mode。然后就可以使用gtags的按键绑定了。我常用的按键如下： 
C-c v，告诉Emacs项目的根目录，即到哪里去找GTAGS等文件。这一步不要跳过，否则你查找符号时Emacs会问你去哪里查找tags。
M-.，跳转到符号定义。
C-t，返回。
C-c g，在代码中用grep查找符号。
C-c s, 搜索某个符号。
C-c r, 看一个函数在哪些地方被引用。
当源程序的源文件的内容变化了(导致行号变化)，或追加删除了源文件等等
gtags -vi
htags --suggest # make hypertext: HTML/
]
cscope
1>安装cscope
2>pip install pycscope
3>生成cscope index文件
for c/c++	M-x cscope-index-files
for python M-x cscope/run-pycscope
4>add cscope into init.el
gdb
gdb -i=mi 启动多窗口调试布局
<f4>	多窗口切换
<f8>	停止gdb以及关闭所有调试窗口
[
使用 gcc编译bdb example code (对于链接库也可以设置 LD_LIBRARY_PATH)
gcc ex_env.c -o bin/ex_env -I /qbai/project/db-6.1.19/opt/include/ -L /qbai/project/db-6.1.19/opt/lib/ -ldb -Wall -g
]
 
Compile
M-m c C 输入编译命令	helm-make-projectile
M-m c c	当前项目根目录执行make	compile	[f2]
 
Ediff
使用 M-x ediff启动Ediff
比较项目	说明
ediff-buffers	询问两个缓冲区的名字，然后比较
ediff-files	询问两个文件的名字，加载之，然后比较
ediff-windows-linewise, ediff-windows-wordwise	让你选两个窗口，然后比较窗口的内容。 -linewise- 函数比 -wordwise- 函数要快，但另一方面， -wordwise- 工作方式更好，尤其是小区域作业时。 -linewise- 一行一行地比较， -wordwise- 一个单词一个单词地比较。
ediff-regions-linewise, ediff-regions-	询问两个缓冲区的名字，然后比较相应的区域。不过你只能在每一个缓冲区中选定一个区域，而不能比较一个文件缓冲区的两个区域。( TODO: 第15个小时的内容 "了解文件" ，会提供一个比较同一个文件中的两个区域的方法。)
一些Ediff 控制命令
在 control buffer 中，按键。
快捷键	命令	说明
Space 或 n	ediff-next-difference	下一个差异处
Del 或 p	ediff-previous-difference	上一个差异处
[n]j	ediff-jump-to-difference	有数字前缀 [n] 修饰，第n个差异处,n可为负数
v 或 C-v	ediff-scroll-vertically	所有缓冲区同步向下滚动
V 或 M-v	ediff-scroll-vertically	所有缓冲区同步向上滚动
<	ediff-scroll-horizontally	所有缓冲区同步向左滚动
>	ediff-scroll-horizontally	所有缓冲区同步向右滚动
(vertical bar)	ediff-toggle-split	切换缓冲区布局方式, 水平和竖直
m	ediff-toggle-wide-display	在正常 frame 大小和最大化之间切换
a	ediff-copy-A-to-B	把Buffer-A的内容复制到Buffer-B
b	ediff-copy-B-to-A	把Buffer-B的内容复制到Buffer-A
r a 或 r b	ediff-restore-diff	恢复 Buffer-A 或 Buffer-B 差异区域中的被修改的内容
A 或 B	ediff-toggle-read-only	切换 Buffer-A 或 Buffer-B 的只读状态
g a 或 g b	ediff-jump-to-difference-at-point	根据光标在缓冲区中的位置，设置一个离它们最近的差异区域为当前活动区域
C-l	ediff-recenter	恢复先前的所有缓冲区比较的高亮差异区。
!	ediff-update-diffs	重新比较并高亮差异区域
w a 或 w b	ediff-save-buffer	保存 Buffer-A 或 Buffer-B 到磁盘
E	ediff-documentation	打开 Ediff 文档
z	ediff-suspend	关闭 ediff control buffer, 只是挂起，可在以后恢复 ediff 状态
q	ediff-quit	关闭 ediff control buffer， 并退出 ediff
 
下面是ediff最基本的用法： M-x ediff 比较两个文件 M-x ediff-buffer 比较两个已经打开的文件 M-x ediff-buffers 传说中的三路比较合并
此命令成功执行完后，emacs进入merge模式， 按键 p 上一个不同的地方 n 下一个不同的地方
a/b 将A/B的差异合并到B/A
wx x 为 a/b, 修改合并完成的写入保存 wd 保存差异
z/q 挂起/退出
shell
1>设置默认shell为term
shell :variables shell-default-shell 'term or multi-term
2>快捷调用term在spacemacs时 M-m ‘
3>退出用exit或者再次输入M-m ‘
[
M-! cmd RET：打开一个名为“*Shell Command Output*“的窗口，并把该命令的执行结果显示在其中。按下”C-x 1“组合键可以关闭这个窗口。由于Shell命令的输出是在一个编辑缓冲区里，因此我们可以对它进行编辑、保存等操作。
M-| cmd RET：运行Shell命令，并使用编辑窗口中选定的区域作为该Shell命令的输入，然后可以选择是否用该Shell命令的输出来替换编辑窗口中选中的区域。
C-u M-! cmd RET：执行一条Shell命令，并将其输出放到编辑区中光标所在的位置处，而不将其输出到”Shell Command Output“窗口。
M-x shell：运行一个子Shell，该子Shell对应于emacs中的一个名为”*Shell*"的缓冲区，此后，我们就可以交互式的运行Shell命令了。
M-x term：运行一个子Shell，该子Shell对应于emacs中的一个名为“＊Terminal*”的缓冲区。使用该命令获得的子Shell是一个完整的Shell的模拟，与我们直接在Shell中操作没有什么差别。
M-x eshell：运行emacs shell。该Shell为emacs自己实现的一个shell，而前面运行的shell都为系统中的shell程序(例如：/bin/csh等）。我们可以通过设置变量shell-file-name来设置emacs所使用的默认shell
]
Magit
M-m g s	打开magit窗口
M-m g S	add 和commit当前文件
M-m g U unstage 当前文件
[ ido
//: 进入根目录
~/: 当前用户的家目录
M-x后运行find-name-dired，再次输入目录，回车(RET键)后，输入要查找的文件名，比如*.h 再次回车。
找到的文件都列出来了
m-x find-grep-dired 查找目录中包含字符串的文件
 ]
 
​
