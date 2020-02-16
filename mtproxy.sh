#!/bin/bash
echo 开始安装mtproxy &&
apt update &&
apt install git python3-pip xxd bc -y &&
pip3 install cryptography &&
if [ -d "/etc/mtproxy" ]; then
  rm -rf /etc/mtproxy
fi &&
git clone https://github.com/chummumm/mtprotoproxy.git /etc/mtproxy &&
echo -n '请输入mtproxy运行端口:'
read num &&
if [ ! -n "$num" ]; then
  echo -e '\033[32m端口已设置为默认（1973）\033[0m'
else
  judge=`echo "$num*1" | bc ` &&
  if [ $judge -ne 0 ]; then
    sed -i "s/1973/$num/g" /etc/mtproxy/config.py 
  fi
fi &&
echo 正在随机生成secret...... &&
secret=$(head -c 16 /dev/urandom | xxd -ps) &&
sed -i "s/0000000054655212aa12221200000001/$secret/g" /etc/mtproxy/config.py &&
sed -i 's/"secure": False,/"secure": True,/g' /etc/mtproxy/config.py
sed -i 's/AD_TAG/#AD_TAG/g' /etc/mtproxy/config.py &&
echo 开始注册mtproxy守护进程...... &&
wget -q --no-check-certificate https://raw.githubusercontent.com/chummumm/one-key-mtp/master/mtproxy.service -O /etc/systemd/system/mtproxy.service &&
sed -i "s/mtprotoproxy.py/\/etc\/mtproxy\/mtprotoproxy.py/g" /etc/systemd/system/mtproxy.service && 
systemctl daemon-reload && 
systemctl enable mtproxy &&
systemctl start mtproxy &&
systemctl restart mtproxy &&
echo 完成. &&
echo 'mtproxy.service已注册,通过systemctl status mtproxy可查看配置信息(如果有防火墙请手动放行端口).' &&
echo -e '\033[32m注意！！！！！！使用systemctl status mtproxy查看配置信息显示不全时请使用方向键右键进行查看！！！！！！\033[0m' &&
echo '删除mtproxy及其守护进程请运行：wget --no-check-certificate https://raw.githubusercontent.com/chummumm/one-key-mtp/master/deletemtproxy.sh && bash deletemtproxy.sh' &&
rm -- "$0"
