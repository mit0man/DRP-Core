-- ---------------------------------------------------------------------------
-- --- Crouch & Hands Up
-- ---------------------------------------------------------------------------
-- local crouched = false
-- Citizen.CreateThread( function()
--     local dict = "missminuteman_1ig_2"
-- 	RequestAnimDict(dict)
-- 	while not HasAnimDictLoaded(dict) do
-- 		Citizen.Wait(100)
-- 	end
--     handsup = false
--     while true do 
--         Citizen.Wait( 1 )
--         local ped = GetPlayerPed( -1 )
--         if not IsPedInAnyVehicle(ped) then 
--             if IsControlJustPressed(1, 323) then --Start holding X
--                 if not handsup then
--                     TaskPlayAnim(ped, dict, "handsup_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
--                     handsup = true
--                 else
--                     handsup = false
--                     ClearPedTasks(ped)
--                 end
--             end
--         end
--         if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
--             DisableControlAction( 0, 36, true ) -- INPUT_DUCK  

--             if ( not IsPauseMenuActive() ) then 
--                 if ( IsDisabledControlJustPressed( 0, 36 ) and not IsPedInAnyVehicle(ped)) then 
--                     RequestAnimSet( "move_ped_crouched" )
--                     while ( not HasAnimSetLoaded( "move_ped_crouched" ) ) do 
--                         Citizen.Wait( 100 )
--                     end 
--                     if ( crouched == true ) then 
--                         ResetPedMovementClipset( ped, 0 )
--                         crouched = false 
--                     elseif ( crouched == false ) then
--                         SetPedMovementClipset( ped, "move_ped_crouched", 0.25 )
--                         crouched = true 
--                     end 
--                 end
--             end 
--         end 
--     end
-- end )