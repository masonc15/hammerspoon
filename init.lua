-- set the default text style for alerts to center alignment
hs.alert.defaultStyle.textStyle = {paragraphStyle = {alignment = "center"}}

-- create a timer that will fire every 5 seconds
local alertTimer = hs.timer.new(5, function()
    -- show the alert message
    hs.alert.show("Focus on the current block.\n(It only counts if you stay on task 100%!)")
end)

-- create a menubar icon
local menubar = hs.menubar.new()

-- update the menubar icon based on the state of the timer
local updateMenuBar = function()
    if alertTimer:running() then
        menubar:setTitle("ON")
    else
        menubar:setTitle("OFF")
    end
end

-- bind the alert message to the hotkey cmd-alt-ctrl-W
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
    -- toggle the timer on or off
    if alertTimer:running() then
        alertTimer:stop()
    else
        alertTimer:start()
    end

    -- update the menubar icon
    updateMenuBar()
end)

-- set the action to toggle the timer on or off when the menubar icon is clicked
menubar:setClickCallback(function()
    -- toggle the timer on or off
    if alertTimer:running() then
        alertTimer:stop()
    else
        alertTimer:start()
    end

    -- update the menubar icon
    updateMenuBar()
end)

-- initialize the menubar icon
updateMenuBar()
