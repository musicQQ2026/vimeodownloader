# VimeoDownloader

A Java application that parses original quality video download links from Vimeo and supports direct downloading via multi-threaded aria2.

## ✨ Core Features

1.  **Parse Single Video Link**
    *   Example Input: `https://vimeo.com/1146441593`
    *   Returns after parsing:
        *   Actual download link (e.g., `https://vod-progressive-ak.vimeocdn.com/xxxx`)
        *   Video filename
        *   File size information

2.  **Batch Parse Account Video Lists**
    *   Parse all videos from a single uploader at once.
    *   **Parse multiple uploaders simultaneously** and generate a structured Excel file where each worksheet contains all video information for one account.

## 🚀 Quick Start

### 1. Get the Application
Download the latest `vimeodownloader-1.0.0.jar` file from the [Releases](https://github.com/musicQQ2026/vimeodownloader/releases/tag/musicQQ2026) page.

### 2. Prepare Configuration
Configure the corresponding run script and configuration files according to your operating system.

#### For Windows Users
1.  Open Command Prompt (`cmd`).
2.  Navigate to the program directory, for example:
    ```bash
    cd R:\vimeodownloader
    R:
    ```
3.  Run the batch file:
    ```bash
    run.bat
    ```

> **Note**: `run.bat` is designed for Windows only. To run on macOS or Linux, please write a Shell script following the instructions below.

#### For macOS / Linux Users
You need to write a Shell script equivalent in function to `run.bat`.  
**Easy Method**: Send the content of the `run.bat` file to an AI (like ChatGPT) and ask it to "convert this into a runnable Shell script for macOS/Linux." If you encounter errors, provide the error messages back to the AI to correct the script.

### 3. Run & Use
After starting, the service will be available at `http://127.0.0.1:9776` by default.

#### API Usage Examples:

*   **Parse a Single Video [GET]**
    ```
    http://127.0.0.1:9776/vimeodownloader/getOriginalFileUrl?url=https://vimeo.com/75283523
    ```

*   **Parse All Videos from a Single Uploader [GET]**
    ```
    http://127.0.0.1:9776/vimeodownloader/exportListByUser?url=https://vimeo.com/highqualityfish/videos
    ```

*   **Batch Parse Multiple Uploaders [POST]**
    *   Requires a tool (like Postman or a browser extension) to make a POST request.
    *   **Request URL**: `http://127.0.0.1:9776/vimeodownloader/exportListByUserList`
    *   **Request Body (JSON)**:
        ```json
        [
            "https://vimeo.com/firsthourstudio/videos",
            "https://vimeo.com/problemchildfilms/videos",
            "https://vimeo.com/wujennifer/videos"
            // ... more links
        ]
        ```

## ⚙️ Configuration Files

### `application.yml`
*   **Key Setting**: `datasource.url`
*   This must point to the actual path of your **Firefox browser's cookie database file**.
    *   Example: `jdbc:sqlite:C:/Users/YourName/AppData/Roaming/Mozilla/Firefox/Profiles/xxx.default/cookies.sqlite`

### `proxy-config.yml`
*   Proxy settings, **enabled by default (`enabled: true`)**.
*   To disable, change it to `enabled: false`.
*   If enabled, ensure a connectable HTTP proxy server is configured:
    ```yaml
    ip: "127.0.0.1"
    port: 10809 # Please note: this is the HTTP proxy port, not the SOCKS port.
    ```

## ❓ FAQ

**Q: How do I get the cookie file?**  
A: The application relies on Firefox's cookies to access Vimeo. You need to ensure you are logged into Vimeo via Firefox and have correctly configured the path in `application.yml`.

**Q: Is the source code available?**  
A: Currently, only the runnable application is published in this repository. For detailed discussion about the application, please contact: `**2653964552@qq.com**`


（中文版）
这是一个Java应用程序，用于解析Vimeo视频的原画质下载链接，并支持通过多线程aria2直接下载。

## ✨ 核心功能

1.  **解析单个视频链接**
    *   输入示例: `https://vimeo.com/1146441593`
    *   解析后返回：
        *   实际下载链接 (如：`https://vod-progressive-ak.vimeocdn.com/xxxx`)
        *   视频文件名
        *   文件大小信息

2.  **批量解析账号视频列表**
    *   一次解析单个上传者的所有视频。
    *   **同时解析多个上传者**，并生成一个结构化的Excel文件，其中每个工作表包含一个账号的全部视频信息。

## 🚀 快速开始

### 1. 获取程序
从 [Releases](https://github.com/musicQQ2026/vimeodownloader/releases/tag/musicQQ2026) 页面下载最新的 `vimeodownloader-1.0.0.jar` 文件。

### 2. 准备配置
根据你的操作系统，配置相应的运行脚本和配置文件。

#### 对于 Windows 用户
1.  打开命令提示符 (`cmd`)。
2.  进入程序所在目录，例如：
    ```bash
    cd R:\vimeodownloader
    R:
    ```
3.  运行批处理文件：
    ```bash
    run.bat
    ```

> **注意**：`run.bat` 仅适用于 Windows 系统。如需在 macOS 或 Linux 上运行，请参考下方说明编写 Shell 脚本。

#### 对于 macOS / Linux 用户
你需要编写一个与 `run.bat` 功能等效的 Shell 脚本。  
**简单方法**：将 `run.bat` 文件的内容发送给 AI（如 ChatGPT），并要求它“将其转换为可在 macOS/Linux 上运行的 Shell 脚本”。如果运行出错，将错误信息反馈给 AI 以修正脚本。

### 3. 启动与使用
程序启动后，默认服务地址为 `http://127.0.0.1:9776`。

#### 接口调用示例：

*   **解析单个视频 [GET]**
    ```
    http://127.0.0.1:9776/vimeodownloader/getOriginalFileUrl?url=https://vimeo.com/75283523
    ```

*   **解析单个上传者的所有视频 [GET]**
    ```
    http://127.0.0.1:9776/vimeodownloader/exportListByUser?url=https://vimeo.com/highqualityfish/videos
    ```

*   **批量解析多个上传者 [POST]**
    *   需要工具（如 Postman 或浏览器插件）发起 POST 请求。
    *   **请求 URL**: `http://127.0.0.1:9776/vimeodownloader/exportListByUserList`
    *   **请求体 (JSON)**:
        ```json
        [
            "https://vimeo.com/firsthourstudio/videos",
            "https://vimeo.com/problemchildfilms/videos",
            "https://vimeo.com/wujennifer/videos"
            // ... 更多链接
        ]
        ```

## ⚙️ 配置文件说明

### `application.yml`
*   **关键配置**：`datasource.url`
*   需要将其指向你 **Firefox 浏览器 cookie 数据库文件**的实际路径。
    *   示例：`jdbc:sqlite:C:/Users/YourName/AppData/Roaming/Mozilla/Firefox/Profiles/xxx.default/cookies.sqlite`

### `proxy-config.yml`
*   代理设置，**默认启用 (`enabled: true`)**。
*   如需关闭，将其改为 `enabled: false`。
*   如果启用，请确保配置了可连接的 HTTP 代理服务器：
    ```yaml
    ip: "127.0.0.1"
    port: 10809 # 请注意，这里是 HTTP 代理端口，不是 SOCKS 端口。
    ```

## ❓ 常见问题

**Q: 如何获取 cookie 文件？**  
A: 程序依赖 Firefox 的 cookie 来访问 Vimeo。你需要确保 Firefox 已登录 Vimeo，并正确配置 `application.yml` 中的路径。

**Q: 没有源代码吗？**  
A: 当前仓库仅发布可运行的程序。如需讨论程序细节，请联系：`**2653964552@qq.com**`

---

## 🇨🇳 中文说明

本程序可以解析出 Vimeo 的原视频下载链接，并通过多线程 aria2 方式直接下载视频。

### 功能详情
1.  **支持解析单个 Vimeo 链接**，获取最高画质的直接下载地址、文件名和大小。
2.  **支持批量解析**，可一次性输入多个上传者的主页链接，程序将生成一个 Excel 文件，每个工作表包含一个账号的全部视频下载信息。

### 运行要求
*   这是一个 Java 应用程序，上述演示配置文件适用于 Windows 系统。
*   如需在 Linux 或 macOS 运行，需要根据提供的 `run.bat` 文件逻辑，自行编写相应的 Shell 脚本。
