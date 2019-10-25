# tmux-vpn-status

tmux plugin to show if VPN is connected

![example](screenshots/example.png)

Note: I don't remember which font set the icon is from but most likely from [Nerdfont](https://www.nerdfonts.com/)

Usage
-----

Supports the following OS

* Linux (with NetworkManager)

Installation
------------
### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add the plugin to your `.tmux.conf`:

```
set -g @plugin 'nocode99/tmux-vpn-status'
```

Hit `prefix + I` to download the plugin and source it.

Configure
---------

Set in your `status-left` or `status-right` and add:

```
#{vpn_status}
```

References
----------
- https://github.com/tmux-plugins
- https://github.com/tmux-plugins/tmux-example-plugin
- https://github.com/pwittchen/tmux-battery
- https://github.com/nocode/linux_configs
