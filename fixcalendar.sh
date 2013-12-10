#!/bin/ash
# this script requires use of opensh
# delete duplicate bdays:
sqlite3 /home/user/.calendar/db "DELETE FROM Components WHERE ComponentId IN (SELECT min(ComponentId) FROM Components WHERE Category = 'BIRTHDAY' GROUP BY Summary HAVING count(*) > 1);"
# delete duplicate alarms:
sqlite3 /home/user/.calendar/db "delete from Alarm where ComponentId in (select min(ComponentId) from Alarm group by Description having count(*) > 1);"
#sqlite3 /home/user/.calendar/db "UPDATE Alarm SET isEnabled = 0 WHERE Offset == -129600;"
#sqlite3 /home/user/.calendar/db "CREATE TRIGGER update_reminder AFTER INSERT ON Alarm BEGIN UPDATE Alarm SET isEnabled = 0 WHERE Offset == -129600; END;"
if [ $? eq 0 ] 
then
    echo  "done"
else
    echo "error updating db"
fi
