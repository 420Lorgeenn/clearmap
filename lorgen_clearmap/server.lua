ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("clearpeds", function(source, args, raw)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if source == 0 then
	  TriggerClientEvent("lorgen:clearpeds", -1)
	elseif xPlayer.group == 'support' or xPlayer.group == 'moderator' or xPlayer.group == 'admin' or xPlayer.group == 'superadmin' or xPlayer.group == 'best' then
		TriggerClientEvent("lorgen:clearpeds", -1)
	end
  end)

  RegisterCommand("clearvehs", function(source, args, raw)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if source == 0 then
	  TriggerClientEvent("lorgen:clearvehicles", -1)
	elseif xPlayer.group == 'support' or xPlayer.group == 'moderator' or xPlayer.group == 'admin' or xPlayer.group == 'superadmin' or xPlayer.group == 'best' then
		TriggerClientEvent("lorgen:clearvehicles", -1)
	  end
  end)

  RegisterCommand("clearobjects", function(source, args, raw)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if source == 0 then
	  TriggerClientEvent("lorgen:clearentity", -1)
	elseif xPlayer.group == 'support' or xPlayer.group == 'moderator' or xPlayer.group == 'admin' or xPlayer.group == 'superadmin' or xPlayer.group == 'best' then
		TriggerClientEvent("lorgen:clearentity", -1)
	end
  end)

  RegisterCommand("clearall", function(source, args, raw)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if source == 0 then
		TriggerClientEvent("lorgen:clearpeds", -1)
		TriggerClientEvent("lorgen:clearvehicles", -1)
		TriggerClientEvent("lorgen:clearentity", -1)
	elseif xPlayer.group == 'support' or xPlayer.group == 'moderator' or xPlayer.group == 'admin' or xPlayer.group == 'superadmin' or xPlayer.group == 'best' then
		TriggerClientEvent("lorgen:clearpeds", -1)
		TriggerClientEvent("lorgen:clearvehicles", -1)
		TriggerClientEvent("lorgen:clearentity", -1)
	end
  end)