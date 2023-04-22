ESX = exports["es_extended"]:getSharedObject()

local captured = false
CreateThread(function()
	while true do
		local sleep = 1000


		for k, v in pairs(Config.SpeedCameras.Zone60) do
			local me = PlayerPedId()
			local heading = GetEntityHeading(me)
            local car = GetVehiclePedIsIn(me, false)
            local getveh = GetVehiclePedIsIn(me)
            local actualspeed = GetEntitySpeed(me)*3.6
            local maxspeed = Config.MaxSpeed60
            local billing60 = Config.Billing60
		if GetDistanceBetweenCoords(GetEntityCoords(me),v) <= 10 and not IsPedDeadOrDying(me, true) then
            sleep = 0

            if actualspeed > maxspeed then
                if IsPedInAnyVehicle(me, true) then
                    if (GetPedInVehicleSeat(car, -1) == me) then
						if captured == false then

                            if GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICE" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICE2" then
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICE3" then
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICE4" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICEB" then
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICET" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "SHERIFF" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "FIRETRUK" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "AMBULANCE" then
                            else

                            ESX.ShowNotification("You've been caught by the speedcamera in a 60 zone! Your speed: " .. math.floor(actualspeed) .. "km/h. You got removed "..Config.Billing60.."$ from your bank for speeding.")
                            TriggerServerEvent('sim-speedcam:pay60')

                        
                            captured = true
							Citizen.Wait(5000) 
                            end

                        end
                        captured = false
                    end
				end
            end
        end
		end




		for k, v in pairs(Config.SpeedCameras.Zone90) do
			local me = PlayerPedId()
			local heading = GetEntityHeading(me)
            local car = GetVehiclePedIsIn(me, false)
            local getveh = GetVehiclePedIsIn(me)
            local actualspeed = GetEntitySpeed(me)*3.6
            local maxspeed = Config.MaxSpeed90
            local billing90 = Config.Billing90
		if GetDistanceBetweenCoords(GetEntityCoords(me),v) <= 10 and not IsPedDeadOrDying(me, true) then
            sleep = 0

            if actualspeed > maxspeed then
                if IsPedInAnyVehicle(me, true) then
                    if (GetPedInVehicleSeat(car, -1) == me) then
						if captured == false then
                            if GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICE" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICE2" then
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICE3" then
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICE4" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICEB" then
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICET" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "SHERIFF" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "FIRETRUK" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "AMBULANCE" then   
                            else

                                ESX.ShowNotification("You've been caught by the speedcamera in a 90 zone! Your speed: " .. math.floor(actualspeed) .. "km/h. You got removed "..Config.Billing90.."$ from your bank for speeding.")
                                TriggerServerEvent('sim-speedcam:pay90')

                            captured = true
							Citizen.Wait(5000)
                            end

                        end
                        captured = false
                    end
				end
            end
        end
		end




        for k, v in pairs(Config.SpeedCameras.Zone120) do
			local me = PlayerPedId()
			local heading = GetEntityHeading(me)
            local car = GetVehiclePedIsIn(me, false)
            local getveh = GetVehiclePedIsIn(me)
            local actualspeed = GetEntitySpeed(me)*3.6
            local maxspeed = Config.MaxSpeed120
            local billing120 = Config.Billing120
		if GetDistanceBetweenCoords(GetEntityCoords(me),v) <= 10 and not IsPedDeadOrDying(me, true) then
            sleep = 0

            if actualspeed > maxspeed then
                if IsPedInAnyVehicle(me, true) then
                    if (GetPedInVehicleSeat(car, -1) == me) then
						if captured == false then

                            if GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICE" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICE2" then
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICE3" then
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICE4" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICEB" then
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "POLICET" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "SHERIFF" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "FIRETRUK" then 
                            elseif GetDisplayNameFromVehicleModel(GetEntityModel(getveh)) == "AMBULANCE" then
                            
                            else

                                ESX.ShowNotification("You've been caught by the speedcamera in a 120 zone! Your speed: " .. math.floor(actualspeed) .. "km/h. You got removed "..Config.Billing120.."$ from your bank for speeding.")
                                TriggerServerEvent('sim-speedcam:pay120')

                            captured = true
							Citizen.Wait(5000) 
                            end

                        end
                        captured = false
                    end
				end
            end
        end
		end

		Wait(sleep)
	end
end)



CreateThread(function()
	for i=1, #Config.SpeedCameras.Zone60, 1 do

        if Config.Blips == true then
		local blip = AddBlipForCoord(Config.SpeedCameras.Zone60[i])
		SetBlipSprite (blip, 1)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.5)
		SetBlipColour (blip, 1)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentSubstringPlayerName("Speed Camera (60km/h)")
		EndTextCommandSetBlipName(blip)
	end
    end

    for i=1, #Config.SpeedCameras.Zone90, 1 do
        if Config.Blips == true then
		local blip = AddBlipForCoord(Config.SpeedCameras.Zone90[i])
		SetBlipSprite (blip, 1)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.5)
		SetBlipColour (blip, 1)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentSubstringPlayerName("Speed Camera (90km/h)")
		EndTextCommandSetBlipName(blip)
	end
    end

    for i=1, #Config.SpeedCameras.Zone120, 1 do
        if Config.Blips == true then
		local blip = AddBlipForCoord(Config.SpeedCameras.Zone120[i])
		SetBlipSprite (blip, 1)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.5)
		SetBlipColour (blip, 1)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentSubstringPlayerName("Speed Camera (120km/h)")
		EndTextCommandSetBlipName(blip)
	end
    end

end)
