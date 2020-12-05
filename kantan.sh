#!/bin/sh
FILENAME=$(echo -e "\033[1;33m%w%f\033[0m written") # The text printed each time you save (probably don't touch this)
KEY="CTRL+F5" # The key combination to refresh your browser
BROWSER="Firefox"  # The browser you use
AUTOSWITCH="windowactivate" # If you want an automatic alt-tab to the browser for the refresh (empty it of you don't want)
LOCATION="./demo" # The folder or file you want to watch
SERVER="php" # The server type you want to use (use the ones provided or create your own)
BUILD="" # The build command you want to use (ex: npm run dev) or leave empty if you just want to refresh the page

./kantan/${SERVER}server.sh
while inotifywait -qre close_write --format "$FILENAME" ${LOCATION}
do
    ${BUILD}
    xdotool search --desktop 0 ${BROWSER} ${AUTOSWITCH}  
    xdotool key ${KEY}   
done
