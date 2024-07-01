local LocalizationService = game:GetService("LocalizationService")
local player = game.Players.LocalPlayer
local HttpService = game:GetService("HttpService")

local le = (game:GetService("Players").LocalPlayer.Data.Level.Value)
local code = LocalizationService:GetCountryRegionForPlayerAsync(player)
local data = {
    embeds = {
        {
            title = "Profile Player",
            url = "https://www.roblox.com/users/" .. player.UserId,
            description = "```" .. player.DisplayName .. " (" .. player.Name .. ") ```",
            image = {
            	url ="https://cdn.vox-cdn.com/thumbor/UixJG8lZQVN9qI6pBcxprYOsWeA=/0x0:1920x1080/1200x800/filters:focal(807x387:1113x693)/cdn.vox-cdn.com/uploads/chorus_image/image/68876614/26355890.6.jpeg"
            },
            color = tonumber(0xfcf803),
            fields = {
                {
                    name = "ᴄᴏᴜɴᴛʀʏ",
                    value = "```" .. code .. "```",
                    inline = true
                },
                {
                    name = "ᴀɢᴇ",
                    value = "```" .. player.AccountAge .. " Days```",
                    inline = true
                },
                {
                    name = "ᴇxᴇᴄᴜᴛᴏʀ",
                    value = "```" .. identifyexecutor() .. "```",
                    inline = true
                },
                {
                    name = "ʟᴇᴠᴇʟ",
                    value = "```" .. le .. "```",
                    inline = true
                },
                {
                    name = "ᴊᴏʙ ɪᴅ:",
                    value = "```" .. tostring(game.JobId) .. "```",
                    inline = true
                },
                {
                    name = "**Join Code**",
                    value = "```lua" .. "\n" .. "game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport','" .. game.JobId .. "')" .. "```",
                   inline = false
                },
                {
                    name = "sᴛᴀᴛᴜs",
                    value = "```Thank you for using the hack script```",
                    inline = true
                }
            }
        }
    }
}

local jsonData = HttpService:JSONEncode(data)
local webhookUrl = "https://discord.com/api/webhooks/1255714473600356383/n58GaLqMILyZh2EEEJDhjj_SAtB32CMVZR9VFP7xiLBOCBq-VU_H-ZpYOAv07M_A8qyx"
local headers = {["Content-Type"] = "application/json"}
request = http_request or request or HttpPost or fluxus.request or syn.request or Krnl.request or delta.request;
local request = http_request or request or HttpPost or syn.request
local final = {Url = webhookUrl, Body = jsonData, Method = "POST", Headers = headers}

local success, response = pcall(request, final)
if success then
    print("Profile information sent to Discord.")
else
    print("Failed to send profile information to Discord: " .. response)
end

if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
else
    game.Players.LocalPlayer:Kick("Not Support Game | Get Scirpt https://discord.com/invite/t7ySXEvJ")
end
--------------------------------------------------------------------------------------------------------
function CheckQuest() 
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel == 15 or MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel == 40 or MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel == 100 or MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel == 120 or MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel == 210 or MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel == 250 or MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel == 325 or MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel == 550 or MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel == 625 or MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel == 725 or MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel == 775 or MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel == 800 or MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel == 900 or MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end             
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
        elseif MyLevel == 1600 or MyLevel <= 1624 then 
            Mon = "Dragon Crew Archer [Lv. 1600]"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
        elseif MyLevel == 1650 or MyLevel <= 1699 then 
            Mon = "Giant Islander [Lv. 1650]"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = "Marine Rear Admiral [Lv. 1725]"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel == 2400 or MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel == 2425 or MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
        elseif MyLevel == 2475 or MyLevel <= 2499 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            Mon = "Sun-kissed Warrior"
            LevelQuest = 1
            NameQuest = "TikiQuest2"
            NameMon = "kissed"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
        elseif MyLevel == 2525 or MyLevel <= 2550 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16347.4150390625, 92.09503936767578, 1122.335205078125)
        end
    end
end
--------------------------------------------------------------------------------------------------------
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end       

function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth: ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end

function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth: ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end

spawn(function()
while wait() do
    pcall(function()
        if MobESP then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("MobEap") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "MobEap"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.SourceSansBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("MobEap") then
                    v.MobEap:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if SeaESP then
            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("Seaesps") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "Seaesps"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.SourceSansBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("Seaesps") then
                    v.Seaesps:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if NpcESP then
            for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("NpcEspes") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "NpcEspes"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.SourceSansBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild("NpcEspes") then
                    v.NpcEspes:Destroy()
                end
            end
        end
    end)
end
end)

local DamageModule = require(game:GetService("ReplicatedStorage").Effect.Container.Misc.Damage)
local old = DamageModule.Run
getgenv().FakeDamage = function(Damage)
DamageModule.Run = function(...)
    args = {...}
    if Damage then
        args[1]['Value'] = tostring(Damage)
    end
    return old(unpack(args))
end
end
function TienTiny(text)
    local Notification = require(game.ReplicatedStorage.Notification)
    local notification = Notification.new(text)
    notification.Duration = 4
    notification:Display()
end
local function tablefound(ta, object)
    for i,v in pairs(ta) do
        if v == object then
            return true
        end
    end
    return false
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateIslandMirageESP() 
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
    pcall(function()
        if MirageIslandESP then 
            if v.Name == "Mirage Island" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateAfdESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AfdESP then 
            if v.Name == "Advanced Fruit Dealer" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function UpdateAuraESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AuraESP then 
            if v.Name == "Master of Enhancement" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function UpdateLSDESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if LADESP then 
            if v.Name == "Legendary Sword Dealer" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function UpdateGeaESP() 
for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
    pcall(function()
        if GearESP then 
            if v.Name == "MeshPart" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end



function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0,0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0);
                NumberSequenceKeypoint.new(1, 4); 
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0,0,0,0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end

local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
    LocalPlayer.Character.Energy.Changed:connect(function()
        if InfiniteEnergy then
            LocalPlayer.Character.Energy.Value = originalstam
        end 
    end)
end

spawn(function()
    pcall(function()
        while wait(.1) do
            if InfiniteEnergy then
                wait(0.1)
                originalstam = LocalPlayer.Character.Energy.Value
                infinitestam()
            end
        end
    end)
end)

function NoDodgeCool()
    if nododgecool then
        for i,v in next, getgc() do
            if game:GetService("Players").LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.1" then
                        repeat wait(.1)
                            setupvalue(v,i2,0)
                        until not nododgecool
                        end
                    end
                end
            end
        end
    end
end

function fly()
    local mouse=game:GetService("Players").LocalPlayer:GetMouse''
    localplayer=game:GetService("Players").LocalPlayer
    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    local speedSET=25
    local keys={a=false,d=false,w=false,s=false}
    local e1
    local e2
    local function start()
        local pos = Instance.new("BodyPosition",torso)
        local gyro = Instance.new("BodyGyro",torso)
        pos.Name="EPIXPOS"
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = torso.Position
        gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        gyro.CFrame = torso.CFrame
        repeat
                wait()
                localplayer.Character.Humanoid.PlatformStand=true
                local new=gyro.CFrame - gyro.CFrame.p + pos.position
                if not keys.w and not keys.s and not keys.a and not keys.d then
                speed=1
                end
                if keys.w then
                new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+speedSET
                end
                if keys.s then
                new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+speedSET
                end
                if keys.d then
                new = new * CFrame.new(speed,0,0)
                speed=speed+speedSET
                end
                if keys.a then
                new = new * CFrame.new(-speed,0,0)
                speed=speed+speedSET
                end
                if speed>speedSET then
                speed=speedSET
                end
                pos.position=new.p
                if keys.w then
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
                elseif keys.s then
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
                else
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
                end
        until not Fly
        if gyro then 
                gyro:Destroy() 
        end
        if pos then 
                pos:Destroy() 
        end
        flying=false
        localplayer.Character.Humanoid.PlatformStand=false
        speed=0
    end
    e1=mouse.KeyDown:connect(function(key)
        if not torso or not torso.Parent then 
                flying=false e1:disconnect() e2:disconnect() return 
        end
        if key=="w" then
            keys.w=true
        elseif key=="s" then
            keys.s=true
        elseif key=="a" then
            keys.a=true
        elseif key=="d" then
            keys.d=true
        end
    end)
    e2=mouse.KeyUp:connect(function(key)
        if key=="w" then
            keys.w=false
        elseif key=="s" then
            keys.s=false
        elseif key=="a" then
            keys.a=false
        elseif key=="d" then
            keys.d=false
        end
    end)
    start()
end

function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end

function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end


function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

function BTP(p)
    pcall(function()
        if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            repeat wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                wait(.05)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
            until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
        end
    end)
end

function TelePPlayer(P)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end


function TP1(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
    pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
    tween:Play()
    if Distance <= 230 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween == true then
        tween:Cancel()
        _G.Clip = false
    end
end

function TP(Pos)
    Distance = (Pos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 230 then
        Speed = 600
    elseif Distance >= 1000 then
        Speed = 375
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
    _G.Clip = true
    wait(Distance/Speed)
    _G.Clip = false
end

function topos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
    pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
    tween:Play()
    if Distance <= 230 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween == true then
        tween:Cancel()
        _G.Clip = false
    end
end


--Tween Boats 
function TPB(CFgo)
local tween_s = game:service"TweenService"
local info = TweenInfo.new((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
tween = tween_s:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat, info, {CFrame = CFgo})
tween:Play()

local tweenfunc = {}

function tweenfunc:Stop()
    tween:Cancel()
end

return tweenfunc
end

function TPP(CFgo)
if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
local tween_s = game:service"TweenService"
local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
tween:Play()

local tweenfunc = {}

function tweenfunc:Stop()
    tween:Cancel()
end

return tweenfunc
end

getgenv().ToTargets = function(p)
task.spawn(function()
    pcall(function()
        if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 230 then 
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
        elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
            local K = Instance.new("Part",game.Players.LocalPlayer.Character)
            K.Size = Vector3.new(1,0.5,1)
            K.Name = "Root"
            K.Anchored = true
            K.Transparency = 1
            K.CanCollide = false
            K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
        end
        local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
        local z = game:service("TweenService")
        local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
        local S,g = pcall(function()
        local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
        q:Play()
    end)
    if not S then 
        return g
    end
    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
            pcall(function()
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 20 then 
                    spawn(function()
                        pcall(function()
                            if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then 
                                game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            else 
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
                            end
                        end)
                    end)
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 20 then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 10 then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                end
            end)
        end
    end)
end)
end

Type = 1
spawn(function()
while wait(.1) do
    if Type == 1 then
        Pos = CFrame.new(0,PosY,-30)
    elseif Type == 2 then
        Pos = CFrame.new(30,PosY,0)
    elseif Type == 3 then
        Pos = CFrame.new(0,PosY,30)	
    elseif Type == 4 then
        Pos = CFrame.new(-30,PosY,0)
    end
    end
end)

spawn(function()
while wait(.1) do
    Type = 1
    wait(0.5)
    Type = 2
    wait(0.5)
    Type = 3
    wait(0.5)
    Type = 4
    wait(0.5)
    Type = 5
    wait(0.5)
end
end)

spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki then
        if not game:GetService("Workspace"):FindFirstChild("LOL") then
            local LOL = Instance.new("Part")
            LOL.Name = "LOL"
            LOL.Parent = game.Workspace
            LOL.Anchored = true
            LOL.Transparency = 1
            LOL.Size = Vector3.new(30,-0.5,30)
        elseif game:GetService("Workspace"):FindFirstChild("LOL") then
            game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
        end
    else
        if game:GetService("Workspace"):FindFirstChild("LOL") then
            game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
        end
    end
end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.bjirFishBoat or _G.KillGhostShip or _G.AutoFrozenDimension or _G.AutoFKitsune == true then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.AutoFrozenDimension or _G.AutoFKitsune == true then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)

function InstancePos(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function TP3(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

spawn(function()
    while wait() do
        if _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFactory or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.d or _G.Autowaden or _G.Autogay or _G.AutoObservationHakiV2 or _G.AutoFarmMaterial or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoRaidPirate or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or _G.AttackDummy or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Farmfast or _G.RaidPirate or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.bjirFishBoat or _G.KillGhostShip == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
            end)
        end    
    end
end)

spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.AutoClick or Fastattack then
         pcall(function()
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
        end)
    end
end)
end)

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
    if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
        game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
    end
end

spawn(function()
    pcall(function()
        while wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

spawn(function()
    for i, v in pairs(game:GetDescendants()) do
        if v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
            v.Enabled = false
        end
    end
end)

spawn(function() 
    repeat
        task.wait()
    until game:IsLoaded()
    repeat
        task.wait()
    until game.Players
    repeat
        task.wait()
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Team ~= nil 
    wait(1.5)
        require(game.ReplicatedStorage.Notification).new("<Color=Red>https://discord.com/invite/hxQXsqmA<Color=/>"):Display()
end)
wait(1.5)
    
local g = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules"):FindFirstChild("dsfwefwfwdfsfasdadaxczcw")
if g then
    g:Destroy()
end
    local h = game:GetService("UserInputService")
    local i = game:GetService("VirtualInputManager")
    local j = game:GetService("TweenService")
    local l = game:service "TweenService"
    local m = game:GetService("RunService")
    local n = game:GetService("Players").LocalPlayer
    local o = n:GetMouse()
    local p = game:GetService("GuiService")
    local q = Instance.new("Sound")
            q.Name = "Sound Effect"
            q.SoundId = "rbxassetid://3398620867"
            q.Volume = 0
            q.Parent = game.Workspace
    local r = Instance.new("UIStroke")
    local s = Instance.new("UICorner")
    local t = Instance.new("ScreenGui")
    local u = Instance.new("ImageButton")
    local v = Enum.ButtonStyle.RobloxButton
        t.Parent = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules")
        t.Name = "dsfwefwfwdfsfasdadaxczcw"
        u.Parent = t
        u.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
        u.Size = UDim2.new(0, 65, 0, 65)
        u.Draggable = true
        u.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        u.BackgroundTransparency = 1
        u.Image = "rbxassetid://17851124858"
function LoadFunction()
    u.MouseEnter:Connect(
        function()
            j:Create(
                u,
                TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 80, 0, 80)}
            ):Play()
        end
    )
    u.MouseLeave:Connect(
        function()
            j:Create(
                u,
                TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 65, 0, 65)}
            ):Play()
        end
    )
    local w = false
    u.MouseButton1Down:Connect(
        function()
            if w == false then
                w = false
                j:Create(u, TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Rotation = 180}):Play(

                )
                q:Play()
                j:Create(u, TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {ImageTransparency = 0}):Play(

                )
                wait(.5)
                j:Create(u, TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Rotation = 0}):Play()
                j:Create(u, TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {ImageTransparency = 0}):Play(

                )
                wait(.5)
            end
        end
    )
end
LoadFunction()
u.MouseButton1Down:connect(
    function()
        XSeaH.Window:Minimize()
    end
)

