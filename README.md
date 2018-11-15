# Chatbot_Dev_cc103

# 首先將 Chatbot_Dev_cc103 repo 複製到本地端
git clone https://github.com/iii-cutting-edge-tech-lab/Chatbot_Dev_cc103.git

cd Chatbot_Dev_cc103   # 切換至 Chatbot_Dev_cc103 目錄下

docker-compose up -d   # 啟動 Dev 開發環境 (只開啟 jupyter、sql 的 container)

http://本機ip:8880     # 透過瀏覽器訪問 jupyter

# 以下是 Chatbot_Line_cc103 repo 的資料夾結構

1. code/
   
   code.ipynb # 開發組撰寫的程式碼

   code.py    # 方便 devops 的開啟用成 py 檔

   my.log     # 裝 API 的 log

2. dockerfile/

   dockerfile-jupyter2 # 製作 api container 要的 image

3. mysql_init/  # 內放資料庫初始化檔

   init.sql

   xxxxxxx.csv  # 內裝考題

4. .gitignore    # 一個用來告知 Git 需要忽略哪些檔案不上傳的設定檔

5. README.md    # 一個說明檔

6. docker-compose.yml  # 建構所需 container 的檔案

7. gitpush.sh   # 一個將本地端檔案推入 github 的腳本

8. gitsubmodule.sh  # 一個有關 submodule 指令的腳本
