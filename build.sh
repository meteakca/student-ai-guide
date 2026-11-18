#!/bin/zsh
# Rebuild index.html from guide.html and stamp the footer's "Last updated" time (Eastern).
set -e
cd "${0:A:h}"
n=$(grep -n '^</style>$' guide.html | cut -d: -f1)
iso=$(TZ=America/New_York date +%Y-%m-%dT%H:%M%z | sed "s/\(..\)$/:\1/")
human=$(TZ=America/New_York date "+%B %-d, %Y, %-I:%M %p ET")
{ printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<meta name="color-scheme" content="light">\n'
  head -n "$n" guide.html; printf '</head>\n<body>\n'; tail -n +$((n+1)) guide.html; printf '</body>\n</html>\n'
} | sed -e "s/__UPDATED_ISO__/$iso/" -e "s/__UPDATED__/$human/" > index.html
echo "index.html built, stamped $human"
