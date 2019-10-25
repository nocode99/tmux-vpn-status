#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

vpn_status_on() {
  if command_exists "nmcli"; then
    local vpn_status=$(nmcli c show --active | grep -c 'tun')
    if [ $vpn_status -eq 1 ]; then
      echo "on"
    else
      echo "off"
    fi
  else
    echo "nmcli does not exist"
  fi
}

main() {
  vpn_status_on
}

main