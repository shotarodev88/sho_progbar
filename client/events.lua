RegisterNetEvent("sho_progbar:client:progress")
AddEventHandler("sho_progbar:client:progress", function(action, finish)
	Process(action, nil, nil, finish)
end)

RegisterNetEvent("sho_progbar:client:ProgressWithStartEvent")
AddEventHandler("sho_progbar:client:ProgressWithStartEvent", function(action, start, finish)
	Process(action, start, nil, finish)
end)

RegisterNetEvent("sho_progbar:client:ProgressWithTickEvent")
AddEventHandler("sho_progbar:client:ProgressWithTickEvent", function(action, tick, finish)
	Process(action, nil, tick, finish)
end)

RegisterNetEvent("sho_progbar:client:ProgressWithStartAndTick")
AddEventHandler("sho_progbar:client:ProgressWithStartAndTick", function(action, start, tick, finish)
	Process(action, start, tick, finish)
end)

RegisterNetEvent("sho_progbar:client:cancel")
AddEventHandler("sho_progbar:client:cancel", function()
	Cancel()
end)

RegisterNUICallback('actionFinish', function(data, cb)
	Finish()
end)