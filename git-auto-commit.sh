#!/bin/sh
set -eux

__CURRENT__=`pwd`
__DIR__=$(cd "$(dirname "$0")";pwd)
cd ${__DIR__} &&
git add -A && \
git commit -m "[`date '+%Y/%m/%d %H:%M'`] Auto update by script" && \
git push --set-upstream origin master --force && \
cd ${__CURRENT__}
