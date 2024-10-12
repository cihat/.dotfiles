-- Command + Option + T for open iTerm2
hs.hotkey.bind({"ralt"}, "I", function()
  local app = hs.application.find("iTerm")
  if app then
      app:activate()
  else
      hs.application.launchOrFocus("/Applications/iTerm.app")
  end
end)

-- Command + Option + C for open Chrome
hs.hotkey.bind({"ralt"}, "C", function()
  local app = hs.application.find("Zed Browser")
  if app then
      app:activate()
  else
      hs.application.launchOrFocus("/Applications/Zen Browser.app/")
  end
end)

-- Command + Option + X for open VSCode
hs.hotkey.bind({"ralt"}, "D", function()
  local app = hs.application.find("Visual Studio Code")
  if app then
      app:activate()
  else
      hs.application.launchOrFocus("/Applications/Visual Studio Code.app")
  end
end)

-- Command + Option + X for open Spotify
hs.hotkey.bind({"ralt"}, "S", function()
  local app = hs.application.find("Spotify")
  if app then
      app:activate()
  else
      hs.application.launchOrFocus("/Applications/Spotify.app")
  end
end)

