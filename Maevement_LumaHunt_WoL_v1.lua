--Importing TemBotLua
import ('TemBot.Lua.TemBotLua')

--Registering the Temtem Window
tblua:RegisterTemTemWindow()
tblua:GetAreaColor()

tblua:Sleep(1500)

MovementSwitch = 1

if tblua:IsInWorld() == true then
 while(true)
 do
    local RandomSleep = math.random(74, 132)
    tblua:Sleep(RandomSleep)
    --check pause and logout user settings
    tblua:CheckPause()
    tblua:CheckLogout()
    if tblua:IsInWorld() == true then
       if MovementSwitch == 1 then
        tblua:RandomArea()
       elseif MovementSwitch == 2 then
        tblua:CircleArea()
       end
    end
            
    --loop if minimap not detected
    if tblua:IsInWorld() == false then
      tblua:StopMovement()
      --if bot is in fight
      if tblua:IsInFight() == true then
        --Luma check positive (message and notification)
        local RandomCheck = math.random(237, 581)
        tblua:Sleep(RandomCheck)
        if tblua:CheckLuma() == true then
          tblua:SendTelegramMessage("Luma Found!")
          tblua:TestMessage("Luma Found!")
          tblua:PressKey(0x71)
        else
         --Else no Luma, so run away
         while tblua:IsInFight() == true do
          local RandomRun = math.random(330, 694)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          local MS = math.random(2)
          MovementSwitch = MS
         end
        end
      end
    end
  end
else
-- No minimap then no script start
tblua:TestMessage('Error: Minimap not detected.')
end
