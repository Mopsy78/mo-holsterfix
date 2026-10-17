local Config = {
    attachPoint = 2,

    offsetX = -0.05,
    offsetY = 0.01,
    offsetZ = 0.0,

    horizontalMode = false,
}

local currentEntity = 0

local function getHolsterEntity()
    local ped = PlayerPedId()

    local entity = Citizen.InvokeNative(
        0x3B390A939AF0B5FC,
        ped,
        Config.attachPoint,
        Citizen.ResultAsInteger()
    )

    if not entity or entity == 0 or not DoesEntityExist(entity) then
        return 0
    end

    if not IsEntityAttachedToEntity(entity, ped) then
        return 0
    end

    return entity
end

local function applyHolsterOffset(entity)
    Citizen.InvokeNative(
        0x16908E859C3AB698,
        entity,
        Config.horizontalMode,
        Config.offsetX,
        Config.offsetY,
        Config.offsetZ
    )
end

CreateThread(function()
    while true do
        --Wait(250)
        Wait(0)

        local entity = getHolsterEntity()

        if entity ~= 0 then
            if entity ~= currentEntity then
                currentEntity = entity
                applyHolsterOffset(entity)

            end
        else
            currentEntity = 0
        end
    end
end)