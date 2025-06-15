#!/bin/bash

# diff_folder folder1 folder2
diff_folder() {
    diff <(cd "$1" && find|sort) <(cd "$2" && find|sort) -y |grep -E '>|<'
}

# show all files for the specfied folder
lsr() { find "${@:-.}" -print0 | sort -z | xargs -0 ls --color=auto -dlha; }

# test disk speed
disk_speed() {
    dd if=/dev/zero of=/var/tmp/infile count=1175000 &>/dev/null
    for bs in 4k 8k 16k 32k 64k 128k 256k 512k 1M 2M 4M 8M 16M 32M
    do
        echo "block size = $bs"
        dd if=/var/tmp/infile of=/var/tmp/outfile bs=$bs 2>&1 | (grep copied |awk -F ',' '{print "time/speed:" $2,$3}')
        echo ""
    done
    rm -rf /var/tmp/infile /var/tmp/outfile
}

# download and unzip at the same time
tar_tee() {
    wget -O- $1 |tee download.tar.gz|tar xzv
}

# watch_console /dev/vcs1
watch_console() {
	watch -d -n0.5 sudo fold -w 160 $1|tr -cd '\11\12\15\40-\176'|awk 'NE'
}

ng() {
	sudo netstat -antp|grep 'listen'|paste -d " " - <(sudo netstat -antp|grep 'listen'|awk '{print $7}'|cut -d'/' -f1|xargs -I {} ps --no-headers -p {} -o cmd)
}

net_speed() {
	sudo tcpdump -i $(ip route get 1.2.3.4 | grep -v "cache" | awk '{print $5}') -w -|pv -bert >/dev/null
}

user_cpu() {
	echo "User 				CPU Usage (%)"
	echo "-------------------------------"

	ps -eo user,%cpu,comm,maj_flt,rss |awk '
		NR > 1 {
			cpu[$1] += $2
		}
		END {
			for (user in cpu) {
				printf("%-16s %.2f\n", user, cpu[user])
			}
		}

	'| sort -k2 -rn
}

quick_delete() {
	mkdir -p /tmp/delete && sudo rsync --delete-before -av /tmp/delete/ "$1"
}

encrypt_sh() {
	# read -p "Script: " S 			## read only for bash, as vared for zsh
	# S=$(bash -c 'read -p "Script: "') && C=$S.crypt H='eval "$((dd if=$0 bs=1 skip=//|gpg -d)2>/dev/null)"; exit; ' && gpg -c<$S|cat > $C <(echo $H|sed s://:$(echo "$H"|wc -c):) - <(chmod +x $C)
	vared -p 'Script: ' -c S && C=$S.crypt H='eval "$((dd if=$0 bs=1 skip=//|gpg -d)2>/dev/null)"; exit; ' && gpg -c<$S|cat > $C <(echo $H|sed s://:$(echo "$H"|wc -c):) - <(chmod +x $C)
}


ssh_login() {
	passwd='123456'
	
	expect <<-EOF
	
	set time 30
	spawn ssh "$1" df -Th
	expect {
	"*yes/no" { send "yes\r"; exp_continue }
	"*password:" { send "$passwd\r" }
	}
	expect eof
	EOF
}

#make -j$(cat /proc/cpuinfo| grep "processor"| wc -l)
#make -j$(nproc)
#ps -ef | awk '$8 !~ /^\[.*\]$/'	## show all user process
