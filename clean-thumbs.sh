#!/bin/ash
# remove older than 1 month thumbs

find .thumbnails/common/* -mtime +30 | xargs rm -rf
find .thumbnails/filebox/* -mtime +30 | xargs rm -rf
find .thumbnails/grid/* -mtime +30 | xargs rm -rf
