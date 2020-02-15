<li>安装mtproxy及其守护进程请运行：</li>
<li>wget --no-check-certificate https://raw.githubusercontent.com/chummumm/one-key-mtp/master/mtproxy.sh && bash mtproxy.sh  </li>
<li>删除mtproxy及其守护进程请运行：</li>
<li>wget --no-check-certificate https://raw.githubusercontent.com/chummumm/one-key-mtp/master/deletemtproxy.sh && bash deletemtproxy.sh </li>
<li>仅需注册守护进程请运行：curl --no-check-certificate https://raw.githubusercontent.com/chummumm/one-key-mtp/master/mtproxy-daemon.sh | bash </li>
<li>仅需删除守护进程请运行：wget https://raw.githubusercontent.com/chummumm/one-key-mtp/master/deletemtproxy-daemon.sh && bash deletemtproxy-daemon.sh </li>
<li><strong>注意！！！！！使用systemctl status mtproxy查看配置信息显示不全时请使用方向键右键进行查看！！！！！！</strong></li>
<li>（该脚本只在Ubuntu18.04、Debian9、Debian10上进行过测试，Centos全线不支持）</li>
