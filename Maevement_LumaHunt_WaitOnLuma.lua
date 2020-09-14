-- Working

-----------------------------------------------
-- Maevement Luma Hunt v2.6.5 : Wait on luma --
--- Created by MaeBot for TemBot by NhMarco ---
-----------------------------------------------

botname = "VM1"

--Importing TemBotLua
import ('TemBot.Lua.TemBotLua')

--Registering the Temtem Window
tblua:RegisterTemTemWindow()
tblua:GetAreaColor()

tblua:Sleep(1000)

encounter = 0
Zez = 1
MovementSwitch = 1

if tblua:IsInWorld() == true then
 while(true)
 do
   if tblua:IsInWorld() == true then
        local sexy = math.random(600)
      tblua:Sleep(sexy)
      tblua:CheckPause()
      tblua:CheckLogout()
    while tblua:IsInWorld() == true do
       if Zez == 1 then
        if MovementSwitch == 1 then
           tblua:CircleArea()
           local xd = math.random(100, 300)
           tblua:Sleep(xd)
           local mhyes = math.random(2)
           if mhyes == 1 then
           MovementSwitch = 2
           elseif mhyes == 2 then
           MovementSwitch = 1
           end
        elseif MovementSwitch == 2 then
           tblua:RandomArea()
           local xdd = math.random(300, 1200)
           tblua:Sleep(xdd)
           local MovementSwitch = 1
        end
       elseif Zez == 2 then
           tblua:CircleArea()
       end
    end
   end
            
    --loop if minimap not detected
    if tblua:IsInWorld() == false then
      tblua:Sleep(100)
      tblua:StopMovement()
      --if bot is in fight
      if tblua:IsInFight() == true then
        --Luma check positive (message and notification)
        local Platypet = math.random(50, 150)
        tblua:Sleep(Platypet)
        if tblua:CheckLuma() == true then
          if tblua:GetPixelColor(1045, 100) == "0x1E1E1E" then
           if tblua:GetPixelColor(777, 65) == "0x1E1E1E" then
              encounter = encounter + 2
           else
              encounter = encounter + 1
           end
          end
          tblua:SendTelegramMessage("Luma Found on " .. tostring(botname) .. " after " .. tostring(encounter) .. " tems encountered !\nCongratulations ! :D")
          tblua:TestMessage("Luma Found after " .. tostring(encounter) .. " Tems encountered ! Congratulations! :D")
          tblua:PressKey(0x71)
        else
          --Else no Luma, so run away
          if tblua:GetPixelColor(1045, 100) == "0x1E1E1E" then
           if tblua:GetPixelColor(777, 65) == "0x1E1E1E" then
              encounter = encounter + 2
           else
              encounter = encounter + 1
           end
          end
         while tblua:IsInFight() == true do
          local Marco = tblua:GetSleepTime()
          local Nh = math.random(127, Marco)
          local Nh1 = math.random(208, Marco)
          local MS = math.random(2)
          Zez = MS
          tblua:Sleep(Nh)
          tblua:PressKey(0x38)
          tblua:Sleep(Nh1)
          tblua:PressKey(0x38)	
         end
        end
      end
    end
  end
else
-- No minimap then no script start
tblua:TestMessage('Error: Minimap not detected.')
end
