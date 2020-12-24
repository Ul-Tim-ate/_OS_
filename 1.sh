#!/bin/bash
NowTime=$(date +"%d.%m.%Y_%T")
mkdir ~/test && echo "catalog test was created successfully" >> ~/report && touch $NowTime
ping -c 1 www.net_nikigo.ru || echo "$NowTime Error: this site isn't available" >> ~/report