local XSeaH = loadstring(game:HttpGet("https://raw.githubusercontent.com/Taolathangnayaicholaysourecuatao10j/QP19IHANQUOWO8/main/libcuaxsea%20(2).txt"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = XSeaH:CreateWindow({
    Title = "X-Sea Hub Update 1.25",
    SubTitle = "https://discord.com/invite/t7ySXEvJ",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = false, 
    Theme = "XRayNe",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Options = XSeaH.Options


local Info = Window:AddTab({Title = "•> Update Log", Icon = "crown"})


local Time = Info:AddParagraph({Title = "", Content = ""})
local OSDate = Info:AddParagraph({Title = "", Content = ""})

local function UpdateOS()
    local date = os.date("*t")
    local hour = (date.hour) % 24
    local ampm = hour < 12 and "AM" or "PM"
    local timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm)
    local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
    local LocalizationService = game:GetService("LocalizationService")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local name = player.Name
    local result, code = pcall(function()
     return LocalizationService:GetCountryRegionForPlayerAsync(player)
     end)
     OSDate:SetTitle(datetime.." - "..timezone.." [" .. code .. "]")
    end
    spawn(function()
     while true do
     UpdateOS()
     game:GetService("RunService").RenderStepped:Wait()
     end
     end)

     spawn(function()
        while wait() do
            Time:SetTitle("Server : " .. function8() .. " | ".. CheckMoon() .. "")
                end
            end)

     function MoonTextureId()
        if World1 then
            return game:GetService("Lighting").Sky.MoonTextureId
        elseif World2 then
            return game:GetService("Lighting").Sky.MoonTextureId
        elseif World3 then
            return game:GetService("Lighting").Sky.MoonTextureId
        end
    end

    function CheckMoon()
        moon8 = "http://www.roblox.com/asset/?id=9709150401"
        moon7 = "http://www.roblox.com/asset/?id=9709150086"
        moon6 = "http://www.roblox.com/asset/?id=9709149680"
        moon5 = "http://www.roblox.com/asset/?id=9709149431"
        moon4 = "http://www.roblox.com/asset/?id=9709149052"
        moon3 = "http://www.roblox.com/asset/?id=9709143733"
        moon2 = "http://www.roblox.com/asset/?id=9709139597"
        moon1 = "http://www.roblox.com/asset/?id=9709135895"
        moonreal = MoonTextureId()
        cofullmoonkothangbeo = "Bad Moon"
        if moonreal == moon5 or moonreal == moon4 then
            if moonreal == moon5 then
                cofullmoonkothangbeo = "Full Moon"
            elseif moonreal == moon4 then
                cofullmoonkothangbeo = "Next Night"
            end
        end
        return cofullmoonkothangbeo
    end

    function function7()
        GameTime = "Error"
        local c = game.Lighting
        local ao = c.ClockTime
        if ao >= 18 or ao < 5 then
            GameTime = "Night"
        else
            GameTime = "Day"
        end
        return GameTime
    end
    function function6()
        return math.floor(game.Lighting.ClockTime)
    end
    function getServerTime()
        RealTime = tostring(math.floor(game.Lighting.ClockTime * 100) / 100)
        RealTime = tostring(game.Lighting.ClockTime)
        RealTimeTable = RealTime:split(".")
        Minute, Second = RealTimeTable[1], tonumber(0 + tonumber(RealTimeTable[2] / 100)) * 60
        return Minute, Second
    end
    function function8()
        local c = game.Lighting
        local ao = c.ClockTime
        if CheckMoon() == "Full Moon" and ao <= 5 then
            return tostring(function6()) .. " ( Will End Moon In " .. math.floor(5 - ao) .. " Minutes )"
        elseif CheckMoon() == "Full Moon" and (ao > 5 and ao < 12) then
            return tostring(function6()) .. " ( Fake Moon )"
        elseif CheckMoon() == "Full Moon" and (ao > 12 and ao < 18) then
            return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 - ao) .. " Minutes )"
        elseif CheckMoon() == "Full Moon" and (ao > 18 and ao <= 24) then
            return tostring(function6()) .. " ( Will End Moon In " .. math.floor(24 + 6 - ao) .. " Minutes )"
        end
        if CheckMoon() == "Next Night" and ao < 12 then
            return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 - ao) .. " Minutes )"
        elseif CheckMoon() == "Next Night" and ao > 12 then
            return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 + 12 - ao) .. " Minutes )"
        end
        return tostring(function6())
    end


            Info:AddButton({
            Title = "X-Sea Discord Server Link",
            Description = "",
            Callback = function()
                Window:Dialog({
                    Title = "X-Sea Community",
                    Content = "Discord server, Invite link",
                    Buttons = {
                        {
                            Title = "Discord Copy",
                            Callback = function()
                                setclipboard("https://discord.com/invite/t7ySXEvJ")
                                XSeaH:Notify({
                                    Title = "X-Sea Hub",
                                    Content = "Invited",
                                    SubContent = "X-Sea Discord",
                                    Duration = 2 
                                })                            
                            end
                        },
                    }
                })
            end
        }) 

        local Main = Window:AddTab({Title = "•> Main", Icon = "home"})
        

        local MonsterStatus = Main:AddParagraph({Title = "", Content = ""})


spawn(function()
  while task.wait() do
  if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
  MonsterStatus:SetDesc("[Monster] : ")
  MonsterStatus:SetTitle("[Quest] : ".." | [Level] : ")
  elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
  pcall(function()
    CheckQuest()
    MonsterStatus:SetDesc("[Monster] : "..Mon)
    MonsterStatus:SetTitle("[Quest] : "..NameQuest.." | [Level] : "..LevelQuest)
    end)
  end
  end
  end)

        Main:AddSection("Main")
        local WeaponList = {"Melee","Sword","Fruit"}
_G.SelectWeapon = "Melee"
local WeaponList = Main:AddDropdown("WeaponList", {
    Title = "Select Weapon",
    Description = "",
    Values = WeaponList,
    Multi = false,
    Default = _G.SelectWeapon,
    Callback = function(v)
        _G.SelectWeapon = v
    end
})

task.spawn(function()
	while wait() do
		pcall(function()
			if _G.SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			end
		end)
	end
    end)

local ListF = {"Normal", "Auto Quest", "Nearest"}
FarmMode = "Normal"
local ListF = Main:AddDropdown("ListF", {
    Title = "Select Farm Mode",
    Description = "",
    Values = ListF,
    Multi = false,
    Default = FarmMode,
    Callback = function(v)
        FarmMode = v
    end
})

local AutoFarm = Main:AddToggle("AutoFarm", {
    Title = "Start Farm Level",
    Description = "",
    Default = _G.AutoFarm,
    Callback = function(v)
        _G.AutoFarm = v
        StopTween(_G.AutoFarm)
    end
})

spawn(function()
    while wait() do
        if _G.AutoFarm then
            pcall(function()
                CheckQuest()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                    BTP(CFrameQuest)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
                    TP1(CFrameQuest)
                    end
                else
                    TP1(CFrameQuest)
                end
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait(_G.FastAttackDelay)
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()                                            
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            StartBring = true
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                            AttackNoCD()
                                        until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartBring = false
                                    end
                                end
                            end
                        end
                    else
                        TP1(CFrameMon)
                        UnEquipWeapon(_G.SelectWeapon)
                    end
                end
            end)
        end
    end
end)

    spawn(function()
        while wait() do
            if FarmMode == "Nearest" and _G.AutoFarm then
                pcall(function()
                    for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                                repeat wait( _G.FastAttackDelay)
                                StartBring = true
                                AttackNoCD()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                TP1(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                PosMon = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                                StartBring = false
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

spawn(function()
    while wait() do
        if FarmMode == "Auto Quest" and _G.AutoFarm then
            pcall(function()
                CheckQuest()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude > 1500 then
                    BTP(CFrameMon)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 1500 then
                    TP1(CFrameMon)
                    end
                else
                    TP1(CFrameMon)
                end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait( _G.FastAttackDelay)
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()                                            
                                            PosMon = v.HumanoidRootPart.CFrame
                                            TP1(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                            StartBring = true
                                            MonFarm = v.Name
                                            AttackNoCD()
                                        until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartBring = false
                                    end
                                end
                            end
                        end
                    else
                        TP1(CFrameMon)
                        UnEquipWeapon(_G.SelectWeapon)
                    end
                end
            end)
        end
    end
end)

Main:AddSection("Farm Mastery")

local ModeMastery = {
        "Normal",
        "Nearest"
     }
     SelectedMasteryMode = "Normal"
local FarmMastery = Main:AddDropdown("FarmMastery", {
    Title = "Select Farm Mode",
    Description = "",
    Values = ModeMastery,
    Multi = false,
    Default = SelectedMasteryMode,
    Callback = function (value)
        SelectedMasteryMode = value
    end
})

local FarmFruit = Main:AddToggle("FarmFruit", {
    Title = "Farm Mastery Fruit",
    Description = "",
    Default = false,
    Callback = function (value)
        _G.AutoFarmFruitMastery = value
        StopTween(_G.AutoFarmFruitMastery)
        if _G.AutoFarmFruitMastery == false then
                UseSkill = false 
             Skillaimbot = false
         end
    end
})

spawn(function()
    while wait() do
        if  SelectedMasteryMode == "Normal" and _G.AutoFarmFruitMastery then
            pcall(function()
                CheckQuest()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    repeat wait()
                        TP1(CFrameQuest)
                    until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                        repeat task.wait()
                                            if v.Humanoid.Health <= HealthMs then
                                                EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                UseSkill = true
                                                Skillaimbot = true
                                                TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))
                                            else           
                                                UseSkill = false 
                                                Skillaimbot = false
                                                EquipWeapon(_G.SelectWeapon)
                                                TP1(v.HumanoidRootPart.CFrame * Pos)
                                            end
                                            AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position
                                            MonFarm = v.Name
                                            PosMon = v.HumanoidRootPart.CFrame
                                            AutoHaki()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            StartBring = true
                                            NormalAttack()
                                        until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartBring = false
                                        UseSkill = false
                                        Skillaimbot = false
                                    end
                                end
                            end
                        end
                    else
                        TP1(CFrameMon)
                        UnEquipWeapon(_G.SelectWeapon)
                    end
                end
            end)
        end
    end
end)


 spawn(function()
     while wait() do
         if SelectedMasteryMode == "Nearest" and _G.AutoFarmFruitMastery then
             pcall(function()
                 for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                     if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                         if
                             (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000
                          then
                             repeat wait()
                                 if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                                     UseSkill = true
                                 else
                                     UseSkill = false
                                     AutoHaki()
                                     StartBring = true
                                     EquipWeapon(_G.SelectWeapon)
                                     TP1(v.HumanoidRootPart.CFrame * pos)
                                     v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                     v.HumanoidRootPart.Transparency = 1
                                     v.Humanoid.JumpPower = 0
                                     v.Humanoid.WalkSpeed = 0
                                     v.HumanoidRootPart.CanCollide = false
                                     PosMon = v.HumanoidRootPart.CFrame
                                     MonFarm = v.Name
                                     NormalAttack()
                                 end
                             until not _G.AutoFarmFruitMastery or not SelectedMasteryMode == "Nearest" or
                                 not v.Parent or
                                 v.Humanoid.Health == 0 or
                                 not SelectedMasteryMode == "Nearest"
                             StartBring = false
                             UseSkill = false
                         end
                     end
                 end            
             end)
         end
    end
 end)

 function NormalAttack()
    if not _G.NormalAttack then
        local a3 = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
        local a4 = debug.getupvalues(a3)[2]
        local a5 = require(game.ReplicatedStorage.Util.CameraShaker)
        a5:Stop()
        a4.activeController.attacking = false
        a4.activeController.timeToNextAttack = 0
        a4.activeController.hitboxMagnitude = 180
        game:GetService "VirtualUser":CaptureController()
        game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
    end
end

local FarmGun = Main:AddToggle("FarmGun", {
    Title = "Farm Mastery Gun",
    Description = "",
    Default = false,
    Callback = function (value)
        _G.AutoFarmGunMastery = value
        StopTween(_G.AutoFarmGunMastery)
    end
})

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarmGunMastery then
                CheckQuest()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    TP1(CFrameQuest)
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            HealthMin = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            ShootPosition = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -15, 0)
                                            if v.Humanoid.Health <= HealthMin then
                                                EquipWeapon(SelectWeaponGun)
                                                TP1(v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))
                                                game:GetService("Players").LocalPlayer.Character.Humanoid:FindFirstChild(""):InvokeServer("TAP", Vector3.new(ShootPosition.Position))
                                                UseGunSkill = true
                                                Skillaimbot = true
                                            else
                                                EquipWeapon(_G.SelectWeapon)
                                                TP1(v.HumanoidRootPart.CFrame * Pos)
                                                UseGunSkill = false
                                                Skillaimbot = false
                                            end
                                            NormalAttack()
                                            AutoHaki()
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Head.CanCollide = false
                                            AimBotSkillPosition = v.HumanoidRootPart.Position
                                            StartBring = true 
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                        until v.Humanoid.Health <= 0 or _G.AutoFarmGunMastery == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        UseGunSkill = false
                                        Skillaimbot = false
                                        StartBring = false
                                    end
                                end
                            end
                        end)
                    else
                       TP1(CFrameMon)
                       UnEquipWeapon(_G.SelectWeapon)
                    end 
                end
            end
        end
    end)
end)


local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
	local method = getnamecallmethod()
	local args = {...}
	if tostring(method) == "FireServer" then
		if tostring(args[1]) == "RemoteEvent" then
			if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
				if Skillaimbot then
					args[2] = AimBotSkillPosition
					return old(unpack(args))
				end
			end
		end
	end
	return old(...)
end)




Main:AddSection("Farm Boss")

local BossStat = Main:AddParagraph({Title = "Select Boss", Content = ""})

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) or game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                BossStat:SetTitle("Status : Spawn!")	
            else
                BossStat:SetTitle("Status : Boss Not Spawn")	
            end
        end)
    end
end)

if World1 then
	tableBoss = {'The Gorilla King','Bobby','Yeti','Mob Leader','Vice Admiral','Warden','Chief Warden','Swan','Magma Admiral','Fishman Lord','Wysper','Thunder God','Cyborg','Saber Expert'}
elseif World2 then
	tableBoss = {'Diamond','Jeremy','Fajita','Don Swan','Smoke Admiral','Cursed Captain','Darkbeard','Order','Awakened Ice Admiral','Tide Keeper'}
elseif World3 then
	tableBoss = {'Stone','Island Empress','Kilo Admiral','Captain Elephant','Beautiful Pirate','rip_indra True Form','Longma','Soul Reaper','Cake Queen'}
end

_G.SelectBoss = ""
local BossList = Main:AddDropdown("BossList", {
    Title = "Select Boss",
    Description = "",
    Values = tableBoss,
    Multi = false,
    Default = _G.SelectBoss,
    Callback = function(value)
        _G.SelectBoss = value
    end
})

local AutoFarmBoss = Main:AddToggle("AutoFarmBoss", {
    Title = "Auto Farm Boss",
    Description = "",
    Default = false,
    Callback = function(value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        _G.AutoFarmBoss = value
        StopTween(_G.AutoFarmBoss)
    end
})

spawn(function()
    while wait() do
        if _G.AutoFarmBoss then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == _G.SelectBoss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait(_G.FastAttackDelay)
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCD()
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                    end
                end
            end)
        end
    end
end)

