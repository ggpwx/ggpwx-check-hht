--  _______   ______ ____    __    ____  ______   ___   ___ 
-- /  _____| /  ____|\   \  /  \  /   / |   _  \  \  \ /  / 
--|  |  __  |  |  __  \   \/    \/   /  |  |_)  |  \  V  /  
--|  | |_ | |  | |_ |  \            /   |   ___/    >   <   
--|  |__| | |  |__| |   \    /\    /    |  |       /  .  \  
-- \______|  \______|    \__/  \__/     |__|      /__/ \__\ 
--=========================================================
--      JOIN DISCORD : discord.gg/fsyxppyr8W6
--=========================================================

Config = {}

-- Choose the notification method: 'qbcore', 'okokNotify', 'mythic', 'custom'
Config.NotificationType = 'qbcore'

-- Thresholds for notifications
Config.HealthThreshold = 99 -- Health below 25%
Config.HungerThreshold = 99 -- Hunger below 30%
Config.ThirstThreshold = 99 -- Thirst below 30%

-- Check interval (in milliseconds)
Config.CheckInterval = 10000 -- 1 minute (60000 ms)

-- Notifications
Config.Notifications = {
    HealthLow = "Your health is critically low!",
    HungerLow = "You are feeling very hungry!",
    ThirstLow = "You are feeling very thirsty!",
    HealthAndHungerLow = "Your health and hunger are critically low!",
    HealthAndThirstLow = "Your health and thirst are critically low!",
    HungerAndThirstLow = "Your hunger and thirst are critically low!",
    AllLow = "You are critically low on health, food, and water!"
}
