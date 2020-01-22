ps axo rsz,pid,user,cmd O-r --no-heading | sed -n -e 10q -e "s/^\(\S*\s*\)\(\S*\)\s*\(\S*\s*\S*\s*\S*\).*/\1 \2 \3,sh ~\/.config\/polybar\/dzenprocinfo.sh \2/p" | jgmenu --vsimple --at-pointer