local FarmAllBoss = Main:AddToggle("FarmAllBoss", {
    Title = "Farm All Boss",
    Description = "",
    Default = false,
    Callback = function(value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        _G.AutoFarmAllBoss = value
        StopTween(_G.AutoFarmAllBoss)
    end
})

spawn(function()
    while wait() do
        if _G.AutoFarmAllBoss then
            pcall(function()
                for i,boss in pairs(tableBoss) do
                if game:GetService("Workspace").Enemies:FindFirstChild(boss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == boss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait(_G.FastAttackDelay)
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCD()
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoFarmAllBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(boss) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(boss).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                    end
                end
                end
            end)
        end
    end
end)


Main:AddSection("Farm Bones")

local BoneCheck = Main:AddParagraph({Title = "Total Bones :", Content = ""})
spawn(function()
    while wait() do
        pcall(function()
            BoneCheck:SetTitle("Total Bones : "..(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")))
        end)
    end
end)

local ListB = {"No Quest", "Quest", "MasteryFruit", "MasteryGun"}
    BoneFMode = "No Quest"
local ListBones = Main:AddDropdown("ListBones", {
    Title = "Select Farm Mode",
    Description = "",
    Values = ListB,
    Multi = false,
    Default = BoneFMode,
    Callback = function(value)
        BoneFMode = value
    end
})

        local FarmBones = Main:AddToggle("FarmBones", {
            Title = "Auto Farm Bones",
            Description = "",
            Default = _G.Auto_Bone,
            Callback = function (value)
                _G.Auto_Bone = value
                wait(.1)
                StopTween(_G.Auto_Bone)
                tween:Cancel()
            end
        })

        local BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
        spawn(function()
            while wait() do 
                if BoneFMode == "No Quest" and _G.Auto_Bone and World3 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                            StartBring = false
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                   if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                       repeat task.wait(_G.FastAttackDelay)
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false 
                                            StartBring = true
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            AttackNoCD()
                                        until not _G.Auto_Bone or not v.Parent or v.Humanoid.Health <= 0
                                        StartBring = false
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude > 1500 then
                        BTP(BonePos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude < 1500 then
                        topos(BonePos)
                        end
                        else
                        topos(BonePos)
                        end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(v.HumanoidRootPart.CFrame * Pos)
                        end
                    end)
                end
            end
        end)      
        
        local BoneQuestPos = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    
        spawn(function()
            while wait() do
                if  BoneFMode == "Quest" and _G.Auto_Bone and World3  then
                    pcall(function()
                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, "Demonic Soul") then
                            StartBring = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            StartBring = false
                            if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude > 1500 then
                            BTP(BoneQuestPos)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude < 1500 then
                            topos(BoneQuestPos)
                            end
                        else
                            topos(BoneQuestPos)
                        end
                        if (BoneQuestPos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then    
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                                repeat task.wait(_G.FastAttackDelay)
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()                                            
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    StartBring = true
                                                    AttackNoCD()
                                                until not _G.Auto_Bone or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                StartBring = false
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
        
        spawn(function()
            while wait() do
                if BoneFMode == "MasteryFruit" and _G.Auto_Bone and World3 then
                    pcall(function()
                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, "Demonic Soul") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude > 1500 then
                            BTP(BoneQuestPos)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude < 1500 then
                            topos(BoneQuestPos)
                            end
                        else
                            topos(BoneQuestPos)
                        end
                        if (BoneQuestPos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then                            
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
                        end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                                HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                                repeat task.wait()
                                                    if v.Humanoid.Health <= HealthMs then
                                                        EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                        TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,15,0))
                                                        UseSkill = true
                                                        Skillaimbot = true
                                                    else
                                                        UseSkill = false 
                                                        Skillaimbot = false
                                                        EquipWeapon(_G.SelectWeapon)
                                                        TP1(v.HumanoidRootPart.CFrame * Pos)
                                                    end
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    AimBotSkillPosition = PosMon.Position
                                                    MonFarm = v.Name
                                                    StartBring = true
                                                    AutoHaki()
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    NormalAttack()
                                                until not _G.Auto_Bone or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                StartBring = false
                                                Skillaimbot = false
                                                UseSkill = false
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)

        spawn(function()
            while wait() do
                if BoneFMode == "MasteryGun" and _G.Auto_Bone and World3 then
                    pcall(function()
                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, "Demonic Soul") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude > 1500 then
                            BTP(BoneQuestPos)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude < 1500 then
                            topos(BoneQuestPos)
                            end
                        else
                            topos(BoneQuestPos)
                        end
                        if (BoneQuestPos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then                            
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
                        end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                                HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                                repeat task.wait()
                                                    if v.Humanoid.Health <= HealthMs then
                                                        EquipWeapon(SelectWeaponGun)
                                                        TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,15,0))
                                                        UseSkill = true
                                                        Skillaimbot = true
                                                        game:GetService("Players").LocalPlayer.Character.Humanoid:FindFirstChild(""):InvokeServer("TAP", Vector3.new(v.HumanoidRootPart.Position))
                                                    else
                                                        UseSkill = false 
                                                        Skillaimbot = false
                                                        EquipWeapon(_G.SelectWeapon)
                                                        TP1(v.HumanoidRootPart.CFrame * Pos)
                                                    end
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    AimBotSkillPosition = PosMon.Position
                                                    MonFarm = v.Name
                                                    StartBring = true
                                                    AutoHaki()
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    NormalAttack()
                                                until not _G.Auto_Bone or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                StartBring = false
                                                Skillaimbot = false
                                                UseSkill = false
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)


local RandomSurprise = Main:AddToggle("RandomSurprise", {
    Title = "Auto Random Surprise",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.Auto_Random_Bone = value
    end
})

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Auto_Random_Bone and World3 then
                wait(1)    
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            end
        end
    end)
end)

local AutoPray = Main:AddToggle("AutoPray", {
    Title = "Auto Pray",
    Description = "",
    Default = false,
    Callback = function (value)
        _G.Pray = value
    end
})

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Pray and World3 then    
                TP1(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
                wait()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",1)
            end
        end
    end)
end)

local AutoTryLuck = Main:AddToggle("AutoTryLuck", {
    Title = "Auto Try Luck",
    Description = "",
    Default = false,
    Callback = function (value)
        _G.Trylux = value
    end
})

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Trylux and World3 then    
                TP1(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
                wait()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2)
            end
        end
    end)
end)

Main:AddSection("Farm Dough Boss")

local CakeKilled = Main:AddParagraph({Title = "Defeat: ", Content = ""})

spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                CakeKilled:SetTitle("Defeat: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                CakeKilled:SetTitle("Defeat: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                CakeKilled:SetTitle("Defeat: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
            else
                CakeKilled:SetTitle("Boss Is Spawning")
            end
        end)
    end
end)

local ListC = {"NoQuest", "AcceptQuest", "MasteryFruit"}
CakeFMode = "NoQuest"

local ListCake = Main:AddDropdown("ListCake", {
    Title = "Select Farm Mode",
    Description = "",
    Values = ListC,
    Multi = false,
    Default = CakeFMode,
    Callback = function (value)
        CakeFMode = value
    end
})

local AutoFarmCake = Main:AddToggle("AutoFarmCake", {
    Title = "Auto Farm Cake",
    Description = "",
    Default = false,
    Callback = function (value)
        _G.AutoDoughtBoss = value
        StopTween(_G.AutoDoughtBoss)
    end
})

local CakePos = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)
    spawn(function()
        while wait() do
            if CakeFMode == "NoQuest" and _G.AutoDoughtBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        AttackNoCD()
                                      sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                                 
                            if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat task.wait(_G.FastAttackDelay)
                                                    AutoHaki()
                                                    StartBring = true
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false 
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    AttackNoCD()
                                                until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") 
                                                StartBring = false
                                            end
                                        end
                                    end
                                else
                                if BypassTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude > 1500 then
						        BTP(CakePos)
						        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude < 1500 then
						        topos(CakePos)
						        end
					            else
						        topos(CakePos)
					            end
                                    UnEquipWeapon(_G.SelectWeapon)
                                    topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    local CakeQuestPos = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
      
    spawn(function()
            while wait() do
                if CakeFMode == "AcceptQuest" and _G.AutoDoughtBoss and World3  then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Prince" or v.Name == "Dough King" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait(_G.FastAttackDelay)
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            AttackNoCD()
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                            end
                        end
                    end)
                end
            end
        end)
        
        spawn(function()
            while wait() do
                if CakeFMode == "AcceptQuest" and _G.AutoDoughtBoss and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince")  then
                    pcall(function()
                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, "Cookie Crafter") then
                            StartBring = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            StartBring = false
                            if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeQuestPos.Position).Magnitude > 1500 then
                            BTP(CakeQuestPos)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeQuestPos.Position).Magnitude < 1500 then
                            topos(CakeQuestPos)
                            end
                        else
                            topos(CakeQuestPos)
                        end
                        if (CakeQuestPos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then                            
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CakeQuest1",1)
                        end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cookie Crafter") then
                                                repeat task.wait(_G.FastAttackDelay)
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()                                            
                                                    PosMonCake = v.HumanoidRootPart.CFrame
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                                    StartBring = true
                                                    PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                    AttackNoCD()
                                                until not _G.AutoDoughtBoss or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                            else
                                                StartBring = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        end
                                    end
                                end
                            else
                                StartBring = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                 topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(15,10,2))
                                end
                            end
                        end
                    end)
                end
            end
        end)
        
        
        spawn(function()
            while wait() do
                if CakeFMode == "MasteryFruit" and _G.AutoDoughtBoss and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince")  then
                    pcall(function()
                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, "Cookie Crafter") then
                            StartBring = false
                            UseSkillKub = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            StartBring = false
                            UseSkill = false
                            if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeQuestPos.Position).Magnitude > 1500 then
                            BTP(CakeQuestPos)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeQuestPos.Position).Magnitude < 1500 then
                            topos(CakeQuestPos)
                            end
                        else
                            topos(CakeQuestPos)
                        end
                        if (CakeQuestPos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then                            
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CakeQuest1",1)
                        end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cookie Crafter") then
                                                HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                                repeat task.wait(_G.FastAttackDelay)
                                                    if v.Humanoid.Health <= HealthMs then
                                                        AutoHaki()
                                                        EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                        TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                                        v.HumanoidRootPart.CanCollide = false
                                                        PosMonCake = v.HumanoidRootPart.CFrame
                                                        PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Head.CanCollide = false
                                                        UseSkillKub = true
                                                    else           
                                                        UseSkillKub = false 
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        TP1(v.HumanoidRootPart.CFrame * Pos)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        PosMonCake = v.HumanoidRootPart.CFrame
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Head.CanCollide = false
                                                    end
                                                    StartBring = true
                                                    PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                    AttackNoCD()
                                                until not _G.AutoDoughtBoss or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            else
                                                UseSkillKub = false
                                                StartBring = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        end
                                    end
                                end
                            else
                                StartBring = false   
                                UseSkillKub = false 
                                local Mob = game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") 
                                if Mob then
                                    TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                                else
                                    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                        game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                        task.wait()
                                        game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)



        local AutoSpawnCake = Main:AddToggle("AutoSpawnCake", {
            Title = "Auto Spawn Cake",
            Description = "",
            Default = true,
            Callback = function(value)
                _G.AutoSpawnCP = value
            end
        })
        
        spawn(function() 
            while wait() do
            if _G.AutoSpawnCP then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
            end
            end
            end) 

            local AutoKIllCake = Main:AddToggle("AutoKillCake", {
                Title = "Auto Kill Cake Prince",
                Description = "Dough Boss V1",
                Default = false,
                Callback = function(value)
                    _G.AutoCakePrince = value
        StopTween( _G.AutoCakePrince)
                end
            })

            spawn(function()
                while wait() do
                    if  _G.AutoCakePrince and World3 then
                        pcall(function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cake Prince" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait(_G.FastAttackDelay)
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                AttackNoCD()
                                                -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                            until not  _G.AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            else
                            UnEquipWeapon(_G.SelectWeapon)
                            end
                        end)
                    end
                end
            end)
        
            local AutoDoughKing = Main:AddToggle("AutoDoughKing", {
                Title = "Auto Kill Dough King",
                Description = "Dough V2 ",
                Default = false,
                Callback = function (value)
                    _G.Autodoughking = value
                    StopTween( _G.Autodoughking)
                end
            })
            spawn(function()
                while wait() do
                    if  _G.Autodoughking and World3 then
                        pcall(function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Dough King" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait(_G.FastAttackDelay)
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                AttackNoCD()
                                                -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                            until not  _G.Autodoughking or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end
            end)


local Sub = Window:AddTab({Title = "•> Sub Item", Icon = "rocket"})

if World1 or World2 then
Sub:AddSection("World")
end

if World1 then
    local AutoSecondSea = Sub:AddToggle("AutoSecondSea", {
        Title = "Auto Second Sea",
        Description = "",
        Default = false,
        Callback = function(value)
            _G.AutoSecondSea = value
            StopTween(_G.AutoSecondSea)
        end
    })
    spawn(function()
        while wait() do
            if _G.AutoThirdSea then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                        _G.AutoFarm = false
                        if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                            topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                            if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                            end
                            wait(1.8)
                            if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "rip_indra" then
                                        OldCFrameThird = v.HumanoidRootPart.CFrame
                                        repeat task.wait(_G.FastAttackDelay)
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CFrame = OldCFrameThird
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            AttackNoCD()
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                            -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                            end
                        end
                    end
                end)
            end
        end
    end)
end

if World2 then

    local AutoThirdSea = Sub:AddToggle("AutoThirdSea", {
        Title = "Auto Third Sea",
        Description = "",
        Default = false,
        Callback = function(value)
            _G.AutoThirdSea = value
            StopTween(_G.AutoThirdSea)
        end
    })

    spawn(function()
        while wait() do
            if _G.AutoThirdSea then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                        _G.AutoFarm = false
                        if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                            topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                            if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                            end
                            wait(1.8)
                            if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "rip_indra" then
                                        OldCFrameThird = v.HumanoidRootPart.CFrame
                                        repeat task.wait(_G.FastAttackDelay)
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CFrame = OldCFrameThird
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            AttackNoCD()
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                            -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                            end
                        end
                    end
                end)
            end
        end
    end)
end

Sub:AddSection("Farm Materials")

if World1 then
    MaterialList = {
      "Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail"
    } elseif World2 then
    MaterialList = {
      "Scrap Metal","Leather","Radioactive Material","Mystic Droplet","Magma Ore","Vampire Fang"
    } elseif World3 then
    MaterialList = {
      "Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"
    }
    end

    SelectMaterial = ""
    local SelectMaterial = Sub:AddDropdown("SelectMaterial", {
        Title = "Select Material", 
        Description = "",
        Values = MaterialList,
        Multi = false,
        Default = SelectMaterial,
        Callback = function(value)
            SelectMaterial = value
        end
    })

local AutoFarmMaterial = Sub:AddToggle("AutoFarmMaterial", {
    Title = "Auto Farm Material",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.AutoMaterial = value
        StopTween(_G.AutoMaterial)
    end
})
spawn(function()
while task.wait() do
    if _G.AutoMaterial then
    pcall(function()
            MaterialMon(SelectMaterial)
                TPP(MPos)
                        if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
                            for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == MMon then
                                    repeat wait(_G.FastAttackDelay)
                                    AttackNoCD()
                                    AutoHaki()
                                    StartBring = true
                                    EquipWeapon(_G.SelectWeapon)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                         v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                             v.HumanoidRootPart.CanCollide = false
                                             PosMon = v.HumanoidRootPart.CFrame
                                             MonFarm = v.Name
                                            until not _G.AutoMaterial or not v.Parent or v.Humanoid.Health <= 0
                                            StartBring = false
                                        end
                                    end
                                end
                                    else
                                        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                                        if string.find(v.Name, Mon) then
                                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                        end
                                    end
                                end
                             end
                        end)
                      end
                   end
                end)

Sub:AddSection("Swords")

if World1 then

    
local AutoSaber = Sub:AddToggle("AutoSaber", {
    Title = "Auto Get Saber",
    Description = "",
    Default = false,
    Callback = function (value)
        _G.Auto_Saber = value
		StopTween(_G.Auto_Saber)
    end
})

spawn(function()
    while task.wait() do
        if _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
            pcall(function()
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                EquipWeapon("Torch")
                                topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                              else
                              topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                wait(0.5)
                                EquipWeapon("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                    topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Mob Leader" then
                                               if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat task.wait(_G.FastAttackDelay)
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    AttackNoCD()
                                                    -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                    until v.Humanoid.Health <= 0 or not _G.Auto_Saber
                                                 end
                                            end
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Farm_Mode)
                                            end
                                        end
                                    end
                                 end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    wait(0.5)
                                    EquipWeapon("Relic")
                                    wait(0.5)
                                    topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                end
                            end
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Saber Expert" then
                                    repeat task.wait(_G.FastAttackDelay)
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        StartBring = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        AttackNoCD()
                                    until v.Humanoid.Health <= 0 or not _G.Auto_Saber
                                    StartBring = true
                                    if v.Humanoid.Health <= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local CheckPoleBoss = Sub:AddParagraph({Title = "", Content = ""})
spawn(function()
    while wait() do
    pcall(function()
      if game.ReplicatedStorage:FindFirstChild("Thunder God") or game.Workspace.Enemies:FindFirstChild("Thunder God") then
        CheckPoleBoss:SetTitle("Pole Boss :".."✅")
      else
        CheckPoleBoss:SetTitle("Pole Boss :".."❌")
      end
      end)
    end
    end)

local AutoPole = Sub:AddToggle("AutoPole", {
    Title = "Auto Get Pole",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.Autopole = value
        StopTween( _G.Autopole)
    end
})
local PolePos = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)
    spawn(function()
        while wait() do
            if  _G.Autopole and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Thunder God" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        AttackNoCD()
                                        -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autopole or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PolePos.Position).Magnitude > 1500 then
			        BTP(PolePos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PolePos.Position).Magnitude < 1500 then
				    topos(PolePos)
					end
				else
				    topos(TridentPos)
				end
				    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end)
            end
        end
    end)

    local AutoSaw = Sub:AddToggle("AutoSaw", {
        Title = "Auto Get Saw",
        Description = "",
        Default = false,
        Callback = function(value)
            _G.Autosaw = value
            StopTween( _G.Autosaw)
        end
    })
    local SharkPos = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
    spawn(function()
        while wait() do
            if  _G.Autosaw and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "The Saw" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        AttackNoCD()
                                        -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autosaw or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - SharkPos.Position).Magnitude > 1500 then
			        BTP(SharkPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - SharkPos.Position).Magnitude < 1500 then
				    topos(SharkPos)
					end
				else
				    topos(SharkPos)
				end
				    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                       
                        end
                    end
                end)
            end
        end
    end)
    
    local AutoWarden = Sub:AddToggle("AutoWarden", {
        Title = "Auto Get Warden",
        Description = "",
        Default = false,
        Callback = function(value)
            _G.Autowarden = value
                StopTween( _G.Autowarden)
        end
    })
    local WardenPos = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562)
    spawn(function()
        while wait() do
            if  _G.Autowarden and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Chief Warden" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        AttackNoCD()
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autowarden or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - WardenPos.Position).Magnitude > 1500 then
			        BTP(WardenPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - WardenPos.Position).Magnitude < 1500 then
				    topos(WardenPos)
					end
				else
				    topos(WardenPos)
				end
				    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                       
                        end
                    end
                end)
            end
        end
    end)
end

