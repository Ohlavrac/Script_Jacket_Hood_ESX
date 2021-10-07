RegisterCommand ('hood', function(source, args)
    print("OLA");

    local playerPed = PlayerPedId()
    local playerJacketId = GetPedDrawableVariation(playerPed, 11) --Id da jaqueta do PED
    local jacketColor = GetPedTextureVariation(playerPed, 11) --Id da textura da jaqueta do PED

    --listas com os ids das jaquetas masculinas
    local jacketsHoodOn = {68, 203, 202, 207, 211, 218, 253, 263, 280, 297, 302, 306, 331, 353, 373}
    local jacketsHoodOff = {69, 200, 205, 206, 210, 217, 251, 262, 279, 296, 301, 305, 330, 352, 374}

    --lista com os ids das jaquetas feminas
    local jacketsHoodOnFemale = {62,205,204,211,215,228,261,272,308,313,317,346,371,393,}
    local jacketsHoodOffFemale = {63,202,207,210,214,227,259,271,307,312,316,345,370,392,}

    local count = 0

    local pedType = GetEntityModel(playerPed)
    print(GetEntityModel(playerPed))
    

    --verifica o tipo do ped
    if pedType == -1667301416 then --Ped Feminino
        for count = 0,9,1 do
            if playerJacketId == jacketsHoodOnFemale[count] then
                SetPedComponentVariation(playerPed, 11, jacketsHoodOffFemale[count], jacketColor, 0)
            end
            if playerJacketId == jacketsHoodOffFemale[count] then
                SetPedComponentVariation(playerPed, 11, jacketsHoodOnFemale[count], jacketColor, 0)
            end
        end
    elseif pedType == 1885233650 then --Ped Masculino
        for count = 0,9,1 do
            if playerJacketId == jacketsHoodOn[count] then
                SetPedComponentVariation(playerPed, 11, jacketsHoodOff[count], jacketColor, 0)
            end
            if playerJacketId == jacketsHoodOff[count] then
                SetPedComponentVariation(playerPed, 11, jacketsHoodOn[count], jacketColor, 0)
            end
        end
    end

end, false)