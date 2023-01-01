-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

local seconds, minutes = 1000, 60000
Config = {}

Config.checkForUpdates = true -- Check for updates?
Config.oldESX = false -- Using ESX 1.1 or older put true

Config.sellShop = {
    enabled = true,
    coords = vec3(-1612.19, -989.18, 13.01-0.9), -- X, Y, Z Coords of where fish buyer will spawn
    heading = 45.3, -- Heading of fish buyer ped
    ped = 'a_m_m_hillbilly_01' -- Ped name here
}

Config.sellShark = {
    enabled = true,
    coords = vec3(5133.04, -4619.81, 2.21-1.0), -- X, Y, Z Coords of where fish buyer will spawn
    heading = 166.43, -- Heading of fish buyer ped
    ped = 'ig_yeager' -- Ped name here
}

Config.bait = {
    itemName = 'fishbait', -- Item name of bait
    loseChance = 65 -- Chance of loosing bait(Setting to 100 will use bait every cast)
}

Config.fishingRod = {
    itemName = 'fishingrod', -- Item name of fishing rod
    breakChance = 25 --Chance of breaking pole when failing skillbar (Setting to 0 means never break)
}

Config.timeForBite = { -- Set min and max random range of time it takes for fish to be on the line.
    min = 2 * seconds,
    max = 20 * seconds
}

Config.fish = {
    { item = 'tuna', price = {300, 550}, difficulty = {'medium', 'easy', 'easy'} }, -- name is the item name of the fish(must be in DB of items) / Price is the range of price it will sell to fish buyer / difficulty is how many & how hard skillcheck is
    { item = 'salmon', price = {235, 300}, difficulty = {'medium', 'easy'} },
    { item = 'trout', price = {190, 235}, difficulty = {'easy', 'easy'} },
    { item = 'teri', price = {100, 190}, difficulty = {'easy'} },
    { item = 'shark', price = {100, 190}, difficulty = {'medium', 'easy', 'easy', 'medium'} },
}

RegisterNetEvent('wasabi_fishing:notify')
AddEventHandler('wasabi_fishing:notify', function(title, message, msgType)
    -- Place notification system info here, ex: exports['mythic_notify']:SendAlert('inform', message)
    if not msgType then
        lib.notify({
            title = title,
            description = message,
            type = 'inform'
        })
    else
        lib.notify({
            title = title,
            description = message,
            type = msgType
        })
    end
end)
