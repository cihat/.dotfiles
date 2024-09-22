-- Command + Option + T for open iTerm2
hs.hotkey.bind({"cmd", "alt"}, "Z", function()
  local app = hs.application.find("iTerm")
  if app then
      app:activate()
  else
      hs.application.launchOrFocus("/Applications/iTerm.app")
  end
end)

-- Command + Option + C for open Chrome
hs.hotkey.bind({"cmd", "alt"}, "C", function()
  local app = hs.application.find("Google Chrome")
  if app then
      app:activate()
  else
      hs.application.launchOrFocus("/Applications/Google Chrome.app")
  end
end)

-- Command + Option + X for open VSCode
hs.hotkey.bind({"cmd", "alt"}, "X", function()
  local app = hs.application.find("Visual Studio Code")
  if app then
      app:activate()
  else
      hs.application.launchOrFocus("/Applications/Visual Studio Code.app")
  end
end)
