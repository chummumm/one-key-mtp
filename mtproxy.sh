#!/bin/bash
echo 开始安装mtproxy &&
apt install git python3-pip xxd -y &&
pip3 install cryptography &&
git clone https://github.com/xiaoxiaobujidao/mtprotoproxy.git /etc/mtproxy &&
echo -n '请输入mtproxy运行端口:'
read num &&
sed -i "s/1973/$num/g" /etc/mtproxy/config.py &&
echo 正在随机生成secret &&
secret=$(head -c 16 /dev/urandom | xxd -ps) &&
sed -i "s/0000000054655212aa12221200000001/$secret/g" /etc/mtproxy/config.py &&
sed -i 's/"secure": False,/"secure": True,/g' /etc/mtproxy/config.py
sed -i 's/AD_TAG/#AD_TAG/g' /etc/mtproxy/config.py &&
echo 开始注册mtproxy守护进程...... &&
wget -q https://shells.tqlzyq.ltd/mtproxy.service -O /etc/systemd/system/mtproxy.service &&
sed -i "s/mtprotoproxy.py/\/etc\/mtproxy\/mtprotoproxy.py/g" /etc/systemd/system/mtproxy.service && 
systemctl daemon-reload && 
systemctl enable mtproxy &&
systemctl start mtproxy &&
echo 完成. &&
echo mtproxy.service已注册,通过systemctl status mtproxy可查看配置信息. &&
echo 如果有防火墙请手动放行端口. &&
rm -- "$0"
