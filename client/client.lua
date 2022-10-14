QBCore = exports['qb-core']:GetCoreObject()

local inStash = false

RegisterNetEvent("qb-zombielocker:client:openStash", function()
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "SafetyCamp_"..QBCore.Functions.GetPlayerData().citizenid)
    TriggerEvent("inventory:client:SetCurrentStash", "SafetyCamp_"..QBCore.Functions.GetPlayerData().citizenid)
end)

local function stash()
    CreateThread(function()
        while true do
            Wait(0)
            if inStash then
                if IsControlJustReleased(0, 38) then
                    TriggerServerEvent("inventory:server:OpenInventory", "stash", "SafetyCamp_"..QBCore.Functions.GetPlayerData().citizenid)
                    TriggerEvent("inventory:client:SetCurrentStash", "SafetyCamp_"..QBCore.Functions.GetPlayerData().citizenid)
                    break
                end
            else
                break
            end
        end
    end)
end

local stashAreas = {}
for _, v in pairs(Config.Locations["stash"]) do
    stashAreas[#stashAreas+1] = BoxZone:Create(
        vector3(vector3(v.x, v.y, v.z)), 1.5, 1.5, {
        name="box_zone",
        debugPoly = false,
        minZ = v.z - 1,
        maxZ = v.z + 1,
    })
end

local stashArea = ComboZone:Create(stashAreas, {name = "stashCombo", debugPoly = false})
stashArea:onPlayerInOut(function(isPointInside, _, _)
    if isPointInside then
        inStash = true
        exports['qb-core']:DrawText(Lang:t('info.stash_enter'), 'left')
        stash()
    else
        exports['qb-core']:HideText()
        inStash = false
    end
end)