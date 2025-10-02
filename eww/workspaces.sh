#!/bin/sh

HYPR_SOCK_DIR=$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE

WORKSPACES=$(hyprctl -j workspaces | jq '.[].name')
echo $HYPR_SOCK_DIR
echo $WORKSPACES

handle() {
  echo $1
  case $1 in
  workspacev2*)
    echo workspacev2 task
    ;;
  workspace*)
    echo workspace event
    ;;
  esac
}

socat -U - UNIX-CONNECT:$HYPR_SOCK_DIR/.socket2.sock | while read -r line; do handle "$line"; done
