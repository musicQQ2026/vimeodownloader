This program can parse the original video download links for Vimeo and help you download videos directly via multi-threaded aria2. It supports parsing individual Vimeo links, such as:
https://vimeo.com/1146441593

After parsing:
https://vod-progressive-ak.vimeocdn.com/xxxx -- actual download link
[performance]illit‘oops!’_@_spotify_performance_video.mp4
2.34 GB (2,514,657,088 bytes)

It also supports parsing all video lists from multiple accounts at once and returns a downloadable Excel file, where each sheet contains the download information for all videos from one account.


--------------------------------------------------------------
This app can parse you the original vidoe download links on vimeo. you can get the possible highest quality videos from vimeo. See readme.docx!


This is a java application, and the demo configuration files above are to run in Windows OS, if you want to run in Linux or MacOS, you need to write your own shell scripts. (It should be very similar like run.bat here, which can ONLY run on Windows)

there's no source files here for now, if you need to talk details about this app with me, contact me at: 2653964552@qq.com



how to RUN this app? get vimeodownloader-1.0.0.jar from https://github.com/musicQQ2026/vimeodownloader/releases/tag/musicQQ2026, and configure your conf files.
 

1
open cmd


2
cd into your directory, like: R:\vimeodownloader
cd R:\vimeodownloader
R:
run.bat
(this is a Windows bat file which can ONLY run under a Microsoft Windows OS, if you wanna run it on other OS like macOS or UNIX, write a shell script to do that, the shell should look very similar like this bat, but you'll have to alter the script a little bit for your OS to be able to run.)
(if you just dont know how to write an executable shell for macOS, send the content of my bat file to ai, and ask it to write a same meaning shell for you, ai will be able to do this, if you meet any exceptions or errors, show errors to ai, and let it help you modify the shell script)


3
open browser

3.1  [GET]
single file parse, enter:
http://127.0.0.1:9776/vimeodownloader/getOriginalFileUrl?url=https://vimeo.com/75283523

3.2  [GET]
to parse files by an uploader, find the uploader's link, enter:
http://127.0.0.1:9776/vimeodownloader/exportListByUser?url=https://vimeo.com/highqualityfish/videos

3.3  [POST]
to parse files by multiple uploaders, you'll need to install software like [Postman] or use some browser add-ons to be able to do POST requests:

request url:
http://127.0.0.1:9776/vimeodownloader/exportListByUserList

request jackson body:
[
    "https://vimeo.com/firsthourstudio/videos",
    "https://vimeo.com/problemchildfilms/videos",
    "https://vimeo.com/wujennifer/videos",
    "https://vimeo.com/visualsfrom/videos",
    "https://vimeo.com/filmproductionkorea/videos",
    "https://vimeo.com/1sqncfilm/videos",
    "https://vimeo.com/mothermedia/videos",
    "https://vimeo.com/ouikim/videos",
    "https://vimeo.com/gdwdop/videos",
    "https://vimeo.com/vishop/videos",
    "https://vimeo.com/goodmorningsean/videos",
    "https://vimeo.com/ziyong/videos",
    "https://vimeo.com/user1997782/videos",
    "https://vimeo.com/tigercave1991/videos",
    "https://vimeo.com/sprkim88/videos",
    "https://vimeo.com/arrici/videos",
    "https://vimeo.com/compoundcollective/videos"
]


4
application.yml
datasource:
  url: jdbc:sqlite: the actual path of the cookie of your firefox


5 
proxy-config.yml
there's a proxy setting in yml, enabled by default, if you need it to be shut down, configure it to "enabled: false"
if the "enabled: true" is turned on, need a connectable proxy server to do http requests:
ip: "127.0.0.1"
NOTED: this is the http proxy port, not socks port, if you dont know what port you are using, open your proxy soft to confirm which http port is being monitored.
port: 10809


本程序可以解析出vimeo的原视频下载链接，可以帮你通过多线程aria2方式直接下载视频，可以支持解析单个vimeo链接，如：https://vimeo.com/1146441593
解析后：
https://vod-progressive-ak.vimeocdn.com/xxxx    --  实际的下载链接
[performance]__illit__‘oops!’_@_spotify_performance_video.mp4
2.34 GB (2,514,657,088 bytes)

可以支持一次解析多个账号的全部视频列表，返回一个可下载的excel文件，每个sheet包含一个账号的全部视频下载信息
