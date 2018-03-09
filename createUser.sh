#! /usr/bin/env bash

set -o errexit
set -o nounset
#set -o noclobber

function main(){
  if [[ "$#" -ne 1 ]]; then 
    echo "Illegal number of parameters. This command expects one parameter <username>."
    exit 1
  fi

  local user="$1"
  
  if id ${user} >/dev/null 2>&1; then
    if [[ -e /srv/www/${user} ]];then
      mkdir /srv/www/${user}
    fi 
    usermod --home /srv/www/${user}
    chown -R ${user}: /srv/www/${user}
  else 
    echo "User does not exist, Creating new user"
    adduser ${user} --home /srv/www/${user}
    chown -R ${user}: /srv/www/${user}
    passwd ${user}
  fi
}

main $@
