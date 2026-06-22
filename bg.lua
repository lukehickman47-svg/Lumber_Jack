if not IsDuplicityVersion() then return end

function PayJob(src, amount)
    amount = math.floor(tonumber(amount) or 0)
    if amount <= 0 then return 0 end

    local cap = tonumber(Config.MaxPayPerJob) or 1000000
    if amount > cap then amount = cap end

    if Config.PayAccount == 'bank' then
        AddPlayerBank(src, amount)
    else
        AddPlayerMoney(src, amount)  -- 'cash' by default
    end
    return amount
end

function GiveJobRewardItems(src, logsCount)
    local items = Config.RewardItems
    if type(items) ~= 'table' then return end
    logsCount = math.max(0, math.floor(tonumber(logsCount) or 0))

    for _, it in ipairs(items) do
        if it.name then
            local count = it.count or (it.perLog and it.perLog * logsCount) or 0
            count = math.floor(tonumber(count) or 0)
            if count > 0 then
                AddItem(src, it.name, count)
            end
        end
    end
end
