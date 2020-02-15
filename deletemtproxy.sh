#!/bin/bash
echo 开始删除mtproxy &&
systemctl stop mtproxy &&
systemctl disable mtproxy &&
systemctl daemon-reload &&
rm -rf /etc/mtproxy &&
rm /etc/systemd/system/mtproxy.service &&
echo mtproxy删除完成. &&
rm -- "$0"