if World2 then
    local AutoTrident = Sub:AddToggle("AutoTrident", {
        Title = "Auto Get Trident",
        Description = "",
        Default = false,
        Callback = function(value)
            _G.Auto_Dragon_Trident = value
        StopTween(_G.Auto_Dragon_Trident)
        end
    })

    local TridentPos = CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125)
    spawn(function()
        while wait() do
            if  _G.Auto_Dragon_Trident and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Tide Keeper" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        AttackNoCD()
                                        -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Auto_Dragon_Trident or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude > 1500 then
			        BTP(TridentPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude < 1500 then
				    topos(TridentPos)
					end
				else
				    topos(TridentPos)
				end
				    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                       
                        end
                    end
                end)
            end
        end
    end)

end

if World3 then
Sub:AddSection("Item & Farm")
    local AutoBuddySword = Sub:AddToggle("AutoBuddySword", {
        Title = "Auto Get Buddy Sword",
        Description = "",
        Default = false,
        Callback = function(value)
            _G.AutoBudySword = value
            StopTween(_G.AutoBudySword)
        end
    })
    local BigMomPos = CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875)
    spawn(function()
        while wait() do
            if _G.AutoBudySword and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BigMomPos.Position).Magnitude > 1500 then
			        BTP(BigMomPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BigMomPos.Position).Magnitude < 1500 then
				    topos(BigMomPos)
					end
				else
				    topos(BigMomPos)
				end
				    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                     
                        end
                    end
                end)
            end
        end
    end)

    local AutoGetHallowScyte = Sub:AddToggle("AutoGetHallowSyte", {
        Title = "Auto Get Hallow Scythe",
        Description = "",
        Default = false,
        Callback = function(value)
            _G.AutoFarmBossHallow = value
    StopTween(_G.AutoFarmBossHallow)
        end
    })
    spawn(function()
        while wait() do
            if _G.AutoFarmBossHallow then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Soul Reaper") then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    topos(v.HumanoidRootPart.CFrame*Pos)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                    v.HumanoidRootPart.Transparency = 1
                                    -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                        EquipWeapon("Hallow Essence")
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                       
                        end
                    end
                end)
            end
        end
    end)

    local AutoGetYama = Sub:AddToggle("AutoGetYama", {
        Title = "Auto Get Yama",
        Description = "Need 30 Elite Hunter",
        Default = false,
        Callback = function(value)
            _G.AutoYama = value
        end
    })
    spawn(function()
        while wait() do
            if _G.AutoYama then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                    repeat wait(.1)
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                end
            end
        end
    end)

    local AutoGetCarvander = Sub:AddToggle("AutoGetCarvander", {
        Title = "Auto Get Carvander",
        Description = "",
        Default = false,
        Callback = function(value)
            _G.AutoCarvender = value
        StopTween( _G.AutoCarvender)
        end
    })
    local CavandisPos = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875)
    spawn(function()
        while wait() do
            if  _G.AutoCarvender and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.AutoCarvender or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CavandisPos.Position).Magnitude > 1500 then
			        BTP(CavandisPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CavandisPos.Position).Magnitude < 1500 then
				    topos(CavandisPos)
					end
				else
				    topos(CavandisPos)
				end
				    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end)
            end
        end
    end)
    
    local AutoGetTushita = Sub:AddToggle("AutoGetTushita", {
        Title = "Auto Get Tushita",
        Description = "",
        Default = false,
        Callback = function(value)
            _G.Autotushita = value
            StopTween( _G.Autotushita)
        end
    })

    spawn(function()
        while wait() do
            if  _G.Autotushita and World3 then
                pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") then
                            ripIndraSpawn = true
                        elseif game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                            longmaSpawn = true
                        end

                        if not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                            repeat wait(1)
                            Alert:create("Rip Indra Not Spawn")
                            until not _G.Autotushita or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")
                        elseif not game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                            repeat wait(1)
                            Alert:create("Longma Not Spawn")
                            until not _G.Autotushita or game:GetService("Workspace").Enemies:FindFirstChild("Longma")
                        end
                    if ripIndraSpawn and longmaSpawn then
                    topos(CFrame.new(5154.85303, 141.812225, 913.080933, 0.138356507, 5.17637666e-08, 0.990382493, 4.59496796e-08, 1, -5.86856146e-08, -0.990382493, 5.36272928e-08, 0.138356507))
                    if (CFrame.new(5154.85303, 141.812225, 913.080933, 0.138356507, 5.17637666e-08, 0.990382493, 4.59496796e-08, 1, -5.86856146e-08, -0.990382493, 5.36272928e-08, 0.138356507).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 2 then
                        wait(2)
                    Torch = true
                    end
                    end
                    local Torch1CFrame = game:GetService("Workspace").Map["Turtle"].QuestTorches.Torch1.Particles.CFrame
                    local Torch2CFrame = game:GetService("Workspace").Map["Turtle"].QuestTorches.Torch2.Particles.CFrame
                    local Torch3CFrame = game:GetService("Workspace").Map["Turtle"].QuestTorches.Torch3.Particles.CFrame
                    local Torch4CFrame = game:GetService("Workspace").Map["Turtle"].QuestTorches.Torch4.Particles.CFrame
                    local Torch5CFrame = game:GetService("Workspace").Map["Turtle"].QuestTorches.Torch5.Particles.CFrame
                    if Torch then
                        topos(Torch1CFrame)
                        if (Torch1CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 2 then
                            wait(1)
                            Torch1 = true
                        end

                        if Torch1 then
                        topos(Torch2CFrame)
                        if (Torch2CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 2 then
                            wait(1)
                            Torch2 = true
                        end
                        end

                        if Torch2 then
                        topos(Torch3CFrame)
                        if (Torch3CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 2 then
                            wait(1)
                            Torch3 = true
                        end
                        end

                        if Torch3 then
                        topos(Torch4CFrame)
                        if (Torch4CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 2 then
                            wait(1)
                            Torch4 = true
                        end
                        end

                        if Torch4 then
                        topos(Torch5CFrame)
                        if (Torch5CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 2 then
                            wait(1)
                            Torch5 = true
                        end
                        end

                        if Torch5 then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Longma" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until not  _G.Autotushita or not v.Parent or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Tushita") or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    local AutoCDK = Sub:AddToggle("AutoCDK", {
        Title = "Auto Cursed Dual Katana",
        Description = "Need Tushita and Yama!",
        Default = false,
        Callback = function(value)
            Auto_Cursed_Dual_Katana = value
    StopTween(Auto_Cursed_Dual_Katana)
        end
    })
    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Cursed_Dual_Katana then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                        if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                EquipWeapon("Tushita")
                            end
                        elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                EquipWeapon("Yama")
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Cursed_Dual_Katana then
                    if GetMaterial("Alucard Fragment") == 0 then
                        Auto_Quest_Yama_1 = true
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 1 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = true
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 2 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = true
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 3 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = true
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 4 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = true
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 5 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 6 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton Boss" or v.Name == "Cursed Skeleton" then
                                        if v.Humanoid.Health > 0 then
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * pos)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            StartBring = true
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                        end
                                    end
                                end
                            end
                        else
                            if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                                wait(1)
                                topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)
                                topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                            else
                                topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                            end   
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mythological Pirate" then
                                repeat wait()
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                                until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                            end
                        end
                    else
                        topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Quest_Yama_2 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size = UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance = "inf"
                        end
                    end
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size = UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance = "inf"
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonsEsp
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                            local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                            vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                            vc.Velocity = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_2 then 
                pcall(function() 
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            repeat wait()
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                else
                                    EquipWeapon(Sword)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end							
                                end      
                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                        else
                            for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if y:FindFirstChild("HazeESP") then
                                    if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                        topos(y.HumanoidRootPart.CFrameMon* Farm_Mode)
                                    else
                                        topos(y.HumanoidRootPart.CFrame * Farm_Mode)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_3 then
                pcall(function()
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                        topos(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                    elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                EquipWeapon(Sword)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                topos(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                topos(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                            end
                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Soul Reaper" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                        end
                                    end
                                end
                            else
                                topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_1 then
                topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
                wait(5)
                topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
                wait(5)
                topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_2 then
                pcall(function()
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    repeat wait()
                                        EquipWeapon(Sword)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                                end
                            end
                        end
                    else
                        topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Queen" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                        end
                    elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                EquipWeapon(Sword)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                            end
                        until not Auto_Cursed_Dual_Katana or not Auto_Quest_Tushita_3 or GetMaterial("Alucard Fragment") == 6
                    end
                end)
            end
        end
    end)
end

Sub:AddSection("Others")

local AutoFarmObservation = Sub:AddToggle("AutoFarmObservation", {
    Title = "Auto Farm Observation",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.AutoObservation = value
        StopTween(_G.AutoObservation)
    end
})
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoObservation then
                repeat task.wait()
                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        game:GetService('VirtualUser'):CaptureController()
                        game:GetService('VirtualUser'):SetKeyDown('0x65')
                        wait(2)
                        game:GetService('VirtualUser'):SetKeyUp('0x65')
                    end
                until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
            end
        end)
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoObservation then
                if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 5000 then
                    XSeaH:Notify({
                        Title = "X-Sea Hub",
                        Content = "You Have Max Points",
                        SubContent = "5000 Points in Total", 
                        Duration = 5
                    })
                    wait(2)
                else
                    if World2 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
                                        wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                    end
                                until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                        end
                    elseif World1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                    wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                    end
                                until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                        end
                    elseif World3 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                    wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                    end
                                until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                        end
                    end
                end
            end
        end
    end)
end)

local AutoObservationv2 = Sub:AddToggle("AutoObservationv2", {
    Title = "Auto Observation V2",
    Description = "",
    Default = false,
    Callback = function(value)
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoObservationv2 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 3 then
                            _G.AutoMusketeerHat = false
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and  game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                                repeat 
                                    topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
                                    wait() 
                                until not _G.AutoObservationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                            elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                                repeat 
                                    topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
                                    wait() 
                                until not _G.AutoObservationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                            else
                                for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                                    if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                                        v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
                                        wait()
                                        firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
                                        wait()
                                    end
                                end   
                            end
                        else
                            _G.AutoMusketeerHat = true
                        end
                    end
                end)
            end
        end)
    end
})

if World2 then

    local AutoGetDarkCoat = Sub:AddToggle("AutoGetDarkCoat", {
        Title = "Auto Dark Coat",
        Description = "kill black beard",
        Default = false,
        Callback = function(value)
            _G.AutoDarkCoat = value
            StopTween(_G.AutoDarkCoat)
        end
    })

    local DarkBossPos = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
    task.spawn(function()
        while wait() do
            if _G.AutoDarkCoat and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Darkbeard" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoDarkCoat or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - DarkBossPos.Position).Magnitude > 1500 then
			        BTP(DarkBossPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - DarkBossPos.Position).Magnitude < 1500 then
				    topos(DarkBossPos)
					end
				else
				    topos(DarkBossPos)
				end
				    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                     
                        end
                    end
                end)
            end
        end
    end)



local AutoPressHaki = Sub:AddToggle("AutoPressHaki", {
    Title = "Auto Press Haki",
    Description = "open 3 haki Lengendary to spawn Rip_indra",
    Default = false,
    Callback = function(value)
        Open_Color_Haki = value
        StopTween(Open_Color_Haki)
    end
})
spawn(function()
    while wait(.3) do
        pcall(function()
            if Open_Color_Haki then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
                wait(0.5)
                repeat topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
                wait(0.5)
                repeat topos(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
                wait(0.5)
                repeat topos(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
                wait(0.5)
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
                wait(3)
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
            end
        end) 
    end
end)
local AutoKillRipIndra = Sub:AddToggle("AutoKillRipIndra", {
    Title = "Auto Kill Rip_indra ",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.AutoDarkDagger = value
            StopTween(_G.AutoDarkDagger)
    end
})
local AdminPos = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
        spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoDarkDagger then
                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                    repeat task.wait(_G.FastAttackDelay)
                                        pcall(function()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            AttackNoCD()
                                        end)
                                    until _G.AutoDarkDagger == false or v.Humanoid.Health <= 0
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude > 1500 then
                        BTP(AdminPos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude < 1500 then
                        topos(AdminPos)
                        end
                    else
                        topos(AdminPos)
                    end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                        end
                    end
                end
            end)
        end)

        local AutoMuskeeterHat = Sub:AddToggle("AutoMuskeeterHat",{
            Title = "Auto Musketeer Hat",
            Description = "",
            Default = false,
            Callback = function(value)
                _G.AutoMusketeerHat = value
        StopTween(_G.AutoMusketeerHat)
            end
        })
        spawn(function()
            pcall(function()
                while wait(.1) do
                    if _G.AutoMusketeerHat then
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Forest Pirate" then
                                            repeat task.wait(_G.FastAttackDelay)
                                                pcall(function()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    AttackNoCD()
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    StartBring = true
                                                end)
                                            until _G.AutoMusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            StartBring = false
                                        end
                                    end
                                else
                                    StartBring = false
                                    topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                                end
                            else
                                topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                                if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                                end
                            end
                        elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Captain Elephant" then
                                            OldCFrameElephant = v.HumanoidRootPart.CFrame
                                            repeat task.wait(_G.FastAttackDelay)
                                                pcall(function()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.CFrame = OldCFrameElephant
                                                    ATtackNoCD()
                                                    -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                end)
                                            until _G.AutoMusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        end
                                    end
                                else
                                    topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                                end
                            else
                                topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                                if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                                end
                            end
                        elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                            topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                        end
                    end
                end
            end)
        end)

        
        local AutoRBHaki = Sub:AddToggle("AutoRBHaki", {
            Title = "Auto Rainbow Haki",
            Description = "",
            Default = false,
            Callback = function(value)
                _G.Auto_Rainbow_Haki = value
        StopTween(_G.Auto_Rainbow_Haki)
            end
        })

        spawn(function()
            pcall(function()
                while wait(.1) do
                    if _G.Auto_Rainbow_Haki then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                            if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Stone" then
                                        OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                        repeat task.wait(_G.FastAttackDelay)
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            AttackNoCD()
                                            -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Island Empress" then
                                        OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                        repeat task.wait(_G.FastAttackDelay)
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            AttackNoCD()
                                            -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                            end
                        elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Kilo Admiral" then
                                        OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                        repeat task.wait(_G.FastAttackDelay)
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                            AttackNoCD()
                                            -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                            end
                        elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Captain Elephant" then
                                        OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                        repeat task.wait(_G.FastAttackDelay)
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                            AttackNoCD()
                                            -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
                            end
                        elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Beautiful Pirate" then
                                        OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                        repeat task.wait(_G.FastAttackDelay)
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                            AttackNoCD()
                                            -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                            end
                        else
                            topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                            if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                            end
                        end
                    end
                end
            end)
        end)

        local AutoHolyTorch = Sub:AddToggle("AutoHolyTorch", {
            Title = "Auto Holy Torch",
            Description = "",
            Default = false,
            Callback = function(value)
                _G.AutoHolyTorch = value
                StopTween(_G.AutoHolyTorch)
            end
        })
        spawn(function()
            while wait(.5) do
                pcall(function()
                    if _G.AutoHolyTorch then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                            repeat wait(.2)
                                EquipWeapon("Holy Torch")
                                TP1(CFrame.new(-10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                            until (Vector3.new(-10752.4434, 415.261749, -9367.43848)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                EquipWeapon("Holy Torch")
                                TP1(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229))
                            until (Vector3.new(-11671.6289, 333.78125, -9474.31934)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                EquipWeapon("Holy Torch")
                                TP1(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642))
                            until (Vector3.new(-12133.1406, 521.507446, -10654.292)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                EquipWeapon("Holy Torch")
                                TP1(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228))
                            until (Vector3.new(-13336.127, 484.521179, -6985.31689)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            EquipWeapon("Holy Torch")
                            repeat wait(.2)
                                TP1(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108))
                            until (Vector3.new(-13487.623, 336.436188, -7924.53857)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            Com()
                            wait(20)
                        end
                    end
                end)
            end
        end)

        local AutoBartiloQ = Sub:AddToggle("AutoBartiloQ", {
            Title = "Auto Bartilo Quest",
            Description = "",
            Default = false,
            Callback = function(value)
                _G.AutoBartilo = value
            end
        })
        spawn(function()
            pcall(function()
                while wait(.1) do
                    if _G.AutoBartilo then
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                                if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                    Ms = "Swan Pirate"
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == Ms then
                                            pcall(function()
                                                repeat task.wait(_G.FastAttackDelay)
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    topos(v.HumanoidRootPart.CFrame * Pos)													
                                                    PosMon =  v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    AttackNoCD()
                                                    StartBring = true
                                                until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                StartBring = false
                                            end)
                                        end
                                    end
                                else
                                    repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                                end
                            else
                                repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                            end 
                        elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                                Ms = "Jeremy"
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then
                                        OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                        repeat task.wait(_G.FastAttackDelay)
                                            -- sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.Transparency = 1
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            AttackNoCD()
                                            -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                                wait(1)
                                repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                                wait(2)
                            else
                                repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                            end
                        elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                            repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                            wait(1)
                            repeat topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                            wait(1)
                            repeat topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                            wait(1)
                            repeat topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                            wait(1)
                            repeat topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                            wait(1)
                            repeat topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                            wait(1)
                            repeat topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                            wait(1)
                            repeat topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                        end
                    end 
                end
            end)
        end)









end

if World3 then
Sub:AddSection("Elite Hunter")

local CheckElites = Sub:AddParagraph({Title = "Elite Name :", Content = ""})

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                CheckElites:SetDesc("Elite Status : Spawned | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            else
                CheckElites:SetDesc("Elite Status : Despawned | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") then
                CheckElites:SetTitle("Elite Name : [ Diablo ] ")
            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") then
                CheckElites:SetTitle("Elite Name : [ Deandre ] ")	
            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                CheckElites:SetTitle("Elite Name : [ Urban ] ")
            else
                CheckElites:SetTitle("Elite Name : [Unknown] ")
            end
        end)
    end
end)

local AutoEliteHunter = Sub:AddToggle("AutoEliteHunter", {
    Title = "Auto Kill Elite Hunter",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.AutoElitehunter = value
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        StopTween(_G.AutoElitehunter)
    end
})

local Elite = CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)
    
    spawn(function()
        while wait() do
            if _G.AutoElitehunter and World3 then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Elite.Position).Magnitude > 1500 then
						BTP(Elite)
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Elite.Position).Magnitude < 1500 then
						topos(Elite)
						end
					else
						topos(Elite)
					end
                    if (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait(_G.FastAttackDelay)
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                AttackNoCD()
                                                -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                end
                            end                    
                        end
                    end
                end)
            end
        end
    end)

end





local Stat = Window:AddTab({Title = "•> Stats Points", Icon = "user"})

local UserStat = Stat:AddParagraph({Title = "[ User ] : "..game.Players.LocalPlayer.DisplayName.."| Stat Points : "..tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value), 
Content = "MELEE : "..game.Players.localPlayer.Data.Stats.Melee.Level.Value..
"\nDEFENSE : "..game.Players.localPlayer.Data.Stats.Defense.Level.Value..
"\nSWORD : "..game.Players.localPlayer.Data.Stats.Sword.Level.Value..
"\nGUN : "..game.Players.localPlayer.Data.Stats.Gun.Level.Value..
"\nFRUIT : "..game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value..""})

local SlideAddStat = Stat:AddSlider("SlideAddStat",{
    Title = "Point",
    Description = "",
    Default = 1,
    Min = 1,
    Max = 1000,
    Rounding = 0,
    Callback = function(value)
        PointStats = value
    end
})

local AddSMelee = Stat:AddToggle("AddSMelee", {
    Title = "[ Add ] Melee",
    Description = "",
    Default = false,
    Callback = function(value)
        melee = value 
    end
})
local AddSDefense = Stat:AddToggle("AddSDefense", {
    Title = "[ Add ] Defense",
    Description = "",
    Default = false,
    Callback = function(value)
        defense = value
    end
})
local AddSSword = Stat:AddToggle("AddSSword", {
    Title = "[ Add ] Sword",
    Description = "",
    Default = false,
    Callback = function(value)
        sword = value
    end
})
local AddSGun = Stat:AddToggle("AddSGun", {
    Title = "[ Add ] Gun",
    Description = "",
    Default = false,
    Callback = function(value)
        gun = value
    end
})
local AddSFruit = Stat:AddToggle("AddSFruit", {
    Title = "[ Add ] Fruit",
    Description = "",
    Default = false,
    Callback = function(value)
        demonfruit = value
    end
})

spawn(function()
    while wait() do
        if game.Players.localPlayer.Data.Points.Value >= PointStats then
            if melee then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Melee",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if defense then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Defense",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if sword then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Sword",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if gun then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Gun",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if demonfruit then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Demon Fruit",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)







local Set = Window:AddTab({Title = "•> Config Farm", Icon = "settings"})

Set:AddSection("Main Settings")


PosY = 25
local FarmDistance = Set:AddSlider("FarmDistance", {
    Title = "Farm Distance",
    Description = "",
    Default = PosY,
    Min = 0,
    Max = 50,
    Rounding = 1,
    Callback = function(value)

        PosY = value
    end
})

local AttackList = {0, 0.125, 0.150, 0.165, 0.175, 0.200, 0.250}
_G.FastAttackDelay = 0.175
local Attacklist = Set:AddDropdown("Attacklist", {
    Title = "Delay Attack",
    Description = "",
    Values = AttackList,
    Multi = false,
    Default = _G.FastAttackDelay,
    Callback = function (v)
        
        _G.FastAttackDelay = v
    end
})

local FastAttack = Set:AddToggle("FastAttack", {
    Title = "Fast Atttack",
    Description = "",
    Default = true,
    Callback = function(value)
        _G.FastAttack = value
        _G.AttackMob = value
    end
})

spawn(function()
    while wait(_G.FastAttackDelay) do
        if _G.AttackMob and not _G.AutoFarmFruitMastery and not _G.AutoFarmGunMastery then
            pcall(function()
                AttackNoCD()
            end)
        end
    end
end)


local PBlade = game.Players.LocalPlayer
local QBlade = getupvalues(require(PBlade.PlayerScripts.CombatFramework))
local RBlade = QBlade[2]
function GetCurrentBlade()
local S = RBlade.activeController
local T = S.blades[1]
if not T then
    return
end
while T.Parent ~= game.Players.LocalPlayer.Character do
    T = T.Parent
end
return T
end

function AttackNoCD()
if not _G.AutoFarmFruitMastery or not _G.AutoFarmGunMastery then
    if _G.FastAttack then
        local U = RBlade.activeController
        for h = 1, 1 do
            local V =
                require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                PBlade.Character,
                {PBlade.Character.HumanoidRootPart},
                60
            )
            local W = {}
            local X = {}
            for k, i in pairs(V) do
                if i.Parent:FindFirstChild("HumanoidRootPart") and not X[i.Parent] then
                    table.insert(W, i.Parent.HumanoidRootPart)
                    X[i.Parent] = true
                end
            end
            V = W
            if #V > 0 then
                local Y = debug.getupvalue(U.attack, 5)
                local Z = debug.getupvalue(U.attack, 6)
                local _ = debug.getupvalue(U.attack, 4)
                local a0 = debug.getupvalue(U.attack, 7)
                local a1 = (Y * 798405 + _ * 727595) % Z
                local a2 = _ * 798405
                (function()
                    a1 = (a1 * Z + a2) % 1099511627776
                    Y = math.floor(a1 / Z)
                    _ = a1 - Y * Z
                end)()
                a0 = a0 + 1
                debug.setupvalue(U.attack, 5, Y)
                debug.setupvalue(U.attack, 6, Z)
                debug.setupvalue(U.attack, 4, _)
                debug.setupvalue(U.attack, 7, a0)
                pcall(
                    function()
                        if PBlade.Character:FindFirstChildOfClass("Tool") and U.blades and U.blades[1] then
                            U.animator.anims.basic[1]:Play(0.01, 0.01, 0.01)
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                                "weaponChange",
                                tostring(GetCurrentBlade())
                            )
                            game.ReplicatedStorage.Remotes.Validator:FireServer(
                                math.floor(a1 / 1099511627776 * 16777215),
                                a0
                            )
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", V, h, "")
                        end
                    end
                )
            end
        end
    else
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
end
end

