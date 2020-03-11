<li>安装mtproxy及其守护进程请运行：wget --no-check-certificate -O mtproxy.sh https://raw.githubusercontent.com/chummumm/one-key-mtp/master/mtproxy.sh && bash mtproxy.sh  </li>
<li>删除mtproxy及其守护进程请运行：wget --no-check-certificate -O deletemtproxy.sh https://raw.githubusercontent.com/chummumm/one-key-mtp/master/deletemtproxy.sh && bash deletemtproxy.sh </li>
<li>仅需注册守护进程请运行：wget --no-check-certificate -O mtproxy-daemon.sh https://raw.githubusercontent.com/chummumm/one-key-mtp/master/mtproxy-daemon.sh && bash mtproxy-daemon.sh</li>
<li>仅需删除守护进程请运行：wget --no-check-certificate -O deletemtproxy-daemon.sh https://raw.githubusercontent.com/chummumm/one-key-mtp/master/deletemtproxy-daemon.sh && bash deletemtproxy-daemon.sh </li>
<li>后续查看配置信息可使用 cat /etc/mtproxy/secret</li>
<li><strong>注意！！！！！使用systemctl status mtproxy查看证书是否获取成功！！！！！！</strong></li>
<li><strong>注意！！！！！使用systemctl status mtproxy查看配置信息显示不全时请使用方向键右键进行查看！！！！！！</strong></li>
<li>（该脚本仅支持使用systemd的主流linux系统，目前仅支持ipv4）</li>
