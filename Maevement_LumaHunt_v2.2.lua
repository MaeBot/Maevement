--Importing TemBotLua
import ('TemBot.Lua.TemBotLua')

--Registering the Temtem Window
tblua:RegisterTemTemWindow()
tblua:GetAreaColor()

tblua:Sleep(1500)

MovementSwitch = 3

if tblua:IsInWorld() == true then
 while(true)
 do
    tblua:Sleep(100)
    --check pause and logout user settings
    if tblua:IsInWorld() == true then
       while MovementSwitch == 1 do
           if tblua:IsInWorld() == false then
           break
           else
           tblua:RandomArea()
           end
       end
       while MovementSwitch == 2 do
           if tblua:IsInWorld() == false then
           break
           else
           tblua:CircleArea()
           end
       end
       if MovementSwitch == 3 then
           local Curved = math.random(2)
           while Curved == 1 do
           local pleasework = math.random(574, 1532)
             if tblua:IsInWorld() == false then
             break
             else
             tblua:RandomArea()
             tblua:Sleep(pleasework)
             local Curved = math.random(2)
             end
           end
         while Curved == 2 do
          local pleasework = math.random(574, 1532)
           if tblua:IsInWorld() == false then
           break
           else
           tblua:CircleArea()
           tblua:Sleep(pleasework)
           local Curved = math.random(2)
           end
         end
      end
    end
            
    --loop if minimap not detected
    if tblua:IsInWorld() == false then
      tblua:StopMovement()
      --if bot is in fight
      if tblua:IsInFight() == true then
        --Luma check positive (message and notification)
        local RandomCheck = math.random(237, 381)
        tblua:Sleep(RandomCheck)
        if tblua:CheckLuma() == true then
          tblua:SendTelegramMessage("Luma Found!")
          tblua:TestMessage("Luma Found!")
          tblua:PressKey(0x71)
        else
          tblua:Sleep(RandomCheck)
          --Else no Luma, so run away
         while tblua:IsInFight() == true do
          local RandomRun = math.random(205, 344)
          local RunAwayR = math.random(5)
          local MS = math.random(3)
          MovementSwitch = MS
          if RunAwayR == 5 then
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          elseif RunAwayR == 4 then
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          elseif RunAwayR == 3 then
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          elseif RunAwayR == 2 then
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          elseif RunAwayR == 1 then
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          end		  
         end
        end
      end
    end
  end
else
-- No minimap then no script start
tblua:TestMessage('Error: Minimap not detected.')
end