local Bring = {"Low", "Normal", "High"}
_G.BringMode = "High"
local BringMode2 = Set:AddDropdown("BringMode2", {
    Title = "Select Bring Mode",
    Description = "",
    Values = Bring,
    Multi = false,
    Default = _G.BringMode,
    Callback = function(value)
        _G.BringMode = value
    end
})
spawn(function()
    while wait(.1) do
        if _G.BringMode then
            pcall(function()
                if _G.BringMode == "Low" then
                    _G.BringMode = 350
                elseif _G.BringMode == "Normal" then
                    _G.BringMode = 500
                elseif _G.BringMode == "High" then
                    _G.BringMode = 800
                end
            end)
        end
    end
end)



local BringMob = Set:AddToggle("BringMob", {
    Title = "Bring Mob",
    Description = "",
    Default = true,
    Callback = function(Mag)
        _G.BringMonster = Mag
    end
})

spawn(function()
	while task.wait() do
		pcall(function()
            CheckQuest()
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.BringMonster then
					if StartBring and v.Name == MonFarm or v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
						if v.Name == "Factory Staff" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 5000 then
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								v.HumanoidRootPart.CFrame = PosMon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
							end
						elseif v.Name == MonFarm or v.Name == Mon then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 4500 then
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                v.HumanoidRootPart.CFrame = PosMon
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
				end
			end
		end)
	end
end)


function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then 
			return true
		end
		return false
	end
end

local AutoClick = Set:AddToggle("AutoClick", {
    Title = "Auto Click",
    Description = "",
    Default = false,
    Callback = function(click)
        _G.AutoClick = click
    end
})
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end)
   end)

   local AutoHaki = Set:AddToggle("AutoHaki", {
    Title = "Auto Haki",
    Description = "",
    Default = true,
    Callback = function(value)
        _G.AutoHaki = value
    end
   })

   spawn(function()
    while wait(.1) do
        if _G.AutoHaki then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)

local BypassTP = Set:AddToggle("BypassTP", {
    Title = "Bypass Teleport",
    Description = "40% Errors",
    Default = false,
    Callback = function (value)
        BypassTP = value
        
    end
})

local AutoSetSpawn = Set:AddToggle("AutoSetSpawn", {
    Title = "Auto Spawn Point",
    Description = "",
    Default = true,
    Callback = function (value)
        _G.Set = value
        
    end
})

spawn(function()
    while wait() do
        if _G.Set then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            end)
        end
    end
end)

Set:AddSection("Mastery Settings")

_G.Kill_At = 25
local KillAtHealth = Set:AddSlider("KillAtHealth", {
    Title = "Kill at %",
    Description = "",
    Default = _G.Kill_At,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Callback = function(value)
        _G.Kill_At = value

    end    })

    local AutoSkillZ = Set:AddToggle("AutoSkillZ", {
        Title = "Auto Skill Z",
        Description = "",
        Default = true,
        Callback = function(value)
            _G.SkillZ = value
        end
    })

    local AutoSkillX = Set:AddToggle("AutoSkillX", {
        Title = "Auto Skill X",
        Description = "",
        Default = true,
        Callback = function (value)
            _G.SkillX = value   
        end
    })

    local AutoSkillC = Set:AddToggle("AutoSkillC", {
        Title = "Auto Skill C",
        Description = "",
        Default = true,
        Callback = function (value)
            _G.SkillC = value
            
        end
    })

    local AutoSkillV = Set:AddToggle("AutoSkillV", {
        Title = "Auto Skill V",
        Description = "",
        Default = false,
        Callback = function (value)
            _G.SkillV = value
            
        end
    })

    local AutoSkillF = Set:AddToggle("AutoSkillF", {
        Title = "Auto Skill F",
        Description = "",
        Default = false,
        Callback = function (value)
            _G.SkillF = value            
        end
    })

    Set:AddSection("Hold Skill")
    _G.HoldSKillZ = 0
    local HoldSKillZ = Set:AddSlider("HoldSKillZ", {
        Title = "Hold SKill Z",
        Description = "",
        Default = _G.HoldSKillZ,
        Min = 1,
        Max = 5,
        Rounding = 1,
        Callback = function(value)
            _G.HoldSKillZ = value
    
        end    
    })
    _G.HoldSKillX = 0
    local HoldSKillX = Set:AddSlider("HoldSKillX", {
        Title = "Hold SKill X",
        Description = "",
        Default = _G.HoldSKillX,
        Min = 1,
        Max = 5,
        Rounding = 1,
        Callback = function(value)
            _G.HoldSKillX = value
    
        end    
    })
    _G.HoldSKillC = 0
    local HoldSKillC = Set:AddSlider("HoldSKillC", {
        Title = "Hold SKill C",
        Description = "",
        Default = _G.HoldSKillC,
        Min = 1,
        Max = 5,
        Rounding = 1,
        Callback = function(value)
            _G.HoldSKillC = value
    
        end    
    })

    _G.HoldSKillV = 0
    local HoldSKillV = Set:AddSlider("HoldSKillV", {
        Title = "Hold SKill V",
        Description = "",
        Default = _G.HoldSKillV,
        Min = 1,
        Max = 5,
        Rounding = 1,
        Callback = function(value)
            _G.HoldSKillV = value
    
        end    
    })
    _G.HoldSKillF = 0
    local HoldSKillF = Set:AddSlider("HoldSKillF", {
        Title = "Hold SKill F",
        Description = "",
        Default = _G.HoldSKillF,
        Min = 1,
        Max = 5,
        Rounding = 1,
        Callback = function(value)
            _G.HoldSKillF = value
    
        end    
    })

    spawn(function()
        while wait() do
            pcall(function()
                if UseSkill then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                    if _G.SkillZ then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(_G.HoldSKillZ)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                    end
                    if _G.SkillX then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(_G.HoldSKillX)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                    end
                    if _G.SkillC then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                        wait(_G.HoldSKillC)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                    end
                    if _G.SkillV then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                        wait(_G.HoldSKillV)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                    end
                    if _G.SkillF then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
                        wait(_G.HoldSKillF)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
                    end
                end
                end
                end
            end)
        end
    end)
    
    
    spawn(function()
        while wait() do
            pcall(function()
                if UseGunSkill then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                    if _G.SkillZ then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(0.5)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                    end
                    if _G.SkillX then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(0.5)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                    end
                end
                end
                end
            end)
        end
    end)


    local Sea = Window:AddTab({Title = "• Sea Event", Icon = "sailboat"})

    local ListSeaBoat = {
        "Guardian",
        "PirateGrandBrigade",
        "MarineGrandBrigade",
        "PirateBrigade",
        "MarineBrigade",
        "PirateSloop",
        "MarineSloop",
        "BeastHunter",
    }

_G.SelectedBoat = "Guardian"
local ListSeaBoat = Sea:AddDropdown("ListSeaBoat", {
    Title = "Select Boat |",
    Description = "",
    Values = ListSeaBoat,
    Multi = false,
    Default = _G.SelectedBoat,
    Callback = function (x)
        _G.SelectedBoat = x
    end
})

    local ListSeaZone = {
        "Zone 1",
        "Zone 2",
        "Zone 3",
        "Zone 4",
        "Zone 5",
        "Zone 6",
        "Infinite"
    }
      
_G.SelectedZone = "Zone 5"
local ListSeaZone = Sea:AddDropdown("ListSeaZone", {
    Title = "Select Zone Tp",
    Description = "",
    Values = ListSeaZone,
    Multi = false,
    Default = _G.SelectedZone,
    Callback = function (x)
        _G.SelectedZone = x
    end
})

    spawn(function()
        pcall(function()
            while wait() do
                if _G.SelectedZone == "Zone 1" then
                    CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -2.36509201e-10, -0.991110802, -0.0569955558, 0.120211802)
                elseif _G.SelectedZone == "Zone 2" then
                    CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -4.15334017e-10, -0.949422479, -0.0606706589, 0.308084518)
                elseif _G.SelectedZone == "Zone 3" then
                    CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 2.70896673e-11, -0.925605655, -0.0370079502, 0.376675636)
                elseif _G.SelectedZone == "Zone 4" then
                    CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972)
                elseif _G.SelectedZone == "Zone 5" then
                    CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -1.39882339e-09, -0.981290519, -0.0365765914, -0.189026669)
                elseif _G.SelectedZone == "Zone 6" then
                    CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 2.02319411e-10, -0.99428153, -0.0651681125, -0.0846010372)
                elseif _G.SelectedZone == "Infinite" then
                    CFrameSelectedZone = CFrame.new(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -1.54416148e-06, 0.996583343, -1.8696026e-05, 1, -3.91858095e-13, -0.996583343, -1.86321486e-05, -0.0825930536)
                end
            end
        end)
    end)
  
      
local AutoLaiThuyen = Sea:AddToggle("AutoLaiThuyen", {
    Title = "Auto Sail Boat",
    Description = "",
    Default = false,
    Callback = function(state)
        _G.SailBoat = state
        StopTween(_G.SailBoat)
        Stopboat:Stop()
    end
})
    
function CheckBoat()
    for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
        if v.Name == _G.SelectedBoat then
            for _, child in pairs(v:GetChildren()) do
                if child.Name == "MyBoatEsp" then
                    return v
                end
            end
        end
    end
    return false
end


