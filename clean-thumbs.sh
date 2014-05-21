#!/bin/ash
# remove older than 1 month thumbs

find .thumbnails/common/ -type f -mtime +30 | xargs rm -rf
find .thumbnails/filebox/ -type f -mtime +30 | xargs rm -rf
find .thumbnails/grid/ -type f -mtime +30 | xargs rm -rf
