# SpringBreezeBox

* Static Info:
  ![Bash使用](https://img.shields.io/badge/Bash_Script-2A2Ba2)
  ![Docker使用](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white)
  ![Python使用](https://img.shields.io/badge/Python-14354C.svg?logo=python&logoColor=white)
* Development:
  ![版權宣告](https://img.shields.io/github/license/morgan455092/SpringBreezeBox)
  [![可維護度](https://api.codeclimate.com/v1/badges/da0c547d8c6236d10e0e/maintainability)](https://codeclimate.com/github/morgan455092/SpringBreezeBox/maintainability)
  ![GitHub repo size](https://img.shields.io/github/repo-size/morgan455092/SpringBreezeBox)
  ![GitHub Tag](https://img.shields.io/github/v/tag/morgan455092/SpringBreezeBox)
  ![釋出版本](https://img.shields.io/github/v/release/morgan455092/SpringBreezeBox)
  ![釋出日期](https://img.shields.io/github/release-date/morgan455092/SpringBreezeBox)

# 1. 靶機簡介
- 提供一組Docker相關bash腳本，執行腳本後可建立簡易靶機，僅作為教學練習之用。
- 靶機漏洞為spring4shell及SUID提權
- 滲透flag位於把機 `/CTFuser/flag.txt`
- 提權flag位於靶機 `/root/flag.txt`

# 2. 專案架構
- spring: 靶機架設網站所需用到的資料
- dockerfile：容器創建文件
- init.sh: 靶機設定檔
- LICENSE：版權宣告
- README.md：說明文件

# 3. 使用方式
將最新release下載並解壓縮後，依序於本機執行以下命令，docker將自動建置靶機於端口8080

```bash
docker build . -t spring4shell
docker run -p 8080:8080 spring4shell
```
# 參考
- [reznok/Spring4Shell-POC](https://github.com/reznok/Spring4Shell-POC)