# 制作docker镜像

#####初始化

172.16.11.193
cd /usr/local

git clone https://github.com/annisun2020/lottery.git

cd /usr/local/lottery

docker build -t lottery .

docker run -d -p 28888:8888  -v /usr/local/lottery/server:/lottery/server  -v /usr/local/lottery/server/img:/lottery/product/dist/img --name lottery  lottery




#####更新配置
更新抽奖用户列表:/usr/local/lottery/server/data/users.xlsx

更新奖品列表:/usr/local/lottery/server/config.js

更新奖品图片:/usr/local/lottery/server/img


更新图片、奖项、用户信息后重启容器

docker restart lottery
