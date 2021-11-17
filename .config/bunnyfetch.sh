#!/bin/bash
# Tiny colored fetch script
# Requires Typicons Font to display the icons
# elenapan @ github

f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
d=$'\e[1m'
t=$'\e[0m'
v=$'\e[7m'

# Items
se=
s=$d$f0$sep$t

w=直 
wifiname="$(iwgetid | cut -d \" -f2)"

#h=缾
#wmname="$(xprop -id $(xprop -root -notype | awk '$1=="_NET_SUPPORTING_WM_CHECK:"{print $5}') -notype -f _NET_WM_NAME 8t | grep "WM_NAME" | cut -f2 -d \")"

k= 
kernel="$(uname -r | cut -d '-' -f1)"

r=
resolution="$(xrandr | grep "eDP-1" | awk '{print $4}' | cut -d + -f1)"

sh= 
shell="$(basename $SHELL)"

v=突
vpn="$(protonvpn s | grep "Status" | awk '{print $2}') to ProtonVpn"

# (\ /)
# ( · ·)
# c(")(")

# (\ /)
# ( . .)
# c(")(")

tput clear
cat << EOF

             $d$f5$h  
   (\ /)     $f3$k  $t$kernel
   ( $d. .$t)    $f2$sh  $t$shell
   c($f5"$t)($f5"$t)   $f5$r  $t$resolution
             $f4$w  $t$wifiname
	     $f5$v  $t$vpn

	 $(bash /home/nylar/sh/fetchsh/colorballs)

EOF