function AddEsp(Name, Parent)
    local BillboardGui = Instance.new("BillboardGui")
    local TextLabel = Instance.new("TextLabel")

    BillboardGui.Parent = Parent
    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    BillboardGui.Active = true
    BillboardGui.Name = Name
    BillboardGui.AlwaysOnTop = true
    BillboardGui.LightInfluence = 1.000
    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
    BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

    TextLabel.Parent = BillboardGui
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 15
    TextLabel.Text = "MyBoat"
end
        
    spawn(function()
        while wait() do
            pcall(function()
                if _G.SailBoat then
                        if not CheckBoat() then
                            local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)
                            if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                BTP(BuyBoatCFrame)
                            else
                                buyb = TPP(BuyBoatCFrame)
                            end
                            if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                if buyb then buyb:Stop() end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                                for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                    if v.Name == _G.SelectedBoat then
                                        if (v.VehicleSeat.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                            AddEsp('MyBoatEsp', v)
                                        end
                                    end
                                end
                            end
                        elseif CheckBoat() then
                            for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                if v.Name == _G.SelectedBoat then
                                    if v:FindFirstChild("MyBoatEsp") then
                                    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                        if ((game:GetService("Workspace").Enemies:FindFirstChild("Shark") and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (game:GetService("Workspace").Enemies:FindFirstChild("Piranha") and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat) or (CheckSeaBeast() and _G.AutoSeaBest)) then
                                            if stoppos then stoppos:Stop() end
                                        else
                                            local stoppos = topos(v.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                        end
                                    else
                                        repeat wait()
                                            local stopboat = TPB(CFrameSelectedZone, v.VehicleSeat)
                                        until ((game:GetService("Workspace").Enemies:FindFirstChild("Shark") and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (game:GetService("Workspace").Enemies:FindFirstChild("Piranha") and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat) or (CheckSeaBeast() and _G.AutoSeaBest)) or game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false or _G.SailBoat == false
                                        if stopboat then stopboat:Stop() end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                                        wait(0.1)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                                    end
                                    end
                                end
                            end
                        end
                end
            end)
        end
    end)

            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.SailBoat then
                            if ((game:GetService("Workspace").Enemies:FindFirstChild("Shark") and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (game:GetService("Workspace").Enemies:FindFirstChild("Piranha") and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat) or (CheckSeaBeast() and _G.AutoSeaBest)) then
                                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                                    wait(0.1)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                                end
                            end
                        end
                    end
                end)
            end)

    spawn(function()
        while wait() do
            pcall(function()
                if _G.SailBoat then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                                if v.Name == "Fish Crew Member" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        AttackNoCD()
                                        _G.SeaSkill = false
                                    until not _G.AutoKillFishCrew or not v.Parent or v.Humanoid.Health <= 0
                                    StartBring = false
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") then
                                repeat task.wait()
                                    local BoatCFrame = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    topos(BoatCFrame)
                                    Skillaimbot = true
                                    AimBotSkillPosition = BoatCFrame.Position
                                until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or not v:FindFirstChild("Engine") or not _G.RelzFishBoat
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                    elseif CheckSeaBeast() and _G.AutoSeaBest then
                        if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
                            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                if CheckSeaBeast() then
                                repeat wait()
                                    CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0,200,0)
                                    if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 200 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    Skillaimbot = true
                                    AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position
                                    topos(CFrameSeaBeast * Pos)
                                until not _G.AutoSeaBest or CheckSeaBeast() == false or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 or not v.Parent
                                Skillaimbot = false
                                _G.SeaSkill = false
                                else
                                Skillaimbot = false
                                _G.SeaSkill = false
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                                if v.Name == "Terrorshark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait(0.15)
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            AttackNoCD()
                                            _G.SeaSkill = false
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0))
                                        until not  _G.AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Piranha") and _G.AutoKillPiranha then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                                if v.Name == "Piranha" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        AttackNoCD()
                                        _G.SeaSkill = false
                                    until not _G.AutoKillPiranha or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Shark") and _G.AutoKillShark then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                                if v.Name == "Shark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        AttackNoCD()
                                        _G.SeaSkill = false
                                    until not _G.AutoKillShark or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    else
                        Skillaimbot = false
                        _G.SeaSkill = false
                        UnEquipWeapon(_G.SelectWeapon)
                    end
                end
            end)
        end
    end)
    
--//// s  
    Sea:AddSection("Mirage Island")
    Mirragecheck = Sea:AddParagraph({Title = "", Content = ""})
    spawn(function()
        pcall(function()
            while wait() do
                if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                    Mirragecheck:SetTitle("[Status] Spawned")
                    _G.MirageSpawn = true
                else
                    Mirragecheck:SetTitle("[Status] Not Spawn") 
                    _G.MirageSpawn = false
                 end
                end
            end)
        end)
    local AutoMirage = Sea:AddToggle("Auto Mirage", {
        Title = ("Teleport to Mirage Island"),
        Description = "",
        Default = false,
        Callback = function (value)
            _G.AutoMysticIsland = value
    StopTween(_G.AutoMysticIsland)
        end
    })

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoMysticIsland then
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        topos(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
                    end
                end
            end
        end)
    end)

    local AutoTPAdshop = Sea:AddToggle("AutoTPAdshop", {
        Title = "Teleport to Advanced Dealer",
        Description = "",
        Default = false,
        Callback = function (value)
            _G.Miragenpc = value
            StopTween(_G.Miragenpc)
            
        end
    })

    spawn(function()
        pcall(function()
            while wait() do
                if _G.Miragenpc then
                    if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
                        topos(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position))
                    end
                end
            end
        end)
    end)

    Sea:AddSection("Kitsune Island")

    Kitsunecheck = Sea:AddParagraph({Title = "", Content = ""})
    spawn(function()
        pcall(function()
            while wait() do
                if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
                    Kitsunecheck:SetTitle("[Status] Spawned")
                    _G.KitsuneSpawn = true
                else
                    Kitsunecheck:SetTitle("[Status] Not Spawn") 
                    _G.KitsuneSpawn = false
                end
            end
        end)
    end)

local TPKitsune = Sea:AddToggle("TPKitsune", {
    Title = "Teleport to Kitsune Island",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.TeleportKitsune = value
            StopTween(_G.TeleportKitsune)
    end})

spawn(function()
    while wait() do
        if _G.TeleportKitsune then
            if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
                topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,0,10))
            end
        end
    end
end)

local AutoCollectAzure = Sea:AddToggle("AutoCollectAzure", {
    Title = "Auto Collect Azure Ember",
    Description = "",
    Default = false,
    Callback = function (value)
        _G.CollectAzure = value
    end
})

spawn(function()
    while wait() do
        if _G.CollectAzure then
            pcall(function()
                if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                    fastpos(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                end
            end)
        end
    end
end)

_G.SetToTradeAureEmber = 20
local SetTradeAzure = Sea:AddSlider("SetTradeAzure", {
    Title = "Set Amount to Trade",
    Description = "",
    Default = _G.SetToTradeAureEmber,
    Min = 10,
    Max = 25,
    Rounding = 1,
    Callback = function (state)

        _G.SetToTradeAureEmber = state
        
    end
})

local AutoTradeAzure = Sea:AddToggle("AutoTradeAzure", {
    Title = "Auto Trade Azure",
    Description = "",
    Default = false,
    Callback = function (state)
        _G.TradeAureEmber = state
    end
})

function GetCountMaterials(MaterialName)
    local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
    for i, v in pairs(Inventory) do
        if v.Name == MaterialName then
            return v["Count"]
        end
    end
end

spawn(function()
    while wait() do
        if _G.TradeAureEmber then
            pcall(function()
                local AzureAvilable = GetCountMaterials("Azure Ember")
                if AzureAvilable >= _G.SetToTradeAureEmber then
                    game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KitsuneStatuePray")
                end
            end)
        end
    end
end)


if World3 then
local Race = Window:AddTab({Title = "• Race", Icon = "webhook"})


local RaceV2 = Race:AddToggle("RaceV2", {
    Title = "Auto Race V2 Evo",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.Auto_EvoRace = value
        StopTween(_G.Auto_EvoRace)
    end
})

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Auto_EvoRace then
                if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                        topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                        if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                        pcall(function()
                            if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                topos(game:GetService("Workspace").Flower1.CFrame)
                            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                topos(game:GetService("Workspace").Flower2.CFrame)
                            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Zombie" then
                                            repeat task.wait(_G.FastAttackDelay)
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                AttackNoCD()
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                StartBring = true
                                            until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
                                            StartBring = false
                                        end
                                    end
                                else
                                    topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                end
                            end
                        end)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                    end
                end
            end
        end
    end)
end)

Race:AddSection("Race V4")

Race:AddButton({
    Title = "Teleport to Top of Great Tree",
    Description = "",
    Callback = function()
        topos(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625))
    end
})
Race:AddButton({
    Title = "Teleport to Temple of Time",
    Description = "",
    Callback = function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
    end
})
Race:AddButton({
    Title = "Teleport to Acient One",
    Description = "",
    Callback = function()
        topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end
})


Race:AddButton({
    Title = "Teleport to Lever Pull",
    Description = "",
    Callback = function()
        topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
})

Race:AddButton({
    Title = "Teleport to Highest Point",
    Description = "",
    Callback = function()
        TweentoHighestPoint()
    end
})
function TweentoHighestPoint()
    HighestPoint = getHighestPoint()
    if HighestPoint then
        topos(HighestPoint.CFrame * CFrame.new(0, 211.88, 0))
    end
end
function getHighestPoint()
    if not game.workspace.Map:FindFirstChild("MysticIsland") then
        return nil
    end
    for r, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
        if v:IsA("MeshPart") then
            if v.MeshId == "rbxassetid://16471178798" then
                return v
            end
        end
    end
end

local AutoBuyGear = Race:AddToggle("AutoBuyGear", {
    Title = "Auto Buy Gear",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.Auto_Farm_Bone4 = value
        StopTween(_G.Auto_Farm_Bone4)
    end
})

spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_Farm_Bone4 then
    local args = {
    [1] = true
}

local args = {
    [1] = "UpgradeRace",
    [2] = "Buy"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
            end
end 
end)  
end)

local TPGear = Race:AddToggle("TPGear", {
    Title = "Teleport to Gear",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.TweenMGear = value
        StopTween(_G.TweenMGear)
    end
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenMGear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
						if v:IsA("MeshPart")then 
                            if v.Material ==  Enum.Material.Neon then  
                                topos(v.CFrame)
                            end
                        end
					end
				end
			end
        end
    end)
end)

local AutoLookMoon = Race:AddToggle("AutoLookMoon", {
    Title = "Auto Look Moon",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.AutoDooHee = value
    end
})

spawn(function()
    while wait() do
		pcall(function()
			if _G.AutoDooHee then
			    wait()
				local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
			end
		end)
    end
end)

Race:AddSection("Teleport to Race Doors")

Race:AddButton({
    Title = "Teleport to Trial Door",
    Description = "",
    Callback = function()
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
    wait(.1)
    Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
    wait(.1)
    Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
    wait(.1)
    Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
  if game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
  Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
  wait(0.6)
  topos(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
  elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
  Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
  wait(0.6)
  topos(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
  elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
  Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
  wait(0.6)
  topos(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
  elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
  Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
  wait(0.6)
  topos(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
  elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
  Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
  wait(0.6)
  topos(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
  elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
  Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
  wait(0.6)
  topos(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
  end
    end
})


Race:AddSection("Complete Trials")

local AutoQuestAcient = Race:AddToggle("AutoQuestAcient", {
    Title = "Auto Quest Acient One",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.AutoRace = value
        StardFarm = value
        StopTween(_G.AutoRace)
    end    })

    spawn(function()
		pcall(function()
			while wait() do
				if _G.AutoRace then
					if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
					    StardFarm = false
					    topos(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
					end
				end
			end
		end)
	end)
    spawn(function()
        while wait() do 
            if StardFarm and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                               if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                   repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        StartBring = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        AttackNoCD()
                                    until not StardFarm or not v.Parent or v.Humanoid.Health <= 0
                                    StartBring = false
                                end
                            end
                        end
                    else
						topos(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
                    end
                end)
            end
        end
    end)
    spawn(function()
		pcall(function()
			while wait() do
				if _G.AutoRace then
					if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
					    StardFarm = true
					end
				end
			end
		end)
	end)
spawn(function()
    while wait() do
		pcall(function()
			if _G.AutoRace then
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
			end
		end)
    end
end)

Race:AddButton({
    Title = "Buy Acient One Quest",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace','Buy')
    end
})

local KillPlayerTrial = Race:AddToggle("KillPlayerTrial", {
    Title = "Auto Kill Players",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.AutoKillTial = value
        StopTween(_G.AutoKillTial)
    end
})
spawn(function()
    while wait() do
        if _G.AutoKillTial then
            for i,v in pairs(game:GetService("Players"):GetChildren()) do
                if v.Name and v.Name ~= game.Players.LocalPlayer.Name and (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                    if v.Character.Humanoid.Health > 0 then
                        repeat wait(_G.FastAttackDelay)
                            EquipWeapon(_G.SelectWeapon)
                            AutoHaki()
                            topos(v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,5))
                            v.Character.HumanoidRootPart.CanCollide = false
                            v.Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            AttackNoCD()
                        until not _G.AutoKillTial or not v.Parent or v.Humanoid.Health <= 0 
                    end
                end
            end
        end
    end
end)

local AutoTrial = Race:AddToggle("AutoCompleteTrial", {
    Title = "Auto Trial",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.AutoQuestRace = value
        StopTween(_G.AutoQuestRace)
    end
})

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									-- sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
					for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
						if v.Name ==  "snowisland_Cylinder.081" then
							topos(v.CFrame* CFrame.new(0,0,0))
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name ==  "HumanoidRootPart" then
							topos(v.CFrame* Pos)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
					topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v.Name == "StartPoint" then
							topos(v.CFrame* CFrame.new(0,10,0))
					  	end
				   	end
				end
			end
        end
    end)
end)

Race:AddButton({
    Title = "Auto Complete Cyborg",
    Description = "",
    Callback = function()
        topos(CFrame.new(0,300,0))
    end
})

Race:AddSection("Other's")
local DisableInf = Race:AddToggle("DisableInf", {
    Title = "Disable Infinite Stairs",
    Description = "",
    Default = false,
    Callback = function()
        game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = value
    end
})

local AutoActiveV3 = Race:AddToggle("AutoActiveV3", {
    Title = "Auto Active V3",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.AutoAgility = value
    end
})

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoAgility then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
            end
        end
    end)
end)

local AutoActiveV4 = Race:AddToggle("AutoActiveV4", {
    Title = "Auto Active V4",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.AutoActiveRaceV4 = value
    end
})

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoActiveRaceV4 then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end)
end)
end


    local Raid = Window:AddTab({Title = "• Dungeon", Icon = "trophy"})
    

    Raid:AddSection("Dungeon")

local TimeRaid = Raid:AddParagraph({Title = "Time Left : ", Content = ""})

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                TimeRaid:SetTitle("" .. game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
            else
                TimeRaid:SetTitle("Time Left : Wait For Dungeon")
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 5') then
    TimeRaid:SetDesc('Status : Island 5')
elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 4') then
    TimeRaid:SetDesc('Status : Island 4')
  elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 3') then
    TimeRaid:SetDesc('Status : Island 3')
  elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 2') then
    TimeRaid:SetDesc('Status : Island 2')
  elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 1') then
    TimeRaid:SetDesc('Status : Island 1')
  else
    TimeRaid:SetDesc("Status : Start Dungeon") 
  end
        end
    end)
end)

_G.SelectChip = selectraids or ""
	Raidslist = {}
	RaidsModule = require(game.ReplicatedStorage.Raids)
	for i,v in pairs(RaidsModule.raids) do
		table.insert(Raidslist,v)
	end
	for i,v in pairs(RaidsModule.advancedRaids) do
		table.insert(Raidslist,v)
	end

    local SelectChip = Raid:AddDropdown("SelectChip", {
        Title = "Select Chip",
        Description = "",
        Values = Raidslist,
        Multi = false,
        Default = _G.SelectChip,
        Callback = function(value)
            _G.SelectChip = value
        end
    })

Raid:AddSection("Automatic")

local AutomaticRaid = Raid:AddToggle("AutomaticRaid", {
    Title = "Auto Raid",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.Auto_StartRaid = value
        _G.Kill_Aura = value
        _G.AutoBuyChip = value
        _G.Auto_Dungeon = value
        _G.Awaken = value
        StopTween(_G.Auto_Dungeon)
    end
})

Raid:AddSection("Manual")

