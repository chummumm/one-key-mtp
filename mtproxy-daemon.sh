#!/bin/bash
echo 开始注册mtproxy守护进程...... &&
wget -q https://shells.tqlzyq.ltd/mtproxy.service -O /etc/systemd/system/mtproxy.service &&
location=$(find / -name mtprotoproxy.py) &&
sed -i "s#mtprotoproxy.py#$location#g" /etc/systemd/system/mtproxy.service && 
systemctl daemon-reload && 
systemctl enable mtproxy &&
systemctl start mtproxy &&
echo 完成. &&
echo mtproxy.service已注册,通过systemctl status mtproxy可查看配置信息(如果有防火墙请手动放行端口). &&
echo 当手机用户使用systemctl status mtproxy查看配置信息显示不全时请使用方向键右键进行查看. &&
echo '删除mtproxy守护进程请运行： wget https://raw.githubusercontent.com/chummumm/one-key-mtp/master/deletemtproxy.sh && bash deletemtproxy.sh' &&
rm -- "$0"