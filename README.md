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
