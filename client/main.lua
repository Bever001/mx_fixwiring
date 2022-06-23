local pass = nil
function CircuitGame(x, y, scale, size_game, sound_name)
    SetNuiFocus(true,true)
    SendNUIMessage({
        ui = 'ui',
        NuiOpen = true,
        x = x,
        y = y,
        scale = scale,
        size_game = size_game,
        sound_name = sound_name,
        name_resource = GetCurrentResourceName()
    })

    while pass == nil do
        Citizen.Wait(0)
        local ped = PlayerPedId()  
        local anim = "mini_games@story@mud5@cracksafe_look_at_dial@med_r@ped"
        local idle = "base_idle"
        local lr = "left_to_right"
        RequestAnimDict(anim)
        while not HasAnimDictLoaded(anim) do
            Citizen.Wait(50)
        end
        TaskPlayAnim(PlayerPedId(), anim, idle, 8.0, -8.0, 100, 32, 0, false, false, false)
        TaskPlayAnim(PlayerPedId(), anim, lr, 8.0, -8.0, -1, 32, 0, false, false, false)
    end

    if pass == true then
        CloseNui()
        pass = nil 
        return true 
    end 

end

RegisterNUICallback('electric_circuit_completed', function(data)
    pass = true
end)

function CloseNui()
    local ped = PlayerPedId()
    ClearPedTasks(ped)

    SetNuiFocus(false, false)
    SendNUIMessage({
        ui = 'ui',
        NuiOpen = false,
    })
end