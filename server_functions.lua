-- ═══════════════════════════════════════════════════════
-- HELP PROMPTS (on-screen prompts like "Press E")
-- Uses GTA's native help text by default. You can replace it
-- with ox_lib or another system, but note it is called every frame
-- while the player is in range (not a single show/hide call).
-- ═══════════════════════════════════════════════════════
function ShowHelpText(text)
    if UseTarget and UseTarget() then return end
    SetTextComponentFormat('STRING')
    AddTextComponentSubstringPlayerName(text)
    DisplayHelpTextFromStringLabel(0, false, true, -1)
end

-- ═══════════════════════════════════════════════════════
-- VEHICLE HOOKS (stubs in case no framework is loaded)
-- Overridden by editable/esx|qb/editable_client.lua.
-- ═══════════════════════════════════════════════════════
if JobVehicleSpawned == nil then
    function JobVehicleSpawned(vehicle)
        if vehicle and DoesEntityExist(vehicle) then SetVehicleFuelLevel(vehicle, 100.0) end
    end
end
if JobVehicleRemoved == nil then
    function JobVehicleRemoved(vehicle) end
end
