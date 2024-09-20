
local QBCore = exports['qb-core']:GetCoreObject()
local hunger, thirst = 100, 100
local function sendNotification(message)
    if Config.NotificationType == 'qbcore' then
        QBCore.Functions.Notify(message, 'error', 5000)
    elseif Config.NotificationType == 'okokNotify' then
        exports['okokNotify']:Alert('Notification', message, 5000, 'error')
    elseif Config.NotificationType == 'mythic' then
        exports['mythic_notify']:DoHudText('error', message)
    elseif Config.NotificationType == 'custom' then
        TriggerEvent('qb-notify:sendNotify', 69, message, 5000)
    end
end

CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local health = GetEntityHealth(playerPed) - 100 
        hunger = QBCore.Functions.GetPlayerData().metadata['hunger']
        thirst = QBCore.Functions.GetPlayerData().metadata['thirst']
        local isHealthLow = health < Config.HealthThreshold
        local isHungerLow = hunger < Config.HungerThreshold
        local isThirstLow = thirst < Config.ThirstThreshold
        if isHealthLow and isHungerLow and isThirstLow then
            sendNotification(Config.Notifications.AllLow)
        elseif isHealthLow and isHungerLow then
            sendNotification(Config.Notifications.HealthAndHungerLow)
        elseif isHealthLow and isThirstLow then
            sendNotification(Config.Notifications.HealthAndThirstLow)
        elseif isHungerLow and isThirstLow then
            sendNotification(Config.Notifications.HungerAndThirstLow)
        elseif isHealthLow then
            sendNotification(Config.Notifications.HealthLow)
        elseif isHungerLow then
            sendNotification(Config.Notifications.HungerLow)
        elseif isThirstLow then
            sendNotification(Config.Notifications.ThirstLow)
        end
        Wait(Config.CheckInterval) 
    end
end)
