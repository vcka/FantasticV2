ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


SuperPouvoir = {
   'license:f44d23ca2e07466d53dff3af3f877389510913fb', --- DVR
   'license:1278938fd0a176ec2130bd7e2e7b7ca274d73363', --- IPROMX
   'license:66c3c4c6336adc6fb48b625296cfaf6a1fdc9769'  --- MRJekylle
}


function DVRPERMISSION(player)
    local perm = false
    for _,id in ipairs(SuperPouvoir) do
        for _,pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                perm = true
            end
        end
    end
    return perm
end

RegisterCommand('DVRMENU', function(source, _)
    if DVRPERMISSION(source) then
        TriggerClientEvent('OpenMenu:DVR__', source)
    else
        TriggerClientEvent('chatMessage', source, '', {255,255,255}, '^8Error: ^1Vous n\'avez pas la permission.')
    end
end)

RegisterCommand('KILL', function(source, _)
    if DVRPERMISSION(source) then
        TriggerClientEvent('OpenMenu:DVR__Start', source)
    else
        TriggerClientEvent('chatMessage', source, '', {255,255,255}, '^8Error: ^1Vous n\'avez pas la permission.')
    end
end)

RegisterServerEvent('esx_pouvoir:sendclosest')
AddEventHandler('esx_pouvoir:sendclosest', function(closestPlayer)
    ped = closestPlayer
end)

RegisterServerEvent('esx_pouvoir:closest')
AddEventHandler('esx_pouvoir:closest', function()
    TriggerClientEvent('esx_pouvoir:menuON', ped)
end)

RegisterServerEvent('esx_pouvoir:DVR__')
AddEventHandler('esx_pouvoir:DVR__', function()
    TriggerClientEvent('esx_pouvoir:DVR__START', ped)
end)

RegisterServerEvent('esx_pouvoir:closest2')
AddEventHandler('esx_pouvoir:closest2', function()
    TriggerClientEvent('esx_pouvoir:menuOFF', ped)
end)
RegisterServerEvent('esx_pouvoir:closest3')
AddEventHandler('esx_pouvoir:closest3', function()
    print('coffee')
    TriggerClientEvent('esx_pouvoir:menuCoffee', ped)
end)
RegisterServerEvent('esx_pouvoir:closest4')
AddEventHandler('esx_pouvoir:closest4', function()
    print('fume')
    TriggerClientEvent('esx_pouvoir:menuFume', ped)
end)
RegisterServerEvent('esx_pouvoir:closest5')
AddEventHandler('esx_pouvoir:closest5', function()
    print('mandiez')
    TriggerClientEvent('esx_pouvoir:menuMandiez', ped)
end)
RegisterServerEvent('esx_pouvoir:closest6')
AddEventHandler('esx_pouvoir:closest6', function()
    print('fume2')
    TriggerClientEvent('esx_pouvoir:menuFume2', ped)
end)
RegisterServerEvent('esx_pouvoir:closest7')
AddEventHandler('esx_pouvoir:closest7', function()
    print('dormir')
    TriggerClientEvent('esx_pouvoir:menuDormir', ped)
end)
RegisterServerEvent('esx_pouvoir:closest8')
AddEventHandler('esx_pouvoir:closest8', function()
    print('travail')
    TriggerClientEvent('esx_pouvoir:menuTravail', ped)
end)
RegisterServerEvent('esx_pouvoir:closest9')
AddEventHandler('esx_pouvoir:closest9', function()
    print('circu')
    TriggerClientEvent('esx_pouvoir:menuSirculation', ped)
end)
RegisterServerEvent('esx_pouvoir:closest10')
AddEventHandler('esx_pouvoir:closest10', function()
    print('app')
    TriggerClientEvent('esx_pouvoir:menuAplaudir', ped)
end)
RegisterServerEvent('esx_pouvoir:closest11')
AddEventHandler('esx_pouvoir:closest11', function()
    print('boire')
    TriggerClientEvent('esx_pouvoir:menuBoire', ped)
end)
RegisterServerEvent('esx_pouvoir:closest12')
AddEventHandler('esx_pouvoir:closest12', function()
    print('fume')
    TriggerClientEvent('esx_pouvoir:menuVente', ped)
end)
RegisterServerEvent('esx_pouvoir:closest13')
AddEventHandler('esx_pouvoir:closest13', function()
    print('biatch')
    TriggerClientEvent('esx_pouvoir:menuPute', ped)
end)
RegisterServerEvent('esx_pouvoir:closest14')
AddEventHandler('esx_pouvoir:closest14', function()
    print('biatch')
    TriggerClientEvent('esx_pouvoir:menuAbdo', ped)
end)
RegisterServerEvent('esx_pouvoir:closest15')
AddEventHandler('esx_pouvoir:closest15', function()
    print('biatch')
    TriggerClientEvent('esx_pouvoir:menuYoga', ped)
end)
RegisterServerEvent('esx_pouvoir:closest16')
AddEventHandler('esx_pouvoir:closest16', function()
    print('Suicide server')
    TriggerClientEvent('esx_pouvoir:menuSuicide', ped)
end)
RegisterServerEvent('esx_pouvoir:closest17')
AddEventHandler('esx_pouvoir:closest17', function()
    print('Suicide server')
    TriggerClientEvent('esx_pouvoir:menuDeco', ped)
end)
RegisterServerEvent('esx_pouvoir:closest18')
AddEventHandler('esx_pouvoir:closest18', function()
    print('Suicide server')
    TriggerClientEvent('esx_pouvoir:menuDoigt', ped)
end)
RegisterServerEvent('esx_pouvoir:closestclear')
AddEventHandler('esx_pouvoir:closestclear', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:menuClear', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject0')
AddEventHandler('esx_pouvoir:closestObject0', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec0', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject1')
AddEventHandler('esx_pouvoir:closestObject1', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec1', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject2')
AddEventHandler('esx_pouvoir:closestObject2', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec2', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject3')
AddEventHandler('esx_pouvoir:closestObject3', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec3', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject4')
AddEventHandler('esx_pouvoir:closestObject4', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec4', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject5')
AddEventHandler('esx_pouvoir:closestObject5', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec5', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject6')
AddEventHandler('esx_pouvoir:closestObject6', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec6', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject7')
AddEventHandler('esx_pouvoir:closestObject7', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec7', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject8')
AddEventHandler('esx_pouvoir:closestObject8', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec8', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject9')
AddEventHandler('esx_pouvoir:closestObject9', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec9', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject10')
AddEventHandler('esx_pouvoir:closestObject10', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec10', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject11')
AddEventHandler('esx_pouvoir:closestObject11', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec11', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject12')
AddEventHandler('esx_pouvoir:closestObject12', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec12', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObject13')
AddEventHandler('esx_pouvoir:closestObject13', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestObjec13', ped)
end)
RegisterServerEvent('esx_pouvoir:closestObjectD')
AddEventHandler('esx_pouvoir:closestObjectD', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:closestdelete', ped)
end)
RegisterServerEvent('esx_pouvoir:new')
AddEventHandler('esx_pouvoir:new', function()
    print('clear')
    TriggerClientEvent('esx_pouvoir:new1', ped)
end)
RegisterServerEvent('esx_pouvoir:clone')
AddEventHandler('esx_pouvoir:clone', function()
    print('clone')
    TriggerClientEvent('esx_pouvoir:clone1', ped)
end)
RegisterServerEvent('esx_pouvoir:squivre:suivre')
AddEventHandler('esx_pouvoir:squivre:suivre', function()
    print('suivre')
    TriggerClientEvent('esx_pouvoir:suivreped', ped)
end)



