-- ═══════════════════════════════════════════════════════════
-- Target System Bridge - Auto-detects ox_target / qb-target / qtarget
-- ═══════════════════════════════════════════════════════════

local function DetectTarget()
    local cfg = Config.TargetSystem or 'auto'
    if cfg ~= 'auto' then
        if cfg == 'none' then return 'none' end
        if GetResourceState(cfg) == 'started' then return cfg end
        return 'none'
    end
    if GetResourceState('ox_target') == 'started' then return 'ox_target' end
    if GetResourceState('qb-target') == 'started' then return 'qb-target' end
    if GetResourceState('qtarget') == 'started' then return 'qtarget' end
    return 'none'
end

TargetBridge = {}
TargetBridge.system = DetectTarget()
TargetBridge.active = TargetBridge.system ~= 'none'
TargetBridge._zones = {}
TargetBridge._entities = {}

function UseTarget()
    return TargetBridge.active
end

-- ═══════ ADD ENTITY TARGET ═══════
function TargetBridge:AddEntity(entity, id, options)
    if not self.active or not entity or not DoesEntityExist(entity) then return end
    local label = options.label or 'Interact'
    local icon = options.icon or 'fas fa-hand-pointer'
    local action = options.action
    local dist = options.distance or 2.0
    local canInteract = options.canInteract

    if self.system == 'ox_target' then
        exports.ox_target:addLocalEntity(entity, {
            {
                name = id,
                label = label,
                icon = icon,
                onSelect = function()
                    if action then action() end
                end,
                canInteract = canInteract,
                distance = dist,
            }
        })
    elseif self.system == 'qb-target' or self.system == 'qtarget' then
        local targetExport = self.system == 'qtarget' and 'qtarget' or 'qb-target'
        exports[targetExport]:AddTargetEntity(entity, {
            options = {
                {
                    type = 'client',
                    label = label,
                    icon = icon,
                    action = function()
                        if action then action() end
                    end,
                    canInteract = canInteract,
                }
            },
            distance = dist,
        })
    end
    self._entities[id] = entity
end

-- ═══════ REMOVE ENTITY TARGET ═══════
function TargetBridge:RemoveEntity(entity, id)
    if not self.active then return end
    local ent = entity or self._entities[id]
    if not ent then return end

    if self.system == 'ox_target' then
        exports.ox_target:removeLocalEntity(ent, id)
    elseif self.system == 'qb-target' or self.system == 'qtarget' then
        local targetExport = self.system == 'qtarget' and 'qtarget' or 'qb-target'
        exports[targetExport]:RemoveTargetEntity(ent)
    end
    self._entities[id] = nil
end

-- ═══════ ADD ZONE TARGET ═══════
function TargetBridge:AddZone(id, coords, radius, options)
    if not self.active then return end
    -- Remove existing zone with same id first
    self:RemoveZone(id)

    local label = options.label or 'Interact'
    local icon = options.icon or 'fas fa-hand-pointer'
    local action = options.action
    local dist = options.distance or 2.0
    local canInteract = options.canInteract

    if self.system == 'ox_target' then
        local zoneId = exports.ox_target:addSphereZone({
            coords = coords,
            radius = radius,
            debug = false,
            options = {
                {
                    name = id,
                    label = label,
                    icon = icon,
                    onSelect = function()
                        if action then action() end
                    end,
                    canInteract = canInteract,
                    distance = dist,
                }
            }
        })
        self._zones[id] = zoneId
    elseif self.system == 'qb-target' or self.system == 'qtarget' then
        local targetExport = self.system == 'qtarget' and 'qtarget' or 'qb-target'
        exports[targetExport]:AddCircleZone(id, coords, radius, {
            name = id,
            useZ = true,
            debugPoly = false,
        }, {
            options = {
                {
                    type = 'client',
                    label = label,
                    icon = icon,
                    action = function()
                        if action then action() end
                    end,
                    canInteract = canInteract,
                }
            },
            distance = dist,
        })
        self._zones[id] = id
    end
end

-- ═══════ REMOVE ZONE TARGET ═══════
function TargetBridge:RemoveZone(id)
    if not self.active then return end
    local zoneRef = self._zones[id]
    if not zoneRef then return end

    if self.system == 'ox_target' then
        exports.ox_target:removeZone(zoneRef)
    elseif self.system == 'qb-target' or self.system == 'qtarget' then
        local targetExport = self.system == 'qtarget' and 'qtarget' or 'qb-target'
        exports[targetExport]:RemoveZone(zoneRef)
    end
    self._zones[id] = nil
end

-- ═══════ REMOVE ALL ═══════
function TargetBridge:RemoveAll()
    if not self.active then return end
    for id, _ in pairs(self._zones) do
        self:RemoveZone(id)
    end
    for id, ent in pairs(self._entities) do
        if DoesEntityExist(ent) then
            self:RemoveEntity(ent, id)
        end
    end
    self._zones = {}
    self._entities = {}
end

-- Cleanup on resource stop
AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        TargetBridge:RemoveAll()
    end
end)
