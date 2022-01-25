Citizen.CreateThread(function()
    for k, v in pairs(Config.Chairs) do
        exports['qb-target']:AddBoxZone("BMamaChair"..k,v.location, v.width, v.height, { name="BMamaChair"..k, heading = v.heading, debugPoly=false, minZ = v.minZ, maxZ = v.maxZ,},
            { options = { { event = "z-bahamamama:Chair", icon = "fas fas-chair", label = "Sit Down", loc = v.location, head = v.heading }, },
              distance = v.distance
        })
    end
end)

RegisterNetEvent('z-bahamamama:Chair')
AddEventHandler('z-bahamamama:Chair', function(data)
    local ped = PlayerPedId()
    TaskStartScenarioAtPosition(ped, "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", data.loc.x, data.loc.y, data.loc.z-0.5, data.head, 0, 1, true)
end)

Config.Chairs = {
    {location = vector3(-1393.9, -593.71, 30.32), heading = 175.63, width = 0.6, height = 0.8, minZ = 29.52, maxZ = 30.12, distance = 1.50 },
    {location = vector3(-1392.42, -595.59, 30.32), heading = 82.84, width = 1, height = 1, minZ = 29.32, maxZ = 30.32, distance = 1.50 },
    {location = vector3(-1394.56, -596.9, 30.32), heading = 350, width = 1, height =1, minZ = 29.12, maxZ =30.32, distance = 1.50 },
    {location = vector3(-1395.89, -594.99, 30.32), heading = 257.88, width = 1, height = 0.8, minZ = 29.32, maxZ = 30.32, distance = 1.50 },
    {location = vector3(-1395.66, -602.41, 30.32), heading = 333.16, width = 1, height = 1, minZ = 29.32, maxZ = 30.52, distance = 1.50},
    {location = vector3(-1393.52, -601.07, 30.32), heading = 65.62, width = 1, height = 1, minZ = 29.12, maxZ = 30.52, distance = 1.50},
    {location = vector3(-1395.01, -599.15, 30.99), heading = 169.23, width = 1, height = 1, minZ = 28.79, maxZ = 30.39, distance = 1.50},
    {location = vector3(-1397.0, -600.4, 30.32), heading = 260.23, width = 1, height = 1, minZ = 29.12, maxZ = 30.52, distance = 1.50},
    {location = vector3(-1402.84, -599.75, 30.32), heading = 245.92, width = 1, height = 1, minZ = 29.12, maxZ = 30.32, distance = 1.50},
    {location = vector3(-1400.82, -598.48, 30.32), heading = 174.89, width = 1, height = 1, minZ = 26.32, maxZ = 30.52, distance = 1.50},
    {location = vector3(-1401.54, -601.75, 30.32), heading = 350.34, width = 1, height = 1, minZ = 29.12, maxZ = 30.52, distance = 1.50},
    {location = vector3(-1399.4, -600.36, 30.32), heading = 80.71, width = 1, height = 1, minZ =29.32, maxZ = 30.32, distance = 1.50},
    {location = vector3(-1400.23, -605.28, 30.32), heading = 70.33, width = 1, height = 1, minZ = 29.32, maxZ = 30.32, distance = 1.50},
    {location = vector3(-1402.32, -606.64, 30.32), heading = 349.26, width = 1, height = 1, minZ = 29.32, maxZ = 30.32, distance = 1.50},
    {location = vector3(-1403.6, -604.63, 30.32), heading = 262.21, width = 1, height = 1, minZ = 29.32, maxZ = 30.32, distance = 1.50},
    {location = vector3(-1401.66, -603.26, 30.32), heading = 162.44, width = 1, height = 1, minZ = 29.12, maxZ = 30.32, distance = 1.50},
    {location = vector3(-1396.39, -610.32, 30.32), heading = 240.49, width = 0.4, height = 0.4, minZ = 25.67, maxZ = 30.27, distance = 1.50},
    {location = vector3(-1395.66, -609.14, 30.32), heading = 325, width = 0.4, height = 0.4, minZ = 29.12, maxZ = 30.32, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
    -- {location = vector3(), heading =, width =, height =, minZ =, maxZ =, distance = 1.50},
} 