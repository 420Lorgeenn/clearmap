function EnumerateEntities(m4jhD5Kf, wkoW6Q, sB6h0J)
    return coroutine.wrap(function()
        local VXq9qZcQX, SRn3A = m4jhD5Kf()
            if not SRn3A or SRn3A == 0 then
            sB6h0J(VXq9qZcQX)
            return
            end;
        local mjC3gP = {
        handle = VXq9qZcQX,
        destructor = sB6h0J
        }
        setmetatable(mjC3gP, p6E)
        local hXa2EFUJmIz8cIZ59 = true
        repeat
            coroutine.yield(SRn3A)
            hXa2EFUJmIz8cIZ59, SRn3A = wkoW6Q(VXq9qZcQX)
        until not hXa2EFUJmIz8cIZ59;
            mjC3gP.destructor, mjC3gP.handle = nil, nil
            sB6h0J(VXq9qZcQX)
    end)
end;
function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end;
function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end;
function _DeleteEntity(entity)
    Citizen.InvokeNative(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(entity))
end

RegisterNetEvent("lorgen:clearvehicles")
AddEventHandler("lorgen:clearvehicles", function()
    for sR4HoXp6l3D4 in EnumerateVehicles() do
        if not IsPedInVehicle(Citizen.InvokeNative(0x43A66C31C68491C0, -1), sR4HoXp6l3D4, true) then
            SetEntityAsMissionEntity(GetVehiclePedIsIn(sR4HoXp6l3D4, true), 1, 1)
            DeleteEntity(GetVehiclePedIsIn(sR4HoXp6l3D4, true))
            SetEntityAsMissionEntity(sR4HoXp6l3D4, 1, 1)
            DeleteEntity(sR4HoXp6l3D4)
        end
    end
end)

RegisterNetEvent("lorgen:clearpeds")
AddEventHandler("lorgen:clearpeds", function()
    for Kkjy25CzbmFuahd in EnumeratePeds() do
        if not (IsPedAPlayer(Kkjy25CzbmFuahd)) then
            Citizen.InvokeNative(0xF25DF915FA38C5F3, Kkjy25CzbmFuahd, true)
            DeleteEntity(Kkjy25CzbmFuahd)
        end
    end
end)

RegisterNetEvent("lorgen:clearentity")
AddEventHandler("lorgen:clearentity", function()
    for WEgd4 in EnumerateObjects() do
        DeleteEntity(WEgd4)
    end
end)