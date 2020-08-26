---------------------------------------------------------------------
-- Maevement Luma Hunt v2.5.1 : Wait on luma --
--- Created by MaeBot for TemBot by NhMarco ---
---------------------------------------------------------------------


--Importing TemBotLua
import ('TemBot.Lua.TemBotLua')

--Registering the Temtem Window
tblua:RegisterTemTemWindow()
tblua:GetAreaColor()

tblua:Sleep(1000)

MovementSwitch = 1

if tblua:IsInWorld() == true then
 while(true)
 do
   if tblua:IsInWorld() == true then
      local sexy = tblua:GetSleepTime()
      tblua:Sleep(sexy)
      tblua:CheckPause()
      tblua:CheckLogout()
    while tblua:IsInWorld() == true do
       while MovementSwitch == 1 do
         if tblua:IsInWorld() == false then
           break
         else
           tblua:CircleArea()
         end
       end
       while MovementSwitch == 2 do
         if tblua:IsInWorld() == false then
           break
         else
           tblua:RandomArea()
         end
       end
    end
   end
            
    --loop if minimap not detected
    if tblua:IsInWorld() == false then
      local sex = tblua:GetSleepTime()
      tblua:Sleep(sex)
      tblua:StopMovement()
      --if bot is in fight
      if tblua:IsInFight() == true then
        --Luma check positive (message and notification)
        local Platypet = tblua:GetSleepTime()
        tblua:Sleep(Platypet)
        if tblua:CheckLuma() == true then
            tblua:SendTelegramMessage("Luma Found! Catching...")
                   while tblua:IsInWorld() == false do
                  local SleepCatch = math.random(2030, 3142)
                   tblua:Sleep(SleepCatch)
                   tblua:PressKey(0x37)
                   tblua:Sleep(SleepCatch)
                   tblua:PressKey(0x46)
                   tblua:Sleep(SleepCatch)
                   tblua:PressKey(0x37)
                   tblua:Sleep(SleepCatch)
                   tblua:PressKey(0x46)
                   tblua:Sleep(SleepCatch)
                   end
        else
          --Else no Luma, so run away
         while tblua:IsInFight() == true do
          local Marco = tblua:GetSleepTime()
          local MS = math.random(2)
          MovementSwitch = MS
          tblua:Sleep(Marco)
          tblua:PressKey(0x38)
          tblua:Sleep(Marco)
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
