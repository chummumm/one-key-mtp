#!/bin/bash
echo 开始删除mtproxy守护进程 &&
systemctl stop mtproxy &&
systemctl disable mtproxy &&
systemctl daemon-reload &&
rm /etc/systemd/system/mtproxy.service &&
echo mtproxy守护进程删除完成. &&
rm -- "$0"
