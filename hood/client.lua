RegisterCommand ('hood', function(source, args)
    local playerPed = PlayerPedId()
    local playerJacketId = GetPedDrawableVariation(playerPed, 11) --Id da jaqueta do PED
    local jacketColor = GetPedTextureVariation(playerPed, 11) --Id da textura da jaqueta do PED

    local jacketsHoodOn = {68, 203, 202, 207, 211, 218, 253, 263, 280}
    local jacketsHoodOff = {69, 200, 205, 206, 210, 217, 251, 262, 279}

    local count = 0

    for count = 0,9,1 do
        if playerJacketId == jacketsHoodOn[count] then
            SetPedComponentVariation(playerPed, 11, jacketsHoodOff[count], jacketColor, 0)
        end
        if playerJacketId == jacketsHoodOff[count] then
            SetPedComponentVariation(playerPed, 11, jacketsHoodOn[count], jacketColor, 0)
        end
    end

end, false)