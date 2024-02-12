local group 

RegisterNetEvent('reply:setGroup')
AddEventHandler('reply:setGroup', function(g)
	print('group setted ' .. g)
	group = g
end)

RegisterNetEvent("textsent")
AddEventHandler('textsent', function(tPID, names2)
	TriggerEvent('chatMessage', "", {205, 205, 0}, " Reply sent to:^0 " .. names2 .."  ".."^0  - " .. tPID)
end)

RegisterNetEvent("textmsg")
AddEventHandler('textmsg', function(source, textmsg, names2, names3 )
	TriggerEvent('chatMessage', "", {205, 205, 0}, "  ADMIN " .. names3 .."  ".."^0: " .. textmsg)
end)

RegisterNetEvent('sendReport')
AddEventHandler('sendReport', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    lib.notify({
      id = 'some_identifier',
      title = 'REPORTTI LÄHETETTY',
      position = 'top',
      style = {
          backgroundColor = '#141517',
          color = '#C1C2C5',
          ['.description'] = {
            color = '#909296'
          }
      },
      icon = 'ban',
      iconColor = '#C53030'
  })
    --TriggerEvent('chatMessage', "", {255, 0, 0}, "Reportti on lähetetty Ylläpidolle!")
	  TriggerEvent('chatMessage', "", {255, 0, 0}, " [REPORTTI] | [".. id .."]" .. name .."  "..":^0  " .. message)
  elseif group ~= 'user' and pid ~= myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, " [REPORTTI] | [".. id .."]" .. name .."  "..":^0  " .. message)
  end
end)

