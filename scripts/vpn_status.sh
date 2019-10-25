#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

vpn_status() {
  if is_linux ; then
    if command_exists "nmcli"; then
      local vpn_status=$(nmcli c show --active | grep -c 'tun')
      if [ $vpn_status -eq 1 ]; then
        # \U1512 unicode for lock icon
        echo -e " \U1f512 "
      else
        echo -e " "
      fi
    else
      echo -e " "
    fi
  fi
}

main() {
  vpn_status
}

main