local ManualBuy = Raid:AddToggle("ManualBuy", {
    Title = "[ Auto ] Buy Chip",
    Description = "",
    Default = false,
    Callback = function(v)
        _G.AutoBuyChip = v
    end
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoBuyChip then
                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                    end
                end
            end
        end
    end)
end)

local ManualRaid = Raid:AddToggle("ManualRaid", {
    Title = "[ Auto ] Start",
    Description = "",
    Default = false,
    Callback = function(v)
        _G.Auto_StartRaid = v
    end
})

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if World2 then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif World3 then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)

local ManualKill = Raid:AddToggle("ManualKill", {
    Title = "[ Auto ] Kill",
    Description = "",
    Default = false,
    Callback = function(v)
        _G.Kill_Aura = v
    end
})

spawn(function()
    pcall(function() 
        while wait() do
            if _G.Kill_Aura then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            pcall(function()
                                repeat wait()
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                until not _G.Kill_Aura or not v.Parent or v.Humanoid.Health <= 0
                            end)
                        end
                    end
                end
            end
        end
    end)
end)

local ManualNextIsland = Raid:AddToggle("ManualNextIsland", {
    Title = "[ Auto Next ] Island",
    Description = "",
    Default = false,
    Callback = function(v)
        _G.Auto_Dungeon = v
        StopTween(_G.Auto_Dungeon)
    end
})

spawn(function()
    pcall(function()
        while wait() do
            if _G.Auto_Dungeon then
            local RaidPos = CFrame.new(0,25,0)
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*RaidPos)
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*RaidPos)
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*RaidPos)
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*RaidPos)
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*RaidPos)
                    end
                end
            end
        end
    end)
end)

local ManualAwaken = Raid:AddToggle("ManualAwaken", {
    Title = "[ Auto ] Awaken",
    Description = "",
    Default = false,
    Callback = function(v)
        _G.Awaken = v
    end
})

spawn(function()
    while wait() do
        if _G.Awaken then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end)
        end
    end
end)

_G.UnstoreFruitPrice = 1000000

local SelectPrice = Raid:AddSlider("SelectPrice", {
    Title = "Select Value",
    Description = "",
    Default = _G.UnstoreFruitPrice,
    Min = 0,
    Max = 10000000,
    Rounding = 1,
    Callback = function(value)
        _G.UnstoreFruitPrice = value
    end
})

local UnstoreRaid = Raid:AddToggle("UnstoreRaid", {
    Title = "[ Auto ] Unstore Fruit",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.UnstoreBadFruit = value
    end
})

function GetFruitsInfo()
    for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            return true
        end
    end
    for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            return true
        end
    end
    return false
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.UnstoreBadFruit then
                fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
                for i,v in pairs(fruit) do
                    if v["Price"] < _G.UnstoreFruitPrice then
                        if not GetFruitsInfo() then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                        end
                    end
                end
            end
        end)
    end
end)

if World2 or World3 then
Raid:AddSection("Teleport")
end
if World2 then
Raid:AddButton({
    Title = "Teleport to Lab",
    Description = "",
    Callback = function()
        topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
    end
})
end

if World3 then
Raid:AddButton({
    Title = "Teleport to Lab",
    Description = "",
    Callback = function()
        topos(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
    end
})
end

if World2 then
Raid:AddSection("Law Raid")
local AutoLaw = Raid:AddToggle("AutoLaw", {
    Title = "",
    Description = "",
    Default = false,
    Callback = function(state)
        _G.autoLawRaid = state
    end
})
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.autoLawRaid then
                        if
                            not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and
                                not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and
                                not game:GetService("Workspace").Enemies:FindFirstChild("Order") and
                                not game:GetService("ReplicatedStorage"):FindFirstChild("Order")
                         then
                            wait(0.3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "BlackbeardReward",
                                "Microchip",
                                "1"
                            )
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "BlackbeardReward",
                                "Microchip",
                                "2"
                            )
                        end
                    end
                end
            end
        )
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.4) do
                    if _G.autoLawRaid then
                        if
                            not game:GetService("Workspace").Enemies:FindFirstChild("Order") and
                                not game:GetService("ReplicatedStorage"):FindFirstChild("Order")
                         then
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip")
                             then
                                fireclickdetector(
                                    game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector
                                )
                            end
                        end
                        if
                            game:GetService("ReplicatedStorage"):FindFirstChild("Order") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Order")
                         then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                                for h, i in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if i.Name == "Order" then
                                        repeat task.wait(_G.FastAttackDelay)
                                            AttackNoCD()
                                            FastAttack = true
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            TP1(i.HumanoidRootPart.CFrame * pos)
                                            i.HumanoidRootPart.CanCollide = false
                                            i.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                        until not i.Parent or i.Humanoid.Health <= 0 or Auto_Law == false
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                                topos(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                            end
                        end
                    end
                end
            end
        )
    end
)
end

local TP = Window:AddTab({Title = "• Travel", Icon = "map-pin"})

TP:AddSection("World")

TP:AddButton({
    Title = "Teleport to First Sea",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})
TP:AddButton({
    Title = "Teleport to Second Sea",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})
TP:AddButton({
    Title = "Teleport to Third Sea",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})

TP:AddSection("Island")

if World1 then
    local TPIsland = TP:AddDropdown("TPIsland", {
        Title = "Select Island",
        Description = "",
        Values = {
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City",
            "Shank Room",
            "Mob Island"
        },
        Multi = false,
        Default = 1,
        Callback = function(value)
            _G.SelectIsland = value
        end
    })
end

if World2 then
    local TPIsland = TP:AddDropdown("TPIsland", {
        Title = "Select Island",
        Description = "",
        Values = {
            "The Cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Factory",
            "Colossuim",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island",
            "Mini Sky Island"
        },
        Multi = false,
        Default = 1,
        Callback = function(value)
            _G.SelectIsland = value
        end
    })
end

if World3 then
    local TPIsland = TP:AddDropdown("TPIsland", {
        Title = "Select Island",
        Description = "",
        Values = {
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "MiniSky", 
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Cocoa Island",
            "Candy Island",
            "Tiki Outpost"
            },
        Multi = false,
        Default = 1,
        Callback = function(value)
            _G.SelectIsland = value
        end
    })
end

local TPTIsland = TP:AddToggle("TPTIsland", {
    Title = "Teleport to Island",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.TeleportIsland = value
        if _G.TeleportIsland == true then
            repeat wait()
                if _G.SelectIsland == "WindMill" then
                    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                    topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                    topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif _G.SelectIsland == "Ice Castle" then
                    topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                elseif _G.SelectIsland == "MiniSky" then
                    topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                    topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
                elseif _G.SelectIsland == "Floating Turtle" then
                    topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                elseif _G.SelectIsland == "Haunted Castle" then
                    topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif _G.SelectIsland == "Cocoa Island" then
                    topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                elseif _G.SelectIsland == "Candy Island" then
                    topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                elseif _G.SelectIsland == "Tiki Outpost" then
                    topos(CFrame.new(-16218.6826, 9.08636189, 445.618408, -0.0610186495, 1.10512588e-09, -0.99813664, -1.83458475e-08, 1, 2.22871765e-09, 0.99813664, 1.84476558e-08, -0.0610186495))
                end
            until not _G.TeleportIsland
        end
        StopTween(_G.TeleportIsland)
    end
})

TP:AddSection("NPC")
if World1 then
local SelectNPC = TP:AddDropdown("SelectNPC", {
    Title = "Select NPC",
    Description = "",
    Values = {
        'Random Devil Fruit',
            'Blox Fruits Dealer',
            'Remove Devil Fruit',
            'Ability Teacher',
            'Dark Step', 
            'Electro',
            'Fishman Karate'
    },
    Multi = false,
    Default = 1,
    Callback = function(value)
        _G.SelectNPC = value
    end
})
end

if World2 then
    local SelectNPC = TP:AddDropdown("SelectNPC", {
        Title = "Select NPC",
        Description = "",
        Values = {
            'Dragon Breath',
            "Mysterious Man",
            'Mysterious Scientist',
            'Awakening Expert',
            'Nerd', 
            'Bar Manager',
            'Blox Fruits Dealer',
            'Trevor',
            'Enhancement Editor',
            'Pirate Recruiter',
            'Marines Recruiter',
            'Chemist',
            'Cyborg',
            'Ghoul Mark',
            'Guashiem',
            'El Admin',
            'El Rodolfo',
            'Arowe'
        },
        Multi = false,
        Default = 1,
        Callback = function(value)
            _G.SelectNPC = value
        end
    })
end
if World3 then
    local SelectNPC = TP:AddDropdown("SelectNPC", {
        Title = "Select NPC",
        Description = "",
        Values = {
            'Blox Fruits Dealer',
            'Remove Devil Fruit',
            'Horned Man',
            'Hungey Man',
            'Previous Hero', 
            'Butler',
            'Lunoven',
            'Trevor',
            'Elite Hunter',
            'Player Hunter',
            'Uzoth'
        },
        Multi = false,
        Default = 1,
        Callback = function(value)
            _G.SelectNPC = value
        end
    })
end

