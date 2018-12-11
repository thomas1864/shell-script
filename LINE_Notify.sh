#!/bin/sh
export PATH="/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin"
export LANG=C

# LINE Notify API configre
access_token="m2P1ibKHj5UgKMm63reJQPhwVcdxG8dZ26GU33qv4Zq"


# Notification subject
subject=$1

# Notification Message
body=$2

# LINE Notify
curl -X POST -H "Authorization: Bearer ${access_token}" \
-F "message=${subject}: ${body}" \
https://notify-api.line.me/api/notify

exit 0