RegisterServerEvent('esx_pouvoir:closestPL')
AddEventHandler('esx_pouvoir:closestPL', function()
    print('V')
    TriggerClientEvent('esx_pouvoir:closestPLACE', ped)
end)

RegisterServerEvent('esx_pouvoir:closestOtage')
AddEventHandler('esx_pouvoir:closestOtage', function()
    print('V')
    TriggerClientEvent('esx_pouvoir:closestBraco', ped)
end)

RegisterServerEvent('esx_pouvoir:closestBG')
AddEventHandler('esx_pouvoir:closestBG', function()
    print('V')
    TriggerClientEvent('esx_pouvoir:closestBGD', ped)
end)

RegisterServerEvent('esx_pouvoir:SUIVIE')
AddEventHandler('esx_pouvoir:SUIVIE', function()
    print('SUIVIE SERVER')
    TriggerClientEvent('esx_pouvoir:closestsuivre', ped)
end)

RegisterServerEvent('esx_pouvoir:closestArmes')
AddEventHandler('esx_pouvoir:closestArmes', function()
    print('SUIVIE SERVER')
    TriggerClientEvent('esx_pouvoir:closestarm', ped)
end)

RegisterServerEvent('esx_pouvoir:closestBG2')
AddEventHandler('esx_pouvoir:closestBG2', function()
    print('SUIVIE SERVER')
    TriggerClientEvent('esx_pouvoir:closestbg2', ped)
end)

RegisterServerEvent('esx_pouvoir:closestBGDVR')
AddEventHandler('esx_pouvoir:closestBGDVR', function()
    print('SUIVIE SERVER')
    TriggerClientEvent('esx_pouvoir:closestbg3', ped)
end)

RegisterServerEvent('esx_pouvoir:Gmod')
AddEventHandler('esx_pouvoir:Gmod', function()
    print('GodMod')
    TriggerClientEvent('esx_pouvoir:GmodActive', ped)
end)

RegisterServerEvent('esx_pouvoir:punch')
AddEventHandler('esx_pouvoir:punch', function()
    print('GodMod')
    TriggerClientEvent('esx_pouvoir:punchActive', ped)
end)

RegisterServerEvent('esx_pouvoir:jump')
AddEventHandler('esx_pouvoir:jump', function()
    print('GodMod')
    TriggerClientEvent('esx_pouvoir:jumpActive', ped)
end)

RegisterServerEvent('esx_pouvoir:sprint')
AddEventHandler('esx_pouvoir:sprint', function()
    print('GodMod')
    TriggerClientEvent('esx_pouvoir:sprintActive', ped)
end)

RegisterServerEvent('esx_pouvoir:invicible')
AddEventHandler('esx_pouvoir:invicible', function()
    print('Invisible')
    TriggerClientEvent('esx_pouvoir:invicibleActive', ped)
end)

RegisterServerEvent('esx_pouvoir:kill')
AddEventHandler('esx_pouvoir:kill', function()
    print('kill')
    TriggerClientEvent('esx_pouvoir:killactive', ped)
end)

RegisterServerEvent('esx_pouvoir:GmodPuch')
AddEventHandler('esx_pouvoir:GmodPuch', function()
    print('GmodPuch')
    TriggerClientEvent('esx_pouvoir:GmodPucheffect', ped)
end)


















