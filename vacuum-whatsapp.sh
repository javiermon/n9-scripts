#!/bin/ash

echo "vacuum starting!"
cd /home/user/.whatsup/
for i in *.db; do sqlite3 $i "VACUUM;"; done
echo "vacuum done!"
