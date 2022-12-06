# Task Reminder

This simple task reminder script was my first foray into Hammerspoon configuration as well as Lua in general.  The intention is to provide a constant reminder to look at and stay focused on your task list. It does this by showing an alert message every 5 seconds. The alert message can be toggled on or off by clicking the script's menubar icon or by using the hotkey `cmd-alt-ctrl-W`.

To use this script, you will need the [Hammerspoon](https://www.hammerspoon.org/) automation tool for macOS.

## Installation

1. Install Hammerspoon on your macOS machine.
2. Copy the `init.lua` file to your Hammerspoon configuration directory (usually `~/.hammerspoon`).
3. (Optional) Edit the `init.lua` file to customize the alert message and/or the hotkey.
4. Reload the Hammerspoon configuration. The script's menubar icon should appear in your menubar.

## Usage

To toggle the alert message on or off, click the menubar icon or use the hotkey `cmd-alt-ctrl-W`. When the alert message is on, the menubar icon will show "ON". When the alert message is off, the menubar icon will show "OFF".

## Customization

You can customize the alert message and the hotkey by editing the `init.lua` file. To change the alert message, edit the `hs.alert.show()` function call on line 7 of the script. To change the hotkey, edit the `hs.hotkey.bind()` function call on line 23 of the script.
