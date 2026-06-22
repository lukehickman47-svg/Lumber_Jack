local lastPress = 0

function PressE(cooldown)
    cooldown = cooldown or 1000

    if not IsControlJustPressed(0, 51) then
        return false
    end

    local now = GetGameTimer()

    if now - lastPress < cooldown then
        return false
    end

    local ped = PlayerPedId()

    if IsEntityDead(ped) then
        return false
    end
    if IsPedInAnyVehicle(ped, false) then
        return false
    end
    if IsPedRagdoll(ped) then
        return false
    end
    if IsPedFalling(ped) then
        return false
    end
    if IsPedSwimming(ped) then
        return false
    end

    lastPress = now
    return true
end

function CreateOptimizedPed(data)
    if not data or not data.model or not data.coords then
        print("CreateOptimizedPed: datos inválidos")
        return nil
    end

    local model = type(data.model) == "string" and joaat(data.model) or data.model

    if not IsModelInCdimage(model) then
        print("Modelo no válido:", data.model)
        return nil
    end

    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end

    local ped = CreatePed(4, model, data.coords.x, data.coords.y, data.coords.z, data.coords.w,
        data.networked ~= false, true)

    if not DoesEntityExist(ped) then
        print("Error creando ped")
        return nil
    end

    SetEntityAsMissionEntity(ped, true, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetPedCanRagdoll(ped, false)
    SetEntityInvincible(ped, data.invincible ~= false)

    if data.freeze ~= false then
        FreezeEntityPosition(ped, true)
    end

    SetModelAsNoLongerNeeded(model)
    if data.anim and #data.anim == 2 then
        local dict, anim = data.anim[1], data.anim[2]
        RequestAnimDict(dict)
        while not HasAnimDictLoaded(dict) do
            Wait(0)
        end
        TaskPlayAnim(ped, dict, anim, 8.0, -8.0, -1, 1, 0, false, false, false)
    end

    return ped
end

function look_npc(npc)
    local pedcoord = GetEntityCoords(PlayerPedId())
    FreezeEntityPosition(npc, false)
    Wait(1)
    TaskTurnPedToFaceCoord(PlayerPedId(), GetEntityCoords(npc), 1000)
    TaskTurnPedToFaceCoord(npc, pedcoord, 1000)
    Wait(1000)
    FreezeEntityPosition(npc, true)
end

function zoom(npc)
    local fov_max = 90.0
    local fov_min = 1.0
    local fov = (fov_max + fov_min) * 0.5
    local px, py, pz = table.unpack(GetEntityCoords(npc, true))
    local x, y, z = px + GetEntityForwardX(npc) * 0.6, py + GetEntityForwardY(npc) * 0.6, pz + 0.62
    camCoords = vector3(x, y, z)
    local rx = GetEntityRotation(npc, 2)
    camRotation = rx + vector3(0.0, 0.0, 181)
    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", camCoords, camRotation, GetGameplayCamFov())
    SetCamUseShallowDofMode(cam, true)
    SetCamNearDof(cam, 0.2)
    SetCamFarDof(cam, 5.0)
    SetCamDofStrength(cam, 1.0)
    SetCamFov(cam, fov)
    SetCamActive(cam, true)
    RenderScriptCams(true, true, 1000, true, false)
    Wait(1000)
    SetNuiFocus(true, true)
end

function unzoom()
    RenderScriptCams(false, true, 1000, true, false)
    if cam then
        DestroyCam(cam, false)
        cam = nil
    end
end