local TPNPC = TP:AddToggle("TPNPC", {
    Title = "Teleport to NPC",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.TeleportNPC = value
        if _G.TeleportNPC == true then
            repeat wait()
                if _G.SelectNPC == "Dragon Breath" then
                    topos(CFrame.new(703.372986, 186.985519, 654.522034, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Mysterious Man" then
                    topos(CFrame.new(-2574.43335, 1627.92371, -3739.35767, 0.378697902, -9.06400288e-09, 0.92552036, -8.95582009e-09, 1, 1.34578926e-08, -0.92552036, -1.33852689e-08, 0.378697902))
                elseif _G.SelectNPC == "Mysterious Scientist" then
                    topos(CFrame.new(-6437.87793, 250.645355, -4498.92773, 0.502376854, -1.01223634e-08, -0.864648759, 2.34106086e-08, 1, 1.89508653e-09, 0.864648759, -2.11940012e-08, 0.502376854))
                elseif _G.SelectNPC == "Awakening Expert" then
                    topos(CFrame.new(-408.098846, 16.0459061, 247.432846, 0.028394036, 6.17599138e-10, 0.999596894, -5.57905944e-09, 1, -4.59372484e-10, -0.999596894, -5.56376767e-09, 0.028394036))
                elseif _G.SelectNPC == "Nerd" then
                    topos(CFrame.new(-401.783722, 73.0859299, 262.306702, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Bar Manager" then
                    topos(CFrame.new(-385.84726, 73.0458984, 316.088806, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Blox Fruits Dealer" then
                    topos(CFrame.new(-450.725464, 73.0458984, 355.636902, -0.780352175, -2.7266168e-08, 0.625340283, 9.78516468e-09, 1, 5.58128797e-08, -0.625340283, 4.96727601e-08, -0.780352175))
                elseif _G.SelectNPC == "Trevor" then
                    topos(CFrame.new(-341.498322, 331.886444, 643.024963, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Plokster" then
                    topos( CFrame.new(-1885.16016, 88.3838196, -1912.28723, -0.513468027, 0, 0.858108759, 0, 1, 0, -0.858108759, 0, -0.513468027))
                elseif _G.SelectNPC == "Enhancement Editor" then
                    topos(CFrame.new(-346.820221, 72.9856339, 1194.36218, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Pirate Recruiter" then  
                    topos(CFrame.new(-428.072998, 72.9495239, 1445.32422, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Marines Recruiter" then
                    topos(CFrame.new(-1349.77295, 72.9853363, -1045.12964, 0.866493046, 0, -0.499189168, 0, 1, 0, 0.499189168, 0, 0.866493046))
                elseif _G.SelectNPC == "Chemist" then
                    topos( CFrame.new(-2777.45288, 72.9919434, -3572.25732, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Ghoul Mark" then
                    topos(CFrame.new(635.172546, 125.976357, 33219.832, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Cyborg" then
                    topos(CFrame.new(629.146851, 312.307373, -531.624146, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Guashiem" then
                    topos(CFrame.new(937.953003, 181.083359, 33277.9297, 1, -8.60126406e-08, 3.81773896e-17, 8.60126406e-08, 1, -1.89969598e-16, -3.8177373e-17, 1.89969598e-16, 1))
                elseif _G.SelectNPC == "El Admin" then
                    topos(CFrame.new(1322.80835, 126.345039, 33135.8789, 0.988783717, -8.69797603e-08, -0.149354503, 8.62223786e-08, 1, -1.15461916e-08, 0.149354503, -1.46101409e-09, 0.988783717))
                elseif _G.SelectNPC == "El Rodolfo" then
                    topos(CFrame.new(941.228699, 40.4686775, 32778.9922, -0.818029106, -1.19524382e-08, 0.575176775, -1.28741648e-08, 1, 2.47053866e-09, -0.575176775, -5.38394795e-09, -0.818029106))
                elseif _G.SelectNPC == "Arowe" then
                    topos(CFrame.new(-1994.51038, 125.519142, -72.2622986, -0.16715166, -6.55417338e-08, -0.985931218, -7.13315558e-08, 1, -5.43836585e-08, 0.985931218, 6.12376851e-08, -0.16715166))
                elseif _G.SelectNPC == "Random Devil Fruit" then
                    topos(CFrame.new(-1436.19727, 61.8777695, 4.75247526, -0.557794094, 2.74216543e-08, 0.829979479, 5.83273234e-08, 1, 6.16037932e-09, -0.829979479, 5.18467118e-08, -0.557794094))
                elseif _G.SelectNPC == "Blox Fruits Dealer" then
                    topos(CFrame.new(-923.255066, 7.67800522, 1608.61011, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Remove Devil Fruit" then
                    topos(CFrame.new(5664.80469, 64.677681, 867.85907, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Ability Teacher" then
                    topos(CFrame.new(-1057.67822, 9.65220833, 1799.49146, -0.865874112, -9.26330159e-08, 0.500262439, -7.33759435e-08, 1, 5.816689e-08, -0.500262439, 1.36579752e-08, -0.865874112))
                elseif _G.SelectNPC == "Dark Step" then
                    topos( CFrame.new(-987.873047, 13.7778397, 3989.4978, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Electro" then
                    topos(CFrame.new(-5389.49561, 13.283, -2149.80151, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Fishman Karate" then
                    topos( CFrame.new(61581.8047, 18.8965912, 987.832703, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Random Devil Fruit" then
                    topos(CFrame.new(-12491, 337, -7449))
                elseif _G.SelectNPC == "Blox Fruits Dealer" then
                    topos(CFrame.new(-12511, 337, -7448))
                elseif _G.SelectNPC == "Remove Devil Fruit" then
                    topos(CFrame.new(-5571, 1089, -2661))
                elseif _G.SelectNPC == "Horned Man" then
                    topos(CFrame.new(-11890, 931, -8760))
                elseif _G.SelectNPC == "Hungey Man" then
                    topos(CFrame.new(-10919, 624, -10268))
                elseif _G.SelectNPC == "Previous Hero" then
                    topos(CFrame.new(-10368, 332, -10128))
                elseif _G.SelectNPC == "Butler" then
                    topos(CFrame.new(-5125, 316, -3130))
                elseif _G.SelectNPC == "Lunoven" then
                    topos(CFrame.new(-5117, 316, -3093))
                elseif _G.SelectNPC == "Elite Hunter" then
                    topos(CFrame.new(-5420, 314, -2828))
                elseif _G.SelectNPC == "Player Hunter" then
                    topos(CFrame.new(-5559, 314, -2840))
                elseif _G.SelectNPC == "Uzoth" then
                    topos(CFrame.new(-9785, 852, 6667))
                end
            until not _G.TeleportNPC
        end
        StopTween(_G.TeleportNPC)
    end
})

TP:AddSection("Job ID")
local JobAiDee = TP:AddParagraph({Title = "Server Job ID", Content = ""})
spawn(function()
    while wait() do
        pcall(function()
            JobAiDee:SetDesc(""..game.JobId)
        end)
    end
end)
TP:AddButton({
    Title = "Copy Server Job ID",
    Description = "",
    Callback = function()
        setclipboard(tostring(game.JobId))
    end
})
local JobId = TP:AddInput("JobId", {
    Title = "Job Id",
    Default = "",
    Placeholder = "Paste Job Id",
    Numeric = false,
    Finished = false,
    Callback = function(value)
        _G.Job = value
    end
})
TP:AddButton({
    Title = "Join Server",
    Description = "",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
    end
})


local Shop = Window:AddTab({Title = "Shop", Icon = "shopping-cart"})

Shop:AddSection("Abilities")
local AbilityList = {'Geppo', 'Buso Haki', 'Soru', 'Observation Haki'}
local BuyAbility = Shop:AddDropdown("BuyAbility", {
    Title = "Select Ability",
    Description = "",
    Values = AbilityList,
    Multi = false,
    Default = 1,
    Callback = function(value)
        _G.BuyAbility = value
    end
})
Shop:AddButton({
    Title = "Buy Abilities",
    Description = "",
    Callback = function(value)
        if _G.BuyAbility == "Geppo" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
        elseif _G.BuyAbility == "Buso Haki" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
        elseif _G.BuyAbility == "Soru" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
        elseif _G.BuyAbility == "Observation Haki" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
        end
    end
})

Shop:AddSection("Fighting Styles")

local BuyFightSe = {'Black Leg','Electro', 'Water Kung Fu', 'Dragon Claw', 'Death Step', 'Sharkman Karate', 'Electric Claw', 'Dragon Talon', 'Superhuman', 'God Human', 'Sanguine Art'}
local BuyFight = Shop:AddDropdown("BuyFight", {
    Title = "Select Fighting",
    Description = "",
    Values = BuyFightSe,
    Multi = false,
    Default = 1,
    Callback = function(value)
        _G.BuyFighting = value
    end
})

Shop:AddButton({
    Title = "Buy Fighting Style",
    Description = "",
    Callback = function(value)
        if _G.BuyFighting == "Black Leg" then
            wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
elseif _G.BuyFighting == "Electro" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
elseif _G.BuyFighting == "Water Kung Fu" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
elseif _G.BuyFighting == "Dragon Claw" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
elseif _G.BuyFighting == "Death Step" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
elseif _G.BuyFighting == "Sharkman Karate" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
elseif _G.BuyFighting == "Electric Claw" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
elseif _G.BuyFighting == "Dragon Talon" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
elseif _G.BuyFighting == "Superhuman" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
elseif _G.BuyFighting == "God Human" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
elseif _G.BuyFighting == "Sanguine Art" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
end
    end
})

Shop:AddSection("Swords")

local SwordList = {'Cutlass', 'Katana', 'Iron Mace', 'Dual Katana', 'Triple Katana', 'Pipe', 'Dual-Headed Blade', 'Bisento', 'Soul Cane', 'Pole v.2'}

local BuySwordSE = Shop:AddDropdown("BuySwordSE", {
    Title = "Select Sword",
    Description = "",
    Values = SwordList,
    Multi = false,
    Default = 1,
    Callback = function(value)
        _G.BuySwordSE = value
    end
})

Shop:AddButton({
    Title = "Buy Sword",
    Description  = "",
    Default = false,
    Callback = function()
        if _G.BuySwordSE == "Cutlass" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
        elseif _G.BuySwordSE == "Katana" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
        elseif _G.BuySwordSE == "Iron Mace" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
        elseif _G.BuySwordSE == "Dual Katana" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
        elseif _G.BuySwordSE == "Triple Katana" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
        elseif _G.BuySwordSE == "Pipe" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
        elseif _G.BuySwordSE == "Dual-Headed Blade" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
        elseif _G.BuySwordSE == "Bisento" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
        elseif _G.BuySwordSE == "Soul Cane" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
        elseif _G.BuySwordSE == "Pole v.2" then
            wait(0.5)
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
        end
 
    end
})

Shop:AddSection("Guns")

local GunList = {'Slingshot', 'Musket', 'Flintlock', 'Refined Slingshot', 'Refined Flintlock', 'Cannon', 'Kabucha', 'Bizarre Rifle'}

local GunSelect = Shop:AddDropdown("GunSelect", {
    Title = "Select Gun",
    Description = "",
    Values = GunList,
    Multi = false,
    Default = 1,
    Callback = function(value)
        _G.GunSelect = value
    end
})

Shop:AddButton({
    Title = "Buy Gun",
    Description = "",
    Callback = function()
        if _G.GunSelect == "Slingshot" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
        elseif _G.GunSelect == "Musket" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
        elseif _G.GunSelect == "Flintlock" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
        elseif _G.GunSelect == "Refined Slingshot" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
        elseif _G.GunSelect == "Refined Flintlock" then
        wait(0.5)
            local args = {
                [1] = "BuyItem",
                [2] = "Refined Flintlock"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        elseif _G.GunSelect == "Cannon" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
        elseif _G.GunSelect == "Kabucha" then
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
        elseif _G.GunSelect == "Bizarre Rifle" then
            wait(0.5)
            local A_1 = "Ectoplasm"
            local A_2 = "Buy"
            local A_3 = 1
            local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
            Event:InvokeServer(A_1, A_2, A_3) 
        end
    end})

Shop:AddSection("Accessories")
local AccessoriesList = {'Black Cape', 'Swordsman Hat', 'Tomoe Ring'}

local BuyAccessories = Shop:AddDropdown("BuyAcccessories", {
    Title = "Select Accessory", 
    Description = "",
    Values = AccessoriesList,
    Multi = false,
    Default = 1,
    Callback = function(value)
        _G.BuyAccessories = value
    end
})

Shop:AddButton({
    Title = "Buy Accessory", 
    Description = "",
    Callback = function()
        if _G.BuyAccessories == "Black Cape" then
            local args = {
                [1] = "BuyItem",
                [2] = "Black Cape"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        elseif _G.BuyAccessories == "Swordsman Hat" then
            local args = {
                [1] = "BuyItem",
                [2] = "Swordsman Hat"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        elseif _G.BuyAccessories == "Tomoe Ring" then
            local args = {
                [1] = "BuyItem",
                [2] = "Tomoe Ring"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
})




    Shop:AddSection("Others")

    local CheckShishui = Shop:AddParagraph({Title = "Shisui [ Status ] ", Content = "[ Locked ]"})
    local CheckSaddi = Shop:AddParagraph({Title = "Saddi [ Status ] ", Content = "[ Locked ]"})
    local CheckWando = Shop:AddParagraph({Title = "Wando [ Status ] ", Content = "[ Locked ]"})
    spawn(function()
        while task.wait() do
        pcall(function()
          for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
          if v.Name == "Shisui" then
                CheckShishui:SetDesc("[ Unlocked ]")
          end
          if v.Name == "Saddi" then
                CheckSaddi:SetDesc("[ Unlocked ]")
          end
          if v.Name == "Wando" then
                CheckWando:SetDesc("[ Unlocked ]")
          end
        end
    end)
end
end)

    local BuyLengendSword = Shop:AddToggle("BuyLengendSword", {
        Title = "Buy Lengend Sword",
        Description = "",
        Default = false,
        Callback = function(value)
        _G.BuyLengendSword = value
end   
})
task.spawn(function()
    while wait() do
    pcall(function()
      if _G.BuyLengendSword then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
        end
      end)
    end
end)

local CheckTTK = Shop:AddParagraph({Title = "True Triple Katana [ Status ] ", Content = "[ Locked ]"})
spawn(function()
    while task.wait() do
    pcall(function()
      for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
      if v.Name == "True Triple Katana" then
        CheckTTK:SetTitle("[ Unlocked ]")
      end
      end
    end)
    end
end)

    local BuyTTK = Shop:AddToggle("BuyTTK", {
        Title = "Buy True Triple Katana",
        Description = "",
        Default = false,
        Callback = function(value)
        _G.BuyTTK = value
end   
})

task.spawn(function()
    while wait() do
    pcall(function()
      if _G.BuyTTK then
      local A_1 = "MysteriousMan"
      local A_2 = "2"
      local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
            Event:InvokeServer(A_1, A_2)
        end
      end)
    end
end)


local Fruit = Window:AddTab({Title = "• Devils Fruits", Icon = "apple"})

Fruit:AddSection("Fruits")

local AutoRandomFruit = Fruit:AddToggle("AutoRandomFruit", {
    Title = "Auto Random Fruit",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.Random_Auto = value
    end
})
task.spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.Random_Auto then
                local Event = game:GetService("ReplicatedStorage").Remotes.CommF_
                if Event then
                    Event:InvokeServer("Cousin", "Buy")
                else
                    warn("CommF_ RemoteEvent not found.")
                end
            end
        end) 
    end
end)
Fruit:AddButton({
    Title = "Random Fruit",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end
})

Fruit:AddButton({
    Title = "Open Fruit Dealer [Normal]",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
})

Fruit:AddButton({
    Title = "Open Fruit Dealer [Advanced]",
    Description = "",
    Callback = function()
        local function StartDialog(DialogName)
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local DialogueController = require(ReplicatedStorage.DialogueController)
            local DialoguesList = require(ReplicatedStorage.DialoguesList)
            
            for Index,Dialog in pairs(DialoguesList) do
              if tostring(Index) == DialogName then
                DialogueController.Start(DialogueController, Dialog)
              end
            end
          end
          
          StartDialog("FruitShop2")
    end
})

local RarityFruits = {
    ["Common"] = {
        "Rocket Fruit",
        "Spin Fruit",
        "Chop Fruit",
        "Spring Fruit",
        "Bomb Fruit",
        "Smoke Fruit",
        "Spike Fruit"
    },
    ["Uncommon"] = {
        "Flame Fruit",
        "Falcon Fruit",
        "Ice Fruit",
        "Sand Fruit",
        "Diamond Fruit",
        "Dark Fruit"
    },
    ["Rare"] = {
        "Light Fruit",
        "Rubber Fruit",
        "Barrier Fruit",
        "Ghost Fruit",
        "Magma Fruit"
    },
    ["Legendary"] = {
        "Quake Fruit",
        "Budha Fruit",
        "Love Fruit",
        "Spider Fruit",
        "Sound Fruit",
        "Phoenix Fruit",
        "Portal Fruit",
        "Rumble Fruit",
        "Pain Fruit",
        "Blizzard Fruit",
    },
    ["Mythical"] = {
        "Gravity Fruit",
        "Mammoth Fruit",
        "T-Rex Fruit",
        "Dough Fruit",
        "Shadow Fruit",
        "Venom Fruit",
        "Control Fruit",
        "Spirit Fruit",
        "Dragon Fruit",
        "Leopard Fruit",
        "Kitsune Fruit",
    }
}

local SelectRarityFruits = {
    "Common - Mythical",
    "Uncommon - Mythical",
    "Rare - Mythical",
    "Legendary - Mythical",
    "Mythical"
}

local ResultUnstoreFruits = {}
SetRarityFruits = "Common - Mythical"
local SelectRarity = Fruit:AddDropdown("SelectRarity", {
    Title = "Select Fruit Rarity",
    Description = "",
    Values = SelectRarityFruits,
    Multi = false,
    Default = SetRarityFruits,
    Callback = function(value)
        SetRarityFruits = value
    end
})

function CheckFruits()
    for i, v in pairs(RarityFruits) do
        if SetRarityFruits == "Common - Mythical" then
            if i == "Common" or i == "Uncommon" or i == "Rare" or i == "Legendary" or i == "Mythical" then
                for _, fruit in ipairs(v) do
                    table.insert(ResultStoreFruits, fruit)
                end
            end
        elseif SetRarityFruits == "Uncommon - Mythical" then
            if i == "Uncommon" or i == "Rare" or i == "Legendary" or i == "Mythical" then
                for _, fruit in ipairs(v) do
                    table.insert(ResultStoreFruits, fruit)
                end
            end
        elseif SetRarityFruits == "Rare - Mythical" then
            if i == "Rare" or i == "Legendary" or i == "Mythical" then
                for _, fruit in ipairs(v) do
                    table.insert(ResultStoreFruits, fruit)
                end
            end
        elseif SetRarityFruits == "Legendary - Mythical" then
            if i == "Legendary" or i == "Mythical" then
                for _, fruit in ipairs(v) do
                    table.insert(ResultStoreFruits, fruit)
                end
            end
        elseif SetRarityFruits == "Mythical" then
            if i == "Mythical" then
                for _, fruit in ipairs(v) do
                    table.insert(ResultStoreFruits, fruit)
                end
            end
        end
    end  
end

local AutoStoreFruit = Fruit:AddToggle("AutoStoreFruit", {
    Title = "Auto Store Fruit",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.AutoStoreFruit = value
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoStoreFruit then
                for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        ResultStoreFruits = {}
                        CheckFruits()
                        for z, Res in pairs(ResultStoreFruits) do
                        if v.Name == Res then
                            local NameFruit = v.Name
                            local FirstNameFruit = string.gsub(v.Name, " Fruit", "")
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit) then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",FirstNameFruit.."-"..FirstNameFruit,game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit))
                            end
                        end
                        end
                    end
                end
            end
        end)
    end
end)

local FruitNotify = Fruit:AddToggle("FruitNotify", {
    Title = "Fruit Notifier",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.FruitCheck = value
    end
})

spawn(function()
    while wait(1) do
        if _G.FruitCheck then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    XSeaH:Notify({
                        Title = "X-Sea Hub",
                        Content = "Fruit Notification",
                        SubContent = "Fruit : "..v.Name, 
                        Duration = 5
                    })
                end
            end
        end
    end
end)

local BypassTPFruit = Fruit:AddToggle("BypassTPFruit", {
    Title = "Bypass Teleport to Fruit",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.Grabfruit = value
    end
})
spawn(function()
    while wait(.1) do
        if _G.Grabfruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                end
            end
        end
   end
end)

local TweenTPFruit = Fruit:AddToggle("TweenTPFruit", {
    Title = "Tween Teleport to Fruit",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.Tweenfruit = value
        StopTween(_G.Tweenfruit)
    end
})

spawn(function()
    while wait(.1) do
        if _G.Tweenfruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    topos(v.Handle.CFrame)
                end
            end
        end
    end
end)

Fruit:AddButton({
    Title = "Grab All Fruit",
    Description = "Risk getting kick",
    Callback = function()
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v:IsA("Tool") then
                v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end	
    end
})

Fruit:AddSection("Visual")
 Fruit:AddButton({
    Title = "Rain Fruit",
    Description = "",
    Callback = function()
        for h, i in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
            i.Parent = game.Workspace.Map
            i:MoveTo(
                game.Players.LocalPlayer.Character.PrimaryPart.Position +
                    Vector3.new(math.random(-50, 50), 100, math.random(-50, 50))
            )
            if i.Fruit:FindFirstChild("AnimationController") then
                i.Fruit:FindFirstChild("AnimationController"):LoadAnimation(i.Fruit:FindFirstChild("Idle")):Play()
            end
            i.Handle.Touched:Connect(
                function(cR)
                    if cR.Parent == game.Players.LocalPlayer.Character then
                        i.Parent = game.Players.LocalPlayer.Backpack
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(i)
                    end
                end
            )
        end
    end
 })

 Fruit:AddSection("Mirage Stock")

 local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage.Remotes
local Event = Remotes["CommF_"]
local result = Event:InvokeServer("GetFruits", true)
local fruitsOnSale = {}

local function addCommas(number)
    local formatted = tostring(number)
    while true do  
        formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", '%1,%2')
        if k == 0 then break end
    end
    return formatted
end

for _, fruitData in pairs(result) do
    if fruitData["OnSale"] == true then
        local priceWithCommas = addCommas(fruitData["Price"])
        local fruitInfo = fruitData["Name"] .. " - $" .. priceWithCommas
        table.insert(fruitsOnSale, fruitInfo)
        Fruit:AddParagraph({Title = tostring(fruitInfo), Content = ""})
    end
end

local Misc = Window:AddTab({Title = "• Misc", Icon = "puzzle"})

Misc:AddSection("Team")
Misc:AddButton({
    Title = "Join Pirates Team",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
    end
})
Misc:AddButton({
    Title = "Join Marines Team",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
    end
})

Misc:AddSection("Menu")
Misc:AddButton({
    Title = "Open Title Name",
    Description = "",
    Callback = function()
        local args = {
            [1] = "getTitles"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end
})

Misc:AddButton({
    Title = "Open Haki",
    Description = "",
    Callback = function()
        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end
})
Misc:AddButton({
    Title = "Open Awakenings Expert",
    Description = "",
    Callback = function()
        game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
    end
})

Misc:AddSection("Highlight")

local HideChat = Misc:AddToggle("HideChat", {
    Title = "Hide Chat", 
    Description = "",
    Default = false,
    Callback = function(value)
        _G.chat = value
        if _G.chat == true then
        local StarterGui = game:GetService('StarterGui')
                StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)    
            elseif _G.chat == false then
        local StarterGui = game:GetService('StarterGui')
                    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)    
        end
    end
})

local HideLeaderBoard = Misc:AddToggle("HideLeaderBoard", {
    Title = "Hide LeaderBoard", 
    Description = "",
    Default = false,
    Callback = function(value)
        _G.leaderboard = value
    if _G.leaderboard == true then
    local StarterGui = game:GetService('StarterGui')
            game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)   
elseif _G.leaderboard == false then
    local StarterGui = game:GetService('StarterGui')
            game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)   
        end
    end
})

Window:SelectTab(1)
        XSeaH:Notify({
            Title = "X-Sea Hub",
            Content = "Update 1.25",
            SubContent = "", 
            Duration = 3
        })
