_G.wephook = "https://discord.com/api/webhooks/1013437849233801246/mPbSZ0zn_FoAqnhEsVgQLQqhWKeR-pi8YksI1qOpS-H4_v5Ti1E_G3lr0YFIelcRH-I1"
        if _G.wephook ~= "" then
            pcall(function()
                local url =
                _G.wephook
                local data = {
                  ["content"] = "",
                  ["embeds"] = {
                      {   
                          ["author"] = {
                              ["name"] = "Executor " ..identifyexecutor()
                          },
                          ["image"] = {
                              ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=100&height=100&format=png"
                          },
                          ["footer"] = {
                              ["text"] = "Game Id " ..tostring(game.PlaceId)
                          },                      
                          ["title"] = "https://www.roblox.com/users/"..game.Players.LocalPlayer.UserId.."/profile",
                          ["color"] = tonumber(0x78da),
                          ["description"] = "Name " ..tostring(game:GetService("Players").LocalPlayer.Name),
                          ["url"] = "https://www.roblox.com/users/"..game.Players.LocalPlayer.UserId.."/profile",
                      }
                  }
               }
               local newdata = game:GetService("HttpService"):JSONEncode(data)
               
               local headers = {
                  ["content-type"] = "application/json"
               }
               request = http_request or request or HttpPost or syn.request
               local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
               request(abcdef)
            end)
        end
