ESX = exports["es_extended"]:getSharedObject()


RegisterServerEvent('sim-speedcam:pay60')
AddEventHandler('sim-speedcam:pay60', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeAccountMoney("bank", Config.Billing60)
end)

RegisterServerEvent('sim-speedcam:pay90')
AddEventHandler('sim-speedcam:pay90', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeAccountMoney("bank", Config.Billing90)
end)

RegisterServerEvent('sim-speedcam:pay120')
AddEventHandler('sim-speedcam:pay120', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeAccountMoney("bank", Config.Billing120)
end)
