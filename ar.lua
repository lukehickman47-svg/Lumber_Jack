if Config.Framework ~= 'qb' then
    return
end

-- ═══════ QB-CORE FRAMEWORK BRIDGE ═══════

local QBCore = exports['qb-core']:GetCoreObject()

function GetPlayerIdentifier(src)
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return nil end
    return Player.PlayerData.citizenid
end

function GetPlayerMoney(src)
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return 0 end
    return Player.PlayerData.money['cash'] or 0
end

function RemovePlayerMoney(src, amount)
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return false end
    if (Player.PlayerData.money['cash'] or 0) < amount then return false end
    Player.Functions.RemoveMoney('cash', amount)
    return true
end

function AddPlayerMoney(src, amount)
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.AddMoney('cash', amount)
end

function RemovePlayerBank(src, amount)
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return false end
    if (Player.PlayerData.money['bank'] or 0) < amount then return false end
    Player.Functions.RemoveMoney('bank', amount)
    return true
end

function AddPlayerBank(src, amount)
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.AddMoney('bank', amount)
end

function AddItem(src, item, count)
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.AddItem(item, count)
end

function RemoveItem(src, item, count)
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return false end
    if Player.Functions.GetItemByName(item) then
        Player.Functions.RemoveItem(item, count)
        return true
    end
    return false
end

function GetItemCount(src, item)
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return 0 end
    local inv = Player.Functions.GetItemByName(item)
    return inv and inv.amount or 0
end

function GetPlayerJob(src)
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return nil end
    return Player.PlayerData.job and Player.PlayerData.job.name or nil
end