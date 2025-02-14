-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

showHelp = function(msg)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, -1)
end

waterCheck = function()
    local headPos = GetPedBoneCoords(cache.ped, 31086, 0.0, 0.0, 0.0)
    local offsetPos = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 50.0, -25.0)
    local water, waterPos = TestProbeAgainstWater(headPos.x, headPos.y, headPos.z, offsetPos.x, offsetPos.y, offsetPos.z)
    return water, waterPos
end

createBlip = function(coords, sprite, colour, text, scale)
    local blip = AddBlipForCoord(coords)
    SetBlipSprite(blip, sprite)
    SetBlipColour(blip, colour)
    SetBlipAsShortRange(blip, true)
    SetBlipScale(blip, scale)
	AddTextEntry(text, text)
	BeginTextCommandSetBlipName(text)
	EndTextCommandSetBlipName(blip)
    return blip
end

tryFish = function(data)
    TriggerServerEvent('wasabi_fishing:tryFish', data)
end

FishingSellItems = function()
	TriggerServerEvent('wasabi_fishing:sellFish')
end

FishingSellShark = function()
    local ped = PlayerPedId()
    local playerCoords = GetEntityCoords(ped)
	TriggerServerEvent('wasabi_fishing:sellShark')
    if math.random(1, 100) < 50 then -- 50% change to call cops.
        TriggerServerEvent('esx_outlawalert:sellSharkInProgress', {
            x = ESX.Math.Round(playerCoords.x, 1),
            y = ESX.Math.Round(playerCoords.y, 1),
            z = ESX.Math.Round(playerCoords.z, 1)
        }, streetName, playerGender)
    end
end
